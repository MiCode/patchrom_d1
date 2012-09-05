.class Lcom/android/hwcamera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$MainHandler;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 421
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 620
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 423
    :pswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 424
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->clearFocusUI()V

    goto :goto_0

    .line 429
    :pswitch_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v2}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 435
    :pswitch_3
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->initializeFirstTime()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$900(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 440
    :pswitch_4
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$1000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/FaceView;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Lcom/android/hwcamera/hwui/FaceInfo;

    check-cast v2, [Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/hwui/FaceView;->setFaces([Lcom/android/hwcamera/hwui/FaceInfo;)V

    .line 441
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$1000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/FaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/FaceView;->invalidate()V

    .line 442
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v3, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$1100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HWExtCameraHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/HWExtCameraHandler;->getBlinkState()Z

    move-result v3

    #calls: Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V
    invoke-static {v2, v3}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;Z)V

    goto :goto_0

    .line 447
    :pswitch_5
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->clearFaceRectangles()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$1300(Lcom/android/hwcamera/Camera;)V

    .line 448
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V
    invoke-static {v2, v6}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;Z)V

    goto :goto_0

    .line 452
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 453
    .local v0, bFocused:Z
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/FocusManager;->onAutoFocus(Z)V

    .line 454
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/CameraAutoFocusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraAutoFocusController;->startGSensorDetection()V

    goto :goto_0

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/CameraAutoFocusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraAutoFocusController;->setAfFinishState()V

    goto/16 :goto_0

    .line 463
    .end local v0           #bFocused:Z
    :pswitch_7
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v2}, Lcom/android/hwcamera/Camera;->startFaceDetectionUI()V

    goto/16 :goto_0

    .line 467
    :pswitch_8
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v2}, Lcom/android/hwcamera/Camera;->stopFaceDetectionUI()V

    goto/16 :goto_0

    .line 472
    :pswitch_9
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateDelayTakePictureTime()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$1500(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 478
    :pswitch_a
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$1600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 479
    :cond_2
    const-string v2, "Camera"

    const-string v3, "Decode completed but bitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 482
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$1600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->updateBGAndThumbnailUI(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 487
    :pswitch_b
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$1700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$1700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/Camera$ImageSaver;->updateThumbnail(Lcom/android/hwcamera/Thumbnail;)V

    goto/16 :goto_0

    .line 494
    :pswitch_c
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z
    invoke-static {v2, v7}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;I)Z

    goto/16 :goto_0

    .line 499
    :pswitch_d
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v3, 0x4

    #calls: Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z
    invoke-static {v2, v3}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;I)Z

    goto/16 :goto_0

    .line 504
    :pswitch_e
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->hideReview(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/hwcamera/Camera;->access$1900(Lcom/android/hwcamera/Camera;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 508
    :pswitch_f
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->displayReview()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2000(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 512
    :pswitch_10
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->switchReview()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2100(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 516
    :pswitch_11
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showPostCaptureAlert()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2200(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 520
    :pswitch_12
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v2

    if-ne v2, v8, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2400(Lcom/android/hwcamera/Camera;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPausing:Z
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2500(Lcom/android/hwcamera/Camera;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/hwcamera/Camera;->access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 522
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 523
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 524
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 525
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    const v3, 0x7f030012

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setContentView(I)V

    goto/16 :goto_0

    .line 531
    :pswitch_13
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkCurrentStorage()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2700(Lcom/android/hwcamera/Camera;)V

    .line 532
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 533
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPausing:Z
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2500(Lcom/android/hwcamera/Camera;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 535
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->startPanoramaViewer()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2800(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 537
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 538
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x25

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 539
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 540
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1e

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 542
    :cond_6
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v2

    if-ne v2, v8, :cond_7

    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 543
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 544
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v5}, Lcom/android/hwcamera/Camera;->access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 546
    :cond_7
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V
    invoke-static {v2, v4}, Lcom/android/hwcamera/Camera;->access$3000(Lcom/android/hwcamera/Camera;Z)V

    .line 547
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V
    invoke-static {v2, v4, v4}, Lcom/android/hwcamera/Camera;->access$3100(Lcom/android/hwcamera/Camera;ZZ)V

    .line 548
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mReviewTime:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$3200(Lcom/android/hwcamera/Camera;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$3300(Lcom/android/hwcamera/Camera;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V
    invoke-static {v2, v6}, Lcom/android/hwcamera/Camera;->access$3400(Lcom/android/hwcamera/Camera;I)V

    goto/16 :goto_0

    .line 555
    :pswitch_14
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V
    invoke-static {v2, v6}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;Z)V

    .line 557
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->clearFaceRectangles()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$1300(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 561
    :pswitch_15
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v3

    if-eq v2, v3, :cond_8

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 562
    :cond_8
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/hwcamera/Camera;->access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 566
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 567
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 568
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 569
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    const v3, 0x7f030012

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setContentView(I)V

    goto/16 :goto_0

    .line 564
    :cond_9
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v5, 0x7f0d000c

    invoke-direct {v3, v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/hwcamera/Camera;->access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_1

    .line 573
    :pswitch_16
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 574
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 575
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v5}, Lcom/android/hwcamera/Camera;->access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 581
    :pswitch_17
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V
    invoke-static {v2, v4, v6}, Lcom/android/hwcamera/Camera;->access$3100(Lcom/android/hwcamera/Camera;ZZ)V

    goto/16 :goto_0

    .line 585
    :pswitch_18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 586
    .local v1, size:Landroid/hardware/Camera$Size;
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$3500(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreviewFrameLayout;

    move-result-object v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v3, v3

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    goto/16 :goto_0

    .line 589
    .end local v1           #size:Landroid/hardware/Camera$Size;
    :pswitch_19
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->onPreviewStopped()V

    goto/16 :goto_0

    .line 592
    :pswitch_1a
    iget-object v3, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientationCompensation:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)I

    move-result v5

    #calls: Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V
    invoke-static {v3, v2, v4, v5}, Lcom/android/hwcamera/Camera;->access$3700(Lcom/android/hwcamera/Camera;Ljava/lang/CharSequence;II)V

    goto/16 :goto_0

    .line 595
    :pswitch_1b
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->switchCameraUI()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$3800(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 598
    :pswitch_1c
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setTimerpromptIcon()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$3900(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 602
    :pswitch_1d
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v2, v5}, Lcom/android/hwcamera/Camera;->access$4002(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 603
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateThumbnailButton()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$4100(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 609
    :pswitch_1e
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsActivityExit:Z
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$4200(Lcom/android/hwcamera/Camera;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 610
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkStorage()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$4300(Lcom/android/hwcamera/Camera;)V

    .line 614
    :goto_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mIsActivityExit:Z
    invoke-static {v2, v6}, Lcom/android/hwcamera/Camera;->access$4202(Lcom/android/hwcamera/Camera;Z)Z

    goto/16 :goto_0

    .line 612
    :cond_a
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkCurrentStorage()V
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$2700(Lcom/android/hwcamera/Camera;)V

    goto :goto_2

    .line 421
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1e
        :pswitch_1a
        :pswitch_1
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_e
        :pswitch_17
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_11
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_d
        :pswitch_1d
    .end packed-switch
.end method
