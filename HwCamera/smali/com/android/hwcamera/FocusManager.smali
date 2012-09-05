.class public Lcom/android/hwcamera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/FocusManager$1;,
        Lcom/android/hwcamera/FocusManager$MainHandler;,
        Lcom/android/hwcamera/FocusManager$Listener;
    }
.end annotation


# static fields
.field private static final CLEAR_FOCUS_UI:I = 0x1

.field private static final CLEAR_FOCUS_UI_DELAY:I = 0x320

.field private static final FOCUS_STATE_AF:I = 0x2

.field private static final FOCUS_STATE_CAF:I = 0x0

.field private static final FOCUS_STATE_CAF_FACE:I = 0x1

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xbb8

.field public static final STATE_FAIL:I = 0x4

.field public static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field public static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FocusManager"

.field private static final UPDATE_FOCUS_UI:I = 0x2


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mFaceView:Lcom/android/hwcamera/hwui/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

.field private mFocusIndicatorRotateLayout:Landroid/view/View;

.field private mFocusMode:Ljava/lang/String;

.field private mFocusState:I

.field private mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mInitialized:Z

.field private mIsNeedPlaySound:Z

.field mListener:Lcom/android/hwcamera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewFrame:Landroid/view/View;

.field private mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

.field private mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

.field private mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

.field private mState:I

.field private mTouchFocusEnable:Z

.field private mTouchPointX:I

.field private mTouchPointY:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "defaultFocusMode"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 83
    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointX:I

    .line 84
    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointY:I

    .line 85
    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 91
    iput v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 93
    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mTouchFocusEnable:Z

    .line 127
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/android/hwcamera/FocusManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/FocusManager$MainHandler;-><init>(Lcom/android/hwcamera/FocusManager;Lcom/android/hwcamera/FocusManager$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/FocusManager;->setTouchFocusEnable(Z)V

    .line 132
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->updatePreviewStoppedUi()V

    return-void
.end method

.method private autoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 485
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FocusManager autoFocus() mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-ne v0, v3, :cond_0

    .line 496
    :goto_0
    return-void

    .line 489
    :cond_0
    iput v3, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 490
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->autoFocus()V

    .line 494
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 495
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private capture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 520
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iput v4, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 522
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 523
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    :cond_0
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 743
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updatePreviewStoppedUi()V
    .locals 0

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 477
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 478
    return-void
.end method


# virtual methods
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 661
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 662
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 663
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v3

    .line 664
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v5

    .line 666
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 667
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 668
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/hwcamera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 669
    return-void
.end method

.method public canDoFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 459
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 460
    :cond_0
    const/4 v0, 0x0

    .line 462
    :cond_1
    return v0
.end method

.method public cancelAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 499
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 508
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0, v3}, Lcom/android/hwcamera/FocusManager$Listener;->cancelAutoFocus(I)V

    .line 510
    const-string v0, "FocusManager"

    const-string v1, "FocusManager cancelAutoFocus() mState = STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iput v2, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 512
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 513
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    iput v3, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public clearFocusUI()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->clear()V

    .line 732
    :cond_0
    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 241
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    goto :goto_0

    .line 242
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 246
    const-string v0, "FocusManager"

    const-string v1, "FocusManger doSnap()  mState = STATE_FOCUSING_SNAP_ON_FINISH "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    goto :goto_0

    .line 248
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public enableFocusSound()V
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 740
    return-void
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public declared-synchronized getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 589
    :goto_0
    return-object v0

    .line 568
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    if-eqz v0, :cond_2

    .line 571
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 579
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 584
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 589
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 572
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 574
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 577
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 586
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public declared-synchronized getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleFocus(IIIZ)Z
    .locals 13
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "isTouchFocus"

    .prologue
    .line 409
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 410
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 412
    iget-boolean v9, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 413
    :cond_0
    const/4 v9, 0x0

    .line 455
    :goto_0
    return v9

    .line 417
    :cond_1
    iget v9, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 422
    :cond_3
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 423
    .local v2, focusWidth:I
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 424
    .local v1, focusHeight:I
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 425
    .local v6, previewWidth:I
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 427
    .local v5, previewHeight:I
    iput p1, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointX:I

    .line 428
    iput p2, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointY:I

    .line 430
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 432
    .local v4, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v9, v2, 0x2

    sub-int v9, p1, v9

    const/4 v10, 0x0

    sub-int v11, v6, v2

    invoke-static {v9, v10, v11}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v3

    .line 433
    .local v3, left:I
    div-int/lit8 v9, v1, 0x2

    sub-int v9, p2, v9

    const/4 v10, 0x0

    sub-int v11, v5, v1

    invoke-static {v9, v10, v11}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v8

    .line 434
    .local v8, top:I
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v3, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 437
    invoke-virtual {v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v7

    .line 438
    .local v7, rules:[I
    const/16 v9, 0xd

    const/4 v10, 0x0

    aput v10, v7, v9

    .line 439
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 442
    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_5

    .line 443
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v9}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 445
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    if-eqz v9, :cond_4

    .line 446
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v9}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 448
    :cond_4
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    .line 455
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 450
    :cond_5
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 452
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    const-wide/16 v11, 0xbb8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public initialize(Landroid/view/View;Landroid/view/View;Lcom/android/hwcamera/hwui/FaceView;Lcom/android/hwcamera/FocusManager$Listener;ZI)V
    .locals 3
    .parameter "focusIndicatorRotate"
    .parameter "previewFrame"
    .parameter "faceView"
    .parameter "listener"
    .parameter "mirror"
    .parameter "displayOrientation"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    .line 156
    const v1, 0x7f08002b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/FocusIndicatorView;

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    .line 158
    iput-object p2, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    .line 159
    iput-object p3, p0, Lcom/android/hwcamera/FocusManager;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    .line 160
    iput-object p4, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    .line 163
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 164
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p5, p6, v1, v2}, Lcom/android/hwcamera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 169
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 171
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v1, "FocusManager"

    const-string v2, "mParameters is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 141
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    .line 149
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    :cond_4
    move v0, v2

    .line 146
    goto :goto_1
