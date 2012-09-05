.class final Lcom/android/hwcamera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V
    .locals 1
    .parameter
    .parameter "loc"

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1297
    #getter for: Lcom/android/hwcamera/Camera;->mLocationState:Z
    invoke-static {p1}, Lcom/android/hwcamera/Camera;->access$5800(Lcom/android/hwcamera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    iput-object p2, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 1302
    :goto_0
    return-void

    .line 1300
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    goto :goto_0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 12
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 1306
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPausing:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2500(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    const-string v6, "ro.camera.support.led"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1311
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$5900(Lcom/android/hwcamera/Camera;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/hwcamera/LedLightManager;->ledoff(Landroid/app/NotificationManager;)V

    .line 1314
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazProcessing()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 1320
    :cond_3
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Camera;->access$6002(Lcom/android/hwcamera/Camera;J)J

    .line 1324
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$5500(Lcom/android/hwcamera/Camera;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_e

    .line 1325
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$5500(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J
    invoke-static {v9}, Lcom/android/hwcamera/Camera;->access$5300(Lcom/android/hwcamera/Camera;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/hwcamera/Camera;->mShutterToPictureDisplayedTime:J

    .line 1326
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$6000(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v9}, Lcom/android/hwcamera/Camera;->access$5500(Lcom/android/hwcamera/Camera;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/hwcamera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    .line 1333
    :goto_1
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-wide v8, v8, Lcom/android/hwcamera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterupTime:J
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$5700(Lcom/android/hwcamera/Camera;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1337
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Flow] onPictureTaken Snapshot to Snapshot dt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$6000(Lcom/android/hwcamera/Camera;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterupTime:J
    invoke-static {v10}, Lcom/android/hwcamera/Camera;->access$5700(Lcom/android/hwcamera/Camera;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_4
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2408(Lcom/android/hwcamera/Camera;)I

    .line 1341
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$4900(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1351
    const-wide/16 v6, 0x12c

    iget-object v8, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-wide v8, v8, Lcom/android/hwcamera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    sub-long v0, v6, v8

    .line 1352
    .local v0, delay:J
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "want startPreview, delay time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraId:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6100(Lcom/android/hwcamera/Camera;)I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraId:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6100(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_f

    .line 1356
    :cond_5
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v6}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    .line 1362
    .end local v0           #delay:J
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v7

    #calls: Lcom/android/hwcamera/Camera;->isBasedBurstShootMode(I)Z
    invoke-static {v6, v7}, Lcom/android/hwcamera/Camera;->access$6300(Lcom/android/hwcamera/Camera;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1363
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$6400(Lcom/android/hwcamera/Camera;)I

    move-result v7

    if-lt v6, v7, :cond_12

    .line 1364
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->stopBurst()V
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6500(Lcom/android/hwcamera/Camera;)V

    .line 1365
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_10

    .line 1366
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 1367
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v6

    const-string v7, "pref_camera_reset_tag"

    const-string v8, "noreset"

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v6, "Camera"

    const-string v7, "start Rewind activity"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_8

    .line 1388
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1390
    :cond_8
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$4900(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 1391
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_13

    .line 1392
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    #calls: Lcom/android/hwcamera/Camera;->hdrProcessing([BLandroid/location/Location;)V
    invoke-static {v6, p1, v7}, Lcom/android/hwcamera/Camera;->access$6800(Lcom/android/hwcamera/Camera;[BLandroid/location/Location;)V

    .line 1399
    :cond_9
    :goto_4
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6900(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 1400
    .local v5, s:Landroid/hardware/Camera$Size;
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 1405
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Flow] addImage() mPicNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$2400(Lcom/android/hwcamera/Camera;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " jpegData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/android/hwcamera/Camera$ImageSaver;->addImage([BLandroid/location/Location;I)V

    .line 1408
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    move-result-object v6

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, p1, v7}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->addDecodeThumbnail([BI)V

    .line 1419
    .end local v5           #s:Landroid/hardware/Camera$Size;
    :cond_a
    :goto_5
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mReviewTime:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$3200(Lcom/android/hwcamera/Camera;)I

    move-result v6

    if-lez v6, :cond_d

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$4900(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 1420
    const/4 v4, 0x0

    .line 1421
    .local v4, reviewState:Z
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHdrDone:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$7400(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1422
    const/4 v4, 0x1

    .line 1424
    :cond_b
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_c

    .line 1425
    const/4 v4, 0x1

    .line 1427
    :cond_c
    if-eqz v4, :cond_d

    .line 1428
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v7, 0x0

    #setter for: Lcom/android/hwcamera/Camera;->mHdrDone:Z
    invoke-static {v6, v7}, Lcom/android/hwcamera/Camera;->access$7402(Lcom/android/hwcamera/Camera;Z)Z

    .line 1429
    if-eqz p1, :cond_d

    .line 1430
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->decordPictureForReview([B)V
    invoke-static {v6, p1}, Lcom/android/hwcamera/Camera;->access$7500(Lcom/android/hwcamera/Camera;[B)V

    .line 1431
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1436
    .end local v4           #reviewState:Z
    :cond_d
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6200(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1438
    .local v2, now:J
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$6000(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    sub-long v7, v2, v7

    iput-wide v7, v6, Lcom/android/hwcamera/Camera;->mJpegCallbackFinishTime:J

    .line 1439
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mJpegCallbackFinishTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-wide v8, v8, Lcom/android/hwcamera/Camera;->mJpegCallbackFinishTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    const-wide/16 v7, 0x0

    #setter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Camera;->access$6002(Lcom/android/hwcamera/Camera;J)J

    goto/16 :goto_0

    .line 1329
    .end local v2           #now:J
    :cond_e
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$5600(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J
    invoke-static {v9}, Lcom/android/hwcamera/Camera;->access$5300(Lcom/android/hwcamera/Camera;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/hwcamera/Camera;->mShutterToPictureDisplayedTime:J

    .line 1330
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$6000(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v9}, Lcom/android/hwcamera/Camera;->access$5600(Lcom/android/hwcamera/Camera;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/hwcamera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 1358
    .restart local v0       #delay:J
    :cond_f
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6200(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1371
    .end local v0           #delay:J
    :cond_10
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_11

    .line 1372
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 1373
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v6

    const-string v7, "pref_camera_reset_tag"

    const-string v8, "noreset"

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v6, "Camera"

    const-string v7, "start _ACTION activity"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1376
    :cond_11
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    .line 1377
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v6}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    goto/16 :goto_3

    .line 1381
    :cond_12
    const-string v6, "ro.camera.support.led"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1382
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$5900(Lcom/android/hwcamera/Camera;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/hwcamera/LedLightManager;->ledOn(Landroid/app/NotificationManager;)V

    goto/16 :goto_3

    .line 1394
    :cond_13
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6900(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    if-nez v6, :cond_9

    .line 1395
    const-string v6, "Camera"

    const-string v7, "on PictureTaken, mParameters is null !!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$7000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    #setter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6, v7}, Lcom/android/hwcamera/Camera;->access$6902(Lcom/android/hwcamera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto/16 :goto_4

    .line 1411
    :cond_14
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mJpegImageData:[B
    invoke-static {v6, p1}, Lcom/android/hwcamera/Camera;->access$7102(Lcom/android/hwcamera/Camera;[B)[B

    .line 1412
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mQuickCapture:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$7200(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 1413
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 1415
    :cond_15
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->doAttach()V
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$7300(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_5
.end method
