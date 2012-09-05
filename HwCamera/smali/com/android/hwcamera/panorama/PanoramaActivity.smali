.class public Lcom/android/hwcamera/panorama/PanoramaActivity;
.super Lcom/android/hwcamera/ActivityBase;
.source "PanoramaActivity.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;,
        Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;
    }
.end annotation


# static fields
.field private static final CAPTURE_STATE_MOSAIC:I = 0x1

.field private static final CAPTURE_STATE_VIEWFINDER:I = 0x0

.field public static final DEFAULT_BLEND_MODE:I = 0x3

.field public static final DEFAULT_CAPTURE_PIXELS:I = 0xa8c00

.field public static final DEFAULT_SWEEP_ANGLE:I = 0xa0

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x5

.field private static final MSG_GENERATE_FINAL_MOSAIC_ERROR:I = 0x3

.field private static final MSG_LOW_RES_FINAL_MOSAIC_READY:I = 0x1

.field private static final MSG_RESET_TO_PREVIEW:I = 0x4

.field private static final MSG_RESET_TO_PREVIEW_WITH_THUMBNAIL:I = 0x2

.field private static final NS2S:F = 1.0E-9f

.field private static final PANNING_SPEED_THRESHOLD:F = 20.0f

.field private static final PREVIEW_ACTIVE:I = 0x1

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "PanoramaActivity"

.field private static final VIDEO_RECORD_SOUND:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCameraOrientation:I

.field private mCameraState:I

.field private mCancelComputation:Z

.field private mCaptureIndicator:Landroid/widget/TextView;

.field private mCaptureLayout:Landroid/view/View;

.field private mCaptureState:I

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOk:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mFastIndicationBorder:Landroid/view/View;

.field private mHorizontalViewAngle:F

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mLeftIndicator:Landroid/view/View;

.field private mMainHandler:Landroid/os/Handler;

.field private mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

.field private mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;

.field private mPanoLayout:Landroid/view/View;

.field private mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

.field private mPausing:Z

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecordSound:Lcom/android/hwcamera/SoundPlayer;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSwitchCamer:Landroid/widget/ImageView;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private mThumbnailView:Lcom/android/hwcamera/RotateImageView;

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mTransformMatrix:[F

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase;-><init>()V

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    .line 167
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/panorama/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/hwcamera/panorama/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/hwcamera/panorama/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->startCameraPreview()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/hwcamera/panorama/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/hwcamera/panorama/PanoramaActivity;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/panorama/PanoramaActivity;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/panorama/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/panorama/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/panorama/PanoramaActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/panorama/PanoramaActivity;FFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/panorama/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/panorama/PanoramaActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->showDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/hwcamera/panorama/PanoramaActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->switchToCameraMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/panorama/PanoramaActivity;)Lcom/android/hwcamera/panorama/MosaicFrameProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/panorama/PanoramaActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/panorama/PanoramaActivity;)Lcom/android/hwcamera/panorama/PanoProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/panorama/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientationAtCapture:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/hwcamera/panorama/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/hwcamera/panorama/PanoramaActivity;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/hwcamera/panorama/PanoramaActivity;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/hwcamera/panorama/PanoramaActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->resetToPreview()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCancelComputation:Z

    .line 860
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 862
    monitor-exit v1

    .line 863
    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->clear()V

    goto :goto_0
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 419
    return-void
.end method