.end method

.method public initializeSoundPlayer(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isEnforceAudible"

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 533
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    const v2, 0x7f060001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 537
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    const/high16 v2, 0x7f06

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

    .line 541
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    const v2, 0x7f060002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    .line 543
    return-void
.end method

.method public isCAFSupported()Z
    .locals 2

    .prologue
    .line 724
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 672
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusStateCAFFace()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 711
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 735
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 7
    .parameter "focused"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 263
    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FocusManager On autofocus result("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput v4, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 265
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 269
    if-eqz p1, :cond_1

    .line 270
    iput v5, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 274
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 275
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    .line 306
    :cond_0
    :goto_1
    return-void

    .line 272
    :cond_1
    iput v6, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    goto :goto_0

    .line 276
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 281
    if-eqz p1, :cond_4

    .line 282
    iput v5, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 283
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 291
    .local v0, soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    :goto_2
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    if-eqz v1, :cond_3

    .line 293
    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 296
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 300
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 285
    .end local v0           #soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    :cond_4
    iput v6, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 286
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

    .restart local v0       #soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    goto :goto_2

    .line 302
    .end local v0           #soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    :cond_5
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v1, :cond_0

    goto :goto_1
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->onPreviewStopped()V

    .line 482
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 467
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 470
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 471
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 473
    return-void
.end method

.method public onShutter()V
    .locals 0

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 259
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 260
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_2

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 184
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 208
    :cond_3
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 210
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 315
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 316
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 318
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 319
    :cond_0
    const/4 v2, 0x0

    .line 404
    :goto_0
    return v2

    .line 321
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 322
    const/4 v2, 0x1

    goto :goto_0

    .line 326
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/hwcamera/FocusManager;->mTouchFocusEnable:Z

    if-nez v2, :cond_3

    .line 327
    const-string v2, "FocusManager"

    const-string v5, "onTouch, !mTouchFocusEnable return"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v2, 0x1

    goto :goto_0

    .line 333
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_5

    .line 335
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 339
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 340
    .local v6, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 341
    .local v7, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 342
    .local v3, focusWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 343
    .local v4, focusHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 344
    .local v8, previewWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 347
    .local v9, previewHeight:I
    monitor-enter p0

    .line 348
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_6

    .line 349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v5, v10, v0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v5, v10, v0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_6
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/hwcamera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 361
    const/4 v2, 0x2

    new-array v14, v2, [F

    const/4 v2, 0x0

    int-to-float v5, v6

    aput v5, v14, v2

    const/4 v2, 0x1

    int-to-float v5, v7

    aput v5, v14, v2

    .line 362
    .local v14, points:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Point;

    const/4 v10, 0x0

    aget v10, v14, v10

    float-to-int v10, v10

    const/16 v17, 0x1

    aget v17, v14, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v5, v10, v0}, Landroid/graphics/Point;-><init>(II)V

    int-to-float v10, v9

    int-to-float v0, v8

    move/from16 v17, v0

    div-float v10, v10, v17

    invoke-static {v2, v5, v10}, Lcom/android/hwcamera/Util;->optmizeFocusAreaRect(Landroid/graphics/Rect;Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v12

    .line 366
    .local v12, optmizeRect:Landroid/graphics/Rect;
    if-eqz v12, :cond_7

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iput-object v12, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 370
    :cond_7
    const/high16 v5, 0x3fc0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/hwcamera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 372
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 378
    .local v13, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v2, v3, 0x2

    sub-int v2, v6, v2

    const/4 v5, 0x0

    sub-int v10, v8, v3

    invoke-static {v2, v5, v10}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v11

    .line 379
    .local v11, left:I
    div-int/lit8 v2, v4, 0x2

    sub-int v2, v7, v2

    const/4 v5, 0x0

    sub-int v10, v9, v4

    invoke-static {v2, v5, v10}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v16

    .line 380
    .local v16, top:I
    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v11, v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 382
    invoke-virtual {v13}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v15

    .line 383
    .local v15, rules:[I
    const/16 v2, 0xd

    const/4 v5, 0x0

    aput v5, v15, v2

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 390
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_9

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v2}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v2, :cond_8

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v2}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 396
    :cond_8
    const-string v2, "FocusManager"

    const-string v5, "FocusMange autoFocus"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    .line 404
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 372
    .end local v11           #left:I
    .end local v12           #optmizeRect:Landroid/graphics/Rect;
    .end local v13           #p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14           #points:[F
    .end local v15           #rules:[I
    .end local v16           #top:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 399
    .restart local v11       #left:I
    .restart local v12       #optmizeRect:Landroid/graphics/Rect;
    .restart local v13       #p:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v14       #points:[F
    .restart local v15       #rules:[I
    .restart local v16       #top:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const-wide/16 v17, 0xbb8

    move-wide/from16 v0, v17

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 681
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 682
    return-void
.end method

.method public releaseSoundPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 552
    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 556
    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 560
    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    .line 562
    :cond_2
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 645
    iget-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 657
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 650
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 651
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 652
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 654
    iput-object v5, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 655
    iput-object v5, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 656
    iput-boolean v4, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 685
    iput-boolean p1, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 686
    return-void
.end method

.method public setFocusStateCAFFace()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 715
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eqz v1, :cond_0

    .line 716
    const/4 v0, 0x0

    .line 720
    :goto_0
    return v0

    .line 719
    :cond_0
    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    goto :goto_0
.end method

.method public setTouchFocusEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/android/hwcamera/FocusManager;->mTouchFocusEnable:Z

    .line 311
    return-void
.end method

.method public shutterLongPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 215
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 218
    :cond_0
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid focus state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    const-string v0, "FocusManager"

    const-string v1, "FocusManager::shutterLongPressed - do focus."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 224
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->onShutterUp()V

    .line 229
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->onShutterDown()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    .line 232
    :cond_2
    return-void
.end method

.method public transformCoordinate([FLandroid/view/SurfaceView;Landroid/hardware/Camera$Size;)V
    .locals 9
    .parameter "Coordinate"
    .parameter "surfaceview"
    .parameter "previewSize"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 694
    if-nez p3, :cond_0

    .line 695
    const-string v5, "FocusManager"

    const-string v6, "previewSize is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_0
    return-void

    .line 699
    :cond_0
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 700
    .local v1, SurfaceViewLocation:[I
    invoke-virtual {p2, v1}, Landroid/view/SurfaceView;->getLocationOnScreen([I)V

    .line 701
    iget v5, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointX:I

    aget v6, v1, v7

    sub-int/2addr v5, v6

    int-to-float v3, v5

    .line 702
    .local v3, x:F
    iget v5, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointY:I

    aget v6, v1, v8

    sub-int/2addr v5, v6

    int-to-float v4, v5

    .line 704
    .local v4, y:F
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    .line 705
    .local v2, SurfaceViewWidth:I
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 706
    .local v0, SurfaceViewHeight:I
    iget v5, p3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, p1, v7

    .line 707
    iget v5, p3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    aput v5, p1, v8

    goto :goto_0
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    .line 605
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    .line 618
    .local v0, focusIndicator:Lcom/android/hwcamera/hwui/FocusIndicator;
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v1, :cond_3

    .line 619
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v1, :cond_2

    .line 620
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->clear()V

    goto :goto_0

    .line 625
    :cond_2
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 627
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 628
    :cond_4
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 636
    :cond_5
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 637
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 638
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 639
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showFail()V

    goto :goto_0
.end method
