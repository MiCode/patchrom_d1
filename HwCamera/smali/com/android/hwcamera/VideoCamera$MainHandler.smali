.class Lcom/android/hwcamera/VideoCamera$MainHandler;
.super Landroid/os/Handler;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$MainHandler;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method

.method private displayReview()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$1602(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 468
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1700(Lcom/android/hwcamera/VideoCamera;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 470
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/Review;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReviewTime:I
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1800(Lcom/android/hwcamera/VideoCamera;)I

    move-result v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$1700(Lcom/android/hwcamera/VideoCamera;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/Review;->setIntervalReviewDisplay(ILandroid/net/Uri;)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mReviewState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$1902(Lcom/android/hwcamera/VideoCamera;I)I

    goto :goto_0
.end method

.method private hideReview(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 477
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->hideReviewButtons()V

    .line 478
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mReviewState:I
    invoke-static {v0, v2}, Lcom/android/hwcamera/VideoCamera;->access$1902(Lcom/android/hwcamera/VideoCamera;I)I

    .line 479
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2000(Lcom/android/hwcamera/VideoCamera;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 481
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2100(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->deleteCurrentVideo()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2200(Lcom/android/hwcamera/VideoCamera;)V

    .line 483
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2300(Lcom/android/hwcamera/VideoCamera;)V

    .line 485
    :cond_0
    return-void
.end method

.method private switchReview()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->switchVisible()V

    .line 464
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 381
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 455
    :pswitch_0
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 384
    :pswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->delayedOnResume()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$300(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 388
    :pswitch_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 392
    :pswitch_3
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 398
    :pswitch_4
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateRecordingTime()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$500(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 408
    :pswitch_5
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$600(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$700(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->restartPreview()Z
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$800(Lcom/android/hwcamera/VideoCamera;)Z

    .line 412
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOnResumeTime:J
    invoke-static {v3}, Lcom/android/hwcamera/VideoCamera;->access$900(Lcom/android/hwcamera/VideoCamera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 419
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$MainHandler;->hideReview(Landroid/os/Message;)V

    goto :goto_0

    .line 424
    :pswitch_7
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera$MainHandler;->displayReview()V

    goto :goto_0

    .line 428
    :pswitch_8
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->startPlayVideoActivity()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1100(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 432
    :pswitch_9
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera$MainHandler;->switchReview()V

    goto :goto_0

    .line 437
    :pswitch_a
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->doSwitchCamera()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1200(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 441
    :pswitch_b
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->switchCameraUI()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1300(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 447
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 448
    .local v0, bFocused:Z
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/FocusManager;->onAutoFocus(Z)V

    goto/16 :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