.method private createContentView()V
    .locals 6

    .prologue
    const v5, 0x7f09000e

    const v4, 0x7f09000c

    const/4 v3, 0x0

    .line 656
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setContentView(I)V

    .line 658
    iput v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    .line 660
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 662
    .local v0, appRes:Landroid/content/res/Resources;
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    .line 663
    const v1, 0x7f080046

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/panorama/PanoProgressBar;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    .line 664
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setBackgroundColor(I)V

    .line 665
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setDoneColor(I)V

    .line 666
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIndicatorColor:I

    .line 667
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIndicatorColorFast:I

    .line 668
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setIndicatorColor(I)V

    .line 669
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    new-instance v2, Lcom/android/hwcamera/panorama/PanoramaActivity$8;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$8;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/hwcamera/panorama/PanoProgressBar$OnDirectionChangeListener;)V

    .line 679
    const v1, 0x7f080047

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    .line 680
    const v1, 0x7f080048

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    .line 681
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 682
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 683
    const v1, 0x7f080049

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    .line 684
    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    .line 686
    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/panorama/PanoProgressBar;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    .line 687
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setIndicatorWidth(F)V

    .line 688
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setMaxProgress(I)V

    .line 689
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setBackgroundColor(I)V

    .line 690
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setDoneColor(I)V

    .line 692
    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureIndicator:Landroid/widget/TextView;

    .line 694
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    .line 695
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/RotateImageView;->enableFilter(Z)V

    .line 696
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSwitchCamer:Landroid/widget/ImageView;

    .line 697
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSwitchCamer:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 698
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSwitchCamer:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/hwcamera/panorama/PanoramaActivity$9;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$9;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    .line 706
    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    .line 707
    const v1, 0x7f080044

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    .line 708
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->getRenderer()Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->setMosaicSurfaceCreateListener(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;)V

    .line 715
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ShutterButton;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 716
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v2, 0x7f020020

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 717
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;)V

    .line 718
    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;

    .line 719
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .parameter
    .parameter "need4To3"
    .parameter "needSmaller"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v4, 0xa8c00

    .line 353
    .local v4, pixelsDiff:I
    const/4 v2, 0x0

    .line 354
    .local v2, hasFound:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 355
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 356
    .local v1, h:I
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    .line 358
    .local v6, w:I
    const v7, 0xa8c00

    mul-int v8, v1, v6

    sub-int v0, v7, v8

    .line 359
    .local v0, d:I
    if-eqz p3, :cond_1

    if-ltz v0, :cond_0

    .line 362
    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v6, 0x3

    if-ne v7, v8, :cond_0

    .line 365
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 366
    if-ge v0, v4, :cond_0

    .line 367
    iput v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewWidth:I

    .line 368
    iput v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewHeight:I

    .line 369
    move v4, v0

    .line 370
    const/4 v2, 0x1

    goto :goto_0

    .line 373
    .end local v0           #d:I
    .end local v1           #h:I
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #w:I
    :cond_3
    return v2
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 932
    sparse-switch p0, :sswitch_data_0

    .line 942
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 934
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 940
    :goto_0
    return-object v0

    .line 936
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 938
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 940
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 932
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 518
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 627
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setIndicatorColor(I)V

    .line 630
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 631
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 632
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    if-nez v0, :cond_2

    .line 955
    new-instance v0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getPreviewBufSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;-><init>(III)V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    .line 958
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->initialize()V

    goto :goto_0
.end method

.method private initSoundRecorder()V
    .locals 8

    .prologue
    .line 963
    new-instance v7, Ljava/io/File;

    const-string v2, "/system/media/audio/ui/VideoRecord.ogg"

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 965
    .local v7, recordSoundFile:Ljava/io/File;
    const/high16 v2, 0x1000

    :try_start_0
    invoke-static {v7, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 968
    .local v1, recordSoundParcel:Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 976
    .local v0, recordSoundAsset:Landroid/content/res/AssetFileDescriptor;
    new-instance v2, Lcom/android/hwcamera/SoundPlayer;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    .end local v0           #recordSoundAsset:Landroid/content/res/AssetFileDescriptor;
    .end local v1           #recordSoundParcel:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v6

    .line 978
    .local v6, e:Ljava/io/FileNotFoundException;
    const-string v2, "PanoramaActivity"

    const-string v3, "System video record sound not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    goto :goto_0
.end method

.method private initThumbnailButton()V
    .locals 3

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "last_thumb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/hwcamera/Thumbnail;->loadFrom(Ljava/io/File;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 783
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updateThumbnailButton()V

    .line 784
    return-void
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1159
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1160
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1152
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1153
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1155
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    .line 852
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 856
    :cond_0
    return-void
.end method

.method private openCamera()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;,
            Lcom/android/hwcamera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, mCameraId:I
    :try_start_0
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/CameraHolder;->open(I)Lcom/android/hwcamera/HwCamera;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 340
    invoke-static {v1}, Lcom/android/hwcamera/Util;->getCameraOrientation(I)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraOrientation:I
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 343
    .local v2, ress:Landroid/content/res/Resources;
    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/hwcamera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 330
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 331
    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    .line 334
    :cond_0
    return-void
.end method

.method private releaseSoundRecorder()V
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    .line 988
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 879
    iput v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    .line 881
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 883
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->reset()V

    .line 887
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 888
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1148
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1149
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->reset()V

    .line 892
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->startCameraPreview()V

    .line 893
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    .line 847
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 848
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 14
    .parameter "jpegData"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 904
    if-eqz p1, :cond_1

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 906
    .local v1, dirPath:Ljava/lang/String;
    iget-wide v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTimeTaken:J

    invoke-static {v3, v4}, Lcom/android/hwcamera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTimeTaken:J

    const/4 v5, 0x0

    const/4 v8, 0x1

    move/from16 v6, p4

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Lcom/android/hwcamera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;I[BZ)Landroid/net/Uri;

    move-result-object v12

    .line 909
    .local v12, uri:Landroid/net/Uri;
    if-eqz v12, :cond_0

    if-eqz p4, :cond_0

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 913
    .local v11, filepath:Ljava/lang/String;
    :try_start_0
    new-instance v10, Landroid/media/ExifInterface;

    invoke-direct {v10, v11}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 914
    .local v10, exif:Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    invoke-static/range {p4 .. p4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-virtual {v10}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 918
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 919
    .local v13, values:Landroid/content/ContentValues;
    const-string v0, "_size"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 920
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v12, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    .end local v1           #dirPath:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    .end local v10           #exif:Landroid/media/ExifInterface;
    .end local v11           #filepath:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-object v12

    .line 922
    .restart local v1       #dirPath:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    .restart local v11       #filepath:Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 923
    .local v9, e:Ljava/io/IOException;
    const-string v0, "PanoramaActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot set exif data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 928
    .end local v1           #dirPath:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    .end local v9           #e:Ljava/io/IOException;
    .end local v11           #filepath:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private setOrientationIndicator(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 222
    return-void
.end method

.method private setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surface"

    .prologue
    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/HwCamera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    return-void

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->releaseCamera()V

    .line 1105
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewTexture failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;,
            Lcom/android/hwcamera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->openCamera()V

    .line 322
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 323
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 324
    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 325
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 377
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 378
    .local v5, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5, v10, v10}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 379
    const-string v6, "PanoramaActivity"

    const-string v7, "No 4:3 ratio preview size supported."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0, v5, v9, v10}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 381
    const-string v6, "PanoramaActivity"

    const-string v7, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0, v5, v9, v9}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 385
    :cond_0
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewWidth:I

    iget v7, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 388
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 389
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 390
    .local v1, last:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 391
    .local v3, minFps:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v2, v6, v10

    .line 392
    .local v2, maxFps:I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 393
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 396
    .local v4, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 397
    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 404
    :goto_0
    invoke-virtual {p1, v9}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 406
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mHorizontalViewAngle:F

    .line 407
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mVerticalViewAngle:F

    .line 408
    return-void

    .line 400
    :cond_1
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 840
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 841
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 843
    return-void
.end method

.method private showDirectionIndicators(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 523
    packed-switch p1, :pswitch_data_0

    .line 537
    :goto_0
    return-void

    .line 525
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 529
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 533
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 896
    if-eqz p1, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 901
    return-void
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 619
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setIndicatorColor(I)V

    .line 622
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 623
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 624
    return-void
.end method

.method private startCameraPreview()V
    .locals 4

    .prologue
    .line 1112
    const-string v1, "PanoramaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCameraPreview mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCameraPreview()V

    .line 1118
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->setDisplayOrientation(I)V

    .line 1120
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1123
    :try_start_0
    const-string v1, "PanoramaActivity"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    .line 1130
    return-void

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->releaseCamera()V

    .line 1127
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopCameraPreview()V
    .locals 3

    .prologue
    .line 1133
    const-string v0, "PanoramaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->stopPreview()V

    .line 1137
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    .line 1138
    return-void
.end method

.method private stopCapture(Z)V
    .locals 4
    .parameter "aborted"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 582
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    .line 583
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->hideTooFastIndication()V

    .line 585
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->hideDirectionIndicators()V

    .line 586
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 587
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSwitchCamer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 588
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 590
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->setProgressListener(Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;)V

    .line 591
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCameraPreview()V

    .line 593
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 595
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->showDialog(Ljava/lang/String;)V

    .line 597
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$7;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$7;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->keepScreenOnAwhile()V

    .line 616
    return-void
.end method

.method private switchToCameraMode()Z
    .locals 1

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 724
    :goto_0
    return v0

    .line 722
    :cond_0
    invoke-static {p0}, Lcom/android/hwcamera/MenuHelper;->gotoCameraMode(Landroid/app/Activity;)V

    .line 723
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->finish()V

    .line 724
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchToOtherMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 427
    :goto_0
    return v0

    .line 425
    :cond_0
    invoke-static {p1, p0}, Lcom/android/hwcamera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->finish()V

    .line 427
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateProgress(FFFF)V
    .locals 3
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"

    .prologue
    const/high16 v2, 0x41a0

    .line 637
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setReady()V

    .line 638
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->requestRender()V

    .line 643
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->showTooFastIndication()V

    .line 649
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    float-to-int v0, p3

    .line 653
    .local v0, angleInMajorDirection:I
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setProgress(I)V

    .line 654
    return-void

    .line 647
    .end local v0           #angleInMajorDirection:I
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->hideTooFastIndication()V

    goto :goto_0

    .line 649
    :cond_2
    float-to-int v0, p4

    goto :goto_1
.end method

.method private updateThumbnailButton()V
    .locals 3

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 789
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 790
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Thumbnail;->getLastThumbnail(Landroid/content/ContentResolver;Z)Lcom/android/hwcamera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v1, :cond_2

    .line 793
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 797
    :goto_0
    return-void

    .line 795
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected doOnResume()V
    .locals 5

    .prologue
    const v4, 0x7f0c0001

    const/4 v3, 0x0

    .line 1020
    const-string v1, "PanoramaActivity"

    const-string v2, "doonResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iput-boolean v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    .line 1022
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationEventListener:Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->enable()V

    .line 1024
    iput v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    .line 1026
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setupCamera()V

    .line 1028
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->initSoundRecorder()V

    .line 1032
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->initMosaicFrameProcessorIfNeeded()V

    .line 1033
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->onResume()V

    .line 1035
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->initThumbnailButton()V

    .line 1036
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1038
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setVisibility(I)V
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/hwcamera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1050
    :goto_0
    return-void

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    invoke-static {p0, v4}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1043
    .end local v0           #e:Lcom/android/hwcamera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1045
    .local v0, e:Lcom/android/hwcamera/CameraDisabledException;
    invoke-static {p0, v4}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public generateFinalMosaic(Z)Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;
    .locals 13
    .parameter "highRes"

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 1061
    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v2, p1}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v8

    .line 1062
    .local v8, mosaicReturnCode:I
    const/4 v2, -0x2

    if-ne v8, v2, :cond_0

    .line 1097
    :goto_0
    return-object v5

    .line 1064
    :cond_0
    const/4 v2, -0x1

    if-ne v8, v2, :cond_1

    .line 1065
    new-instance v5, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v2}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1069
    .local v1, imageData:[B
    if-nez v1, :cond_2

    .line 1070
    const-string v2, "PanoramaActivity"

    const-string v5, "getFinalMosaicNV21() returned null."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v5, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 1074
    :cond_2
    array-length v2, v1

    add-int/lit8 v7, v2, -0x8

    .line 1075
    .local v7, len:I
    add-int/lit8 v2, v7, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v3, v2, v10

    .line 1077
    .local v3, width:I
    add-int/lit8 v2, v7, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x6

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x7

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v4, v2, v10

    .line 1079
    .local v4, height:I
    const-string v2, "PanoramaActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ImLength = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", W = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", H = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1083
    :cond_3
    const-string v2, "PanoramaActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "width|height <= 0!!, len = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", W = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", H = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    new-instance v5, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto/16 :goto_0

    .line 1088
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1089
    .local v0, yuvimage:Landroid/graphics/YuvImage;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1090
    .local v9, out:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1092
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    new-instance v5, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;[BII)V

    goto/16 :goto_0

    .line 1093
    :catch_0
    move-exception v6

    .line 1094
    .local v6, e:Ljava/lang/Exception;
    const-string v2, "PanoramaActivity"

    const-string v5, "Exception in storing final mosaic"

    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    new-instance v5, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto/16 :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 411
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 412
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 414
    iget v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->cancelHighResComputation()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/16 v2, 0x400

    const/16 v1, 0x80

    const/4 v3, 0x0

    .line 228
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 231
    .local v0, window:Landroid/view/Window;
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 233
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 235
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->requestWindowFeature(I)Z

    .line 242
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setRequestedOrientation(I)V

    .line 244
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->createContentView()V

    .line 246
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 247
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    .line 248
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    .line 252
    :cond_0
    new-instance v1, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;

    invoke-direct {v1, p0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationEventListener:Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;

    .line 254
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTransformMatrix:[F

    .line 256
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDialogOk:Ljava/lang/String;

    .line 261
    new-instance v1, Lcom/android/hwcamera/panorama/PanoramaActivity$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$1;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    .line 299
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0110

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 303
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 304
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDialogOk:Ljava/lang/String;

    new-instance v4, Lcom/android/hwcamera/panorama/PanoramaActivity$2;

    invoke-direct {v4, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$2;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 312
    return-void
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 515
    :goto_0
    monitor-exit p0

    return-void

    .line 498
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    new-instance v1, Lcom/android/hwcamera/panorama/PanoramaActivity$5;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$5;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 510
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    if-nez v0, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runViewFinder()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 513
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runMosaicCapture()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public onMosaicSurfaceChanged()V
    .locals 1

    .prologue
    .line 441
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$3;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method public onMosaicSurfaceCreated(I)V
    .locals 1
    .parameter "textureID"

    .prologue
    .line 454
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity$4;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;I)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 992
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onPause()V

    .line 994
    iput-boolean v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    .line 995
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->cancelHighResComputation()V

    .line 997
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    if-ne v0, v1, :cond_0

    .line 998
    invoke-direct {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCapture(Z)V

    .line 999
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->reset()V

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "last_image_thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Thumbnail;->saveTo(Ljava/io/File;)V

    .line 1006
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->releaseCamera()V

    .line 1007
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->releaseSoundRecorder()V

    .line 1008
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->onPause()V

    .line 1010
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setVisibility(I)V

    .line 1012
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    .line 1013
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationEventListener:Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->disable()V

    .line 1014
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->resetScreenOn()V

    .line 1015
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1016
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 736
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 737
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->startCapture()V

    goto :goto_0

    .line 740
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 741
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCapture(Z)V

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 0
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 747
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 316
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStart()V

    .line 317
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updateThumbnailButton()V

    .line 318
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v0, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/hwcamera/Util;->viewUri(Landroid/net/Uri;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1142
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onUserInteraction()V

    .line 1143
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1144
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/hwcamera/panorama/PanoProgressBar;->reset()V

    .line 751
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setRightIncreasing(Z)V

    .line 752
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$10;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$10;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 775
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 776
    return-void
.end method

.method public runMosaicCapture()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setWarping(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->preprocess([F)V

    .line 482
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->lockPreviewReadyFlag()V

    .line 484
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->transferGPUtoCPU()V

    .line 486
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->waitUntilPreviewReady()V

    .line 487
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->processFrame()V

    .line 488
    return-void
.end method

.method public runViewFinder()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setWarping(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->preprocess([F)V

    .line 472
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setReady()V

    .line 473
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->requestRender()V

    .line 474
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 1

    .prologue
    .line 800
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$11;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 836
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->reportProgress()V

    .line 837
    return-void
.end method

.method public startCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 541
    iput-boolean v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCancelComputation:Z

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTimeTaken:J

    .line 543
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    .line 544
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 545
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    invoke-direct {p0, v2}, Lcom/android/hwcamera/panorama/PanoramaActivity;->showDirectionIndicators(I)V

    .line 547
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSwitchCamer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 551
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    new-instance v1, Lcom/android/hwcamera/panorama/PanoramaActivity$6;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$6;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->setProgressListener(Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;)V

    .line 571
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->reset()V

    .line 574
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setIndicatorWidth(F)V

    .line 575
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setMaxProgress(I)V

    .line 576
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setVisibility(I)V

    .line 577
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientation:I

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientationAtCapture:I

    .line 578
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->keepScreenOn()V

    .line 579
    return-void
.end method
