.class public Lcom/android/hwcamera/VideoCamera;
.super Lcom/android/hwcamera/ActivityBase;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/hwcamera/FocusManager$Listener;
.implements Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/hwcamera/Switcher$OnSwitchListener;
.implements Lcom/android/hwcamera/LocationManager$Listener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;,
        Lcom/android/hwcamera/VideoCamera$SuperPanelListener;,
        Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;,
        Lcom/android/hwcamera/VideoCamera$ZoomListener;,
        Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;,
        Lcom/android/hwcamera/VideoCamera$MainHandler;
    }
.end annotation


# static fields
.field private static final AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final AUTO_FOCUS_CALLBACK:I = 0x14

.field private static final CHECK_DISPLAY_ROTATION:I = 0x3

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final CUSTOM_MAX_FILESIZE:J = 0x445c0L

.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.7f

.field private static final DELAYED_ONRESUME_FUNCTION:I = 0x7

.field private static final ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FLOW:Ljava/lang/String; = "[Flow] "

.field private static final FOCUSING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESET_EFFECT_EXTRA:Ljava/lang/String; = "reset_effect"

.field private static final REVIEW_DISPLAY_MSG:I = 0x12

.field private static final REVIEW_HIDE_MSG:I = 0xe

.field private static final REVIEW_IN_PROGRESS:I = 0x1

.field private static final REVIEW_NOT_IN_PROGRESS:I = 0x0

.field private static final REVIEW_PLAY_MSG:I = 0x13

.field private static final REVIEW_SWITCH_MSG:I = 0x10

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x1f4L

.field private static final SWITCH_CAMERA:Z = true

.field private static final SWITCH_CAMERA_DEV:I = 0x19

.field private static final SWITCH_CAMERA_UI:I = 0x1a

.field private static final SWITCH_VIDEO:Z = false

.field private static final TAG:Ljava/lang/String; = "videocamera"

.field private static final UPDATE_RECORD_TIME:I = 0x5

.field private static final VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEOQUALITY_BITRATE_HIGH_TABLE:Lcom/android/hwcamera/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_CODE_RATE:F = 1.07f

.field private static final VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private devlatch:Ljava/util/concurrent/CountDownLatch;

.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;

.field private mAwbLockSupported:Z

.field private mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private mCameraId:I

.field private mCaptureTimeLapse:Z

.field private mColorEffectExitAnim:Landroid/view/animation/Animation;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mControlBar:Landroid/view/View;

.field private mControlBarAnim:Landroid/view/animation/Animation;

.field private mControlBarHeight:I

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mEffectType:I

.field private mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

.field private mEulaPreference:Landroid/content/SharedPreferences;

.field private mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

.field private mFlashSupported:Z

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/android/hwcamera/hwui/RotateLayout;

.field private mFocusManager:Lcom/android/hwcamera/FocusManager;

.field private mFocusState:I

.field private mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

.field private mGalleryExHorScroll:Landroid/view/View;

.field private mGalleryExKEY:Ljava/lang/String;

.field private mGalleryExLinearLayout:Landroid/widget/LinearLayout;

.field private mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

.field private mGpsSignalState:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsGalleryExViewAdd:Z

.field private mIsInternalStorageExist:Z

.field private mIsInvokeBarFirstInflate:Z

.field private mIsLowRecordVideo:Z

.field private mIsOnGalleryExState:Z

.field private mIsTouchFocusNeeded:Z

.field private mIsVideoCaptureIntent:Z

.field private mLocationManager:Lcom/android/hwcamera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mMeteringAreaSupported:Z

.field private mNumberOfCameras:I

.field private mOnResumeTime:J

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mPausing:Z

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordVideoFileState:Z

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mReview:Lcom/android/hwcamera/hwui/Review;

.field private mReviewOrientation:I

.field private mReviewPlayState:Z

.field private mReviewState:I

.field private mReviewTime:I

.field private mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private mSmoothZoomSupported:Z

.field private mStartPreviewFail:Z

.field private mStorageSpace:J

.field private mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

.field private mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

.field private mSwitcher:Lcom/android/hwcamera/Switcher;

.field private mThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private mThumbnailView:Lcom/android/hwcamera/RotateImageView;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFps:I

.field private mVideoFrame:Landroid/widget/ImageView;

.field private mVideoHeight:I

.field private mVideoPreview:Landroid/view/SurfaceView;

.field private mVideoWidth:I

.field private final mZoomListener:Lcom/android/hwcamera/VideoCamera$ZoomListener;

.field private mZoomMax:I

.field mZoomRatios:[F

.field private mZoomValue:I

.field private mZooming:Z

.field private final sReceiver:Landroid/content/BroadcastReceiver;

.field private screenChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x4e200

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 274
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 276
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 278
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 281
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_HIGH_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 284
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 287
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 290
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "3gp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "mp4"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 294
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "h263"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "h264"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "m4v"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 299
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "amrnb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "amrwb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "aac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "aacplus"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "eaacplus"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 307
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1920x1080"

    const v2, 0xe4e1c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1280x720"

    const v2, 0x989680

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "960x540"

    const v2, 0x6acfc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "640x480"

    const v2, 0x3d0900

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "352x288"

    const v2, 0x57e40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "320x240"

    const v2, 0x927c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "176x144"

    const v2, 0x27100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 316
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1920x1080"

    const v2, 0xc65d40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1280x720"

    const v2, 0x7a1200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "960x540"

    const v2, 0x5b8d80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "640x480"

    const v2, 0x1e8480

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "352x288"

    const v2, 0x57e40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "320x240"

    const v2, 0x61a80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "176x144"

    const v2, 0x222e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase;-><init>()V

    .line 139
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    .line 162
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 169
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    .line 183
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mEffectType:I

    .line 186
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    .line 188
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 208
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    .line 210
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 214
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFps:I

    .line 216
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    .line 217
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    .line 220
    new-instance v0, Lcom/android/hwcamera/VideoCamera$ZoomListener;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$ZoomListener;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomListener:Lcom/android/hwcamera/VideoCamera$ZoomListener;

    .line 231
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 232
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsGalleryExViewAdd:Z

    .line 237
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    .line 240
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    .line 241
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 252
    iput v4, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    .line 254
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 256
    new-instance v0, Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mAutoFocusCallback:Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;

    .line 257
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarHeight:I

    .line 260
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    .line 263
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    .line 264
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    .line 267
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 271
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    .line 326
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    .line 327
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    .line 340
    new-instance v0, Lcom/android/hwcamera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$MainHandler;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 349
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    .line 352
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    .line 354
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 355
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    .line 357
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    .line 361
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    .line 369
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsTouchFocusNeeded:Z

    .line 488
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 558
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    .line 559
    new-instance v0, Lcom/android/hwcamera/VideoCamera$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoCamera$1;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 895
    new-instance v0, Lcom/android/hwcamera/VideoCamera$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoCamera$3;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3461
    return-void
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPlayVideoActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->doSwitchCamera()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->switchCameraUI()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/Review;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/VideoCamera;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/VideoCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->deleteCurrentVideo()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/VideoCamera;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/VideoCamera;->showSDCardStorageHint(J)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopReviewIfNeed()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/hwcamera/VideoCamera;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->delayedOnResume()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/hwcamera/VideoCamera;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->ensureCameraDevice()V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/HwCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$3702(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/hwcamera/VideoCamera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/hwcamera/VideoCamera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/hwcamera/VideoCamera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mControlBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/hwcamera/VideoCamera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExClose()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mNumberOfCameras:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->switchCameraId(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setOrientationVidoInvokeAfterCapture(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restoreParameterToDefault()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->onSharedPreferencesChanged()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updatesuperpanel()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/hwcamera/VideoCamera;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mEulaPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/hwcamera/VideoCamera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showConfirmGpsDialog()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showEulaDialog()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/hwcamera/VideoCamera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->galleryExStart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExInit()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mOnResumeTime:J

    return-wide v0
.end method

.method private addVideoToMediaStore()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2234
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v4, :cond_1

    .line 2235
    const-string v4, "content://media/external/video/media"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2236
    .local v3, videoTable:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_size"

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingStartTime:J

    sub-long v0, v4, v6

    .line 2239
    .local v0, duration:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 2240
    iget-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_0

    .line 2241
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 2243
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2248
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2250
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.hardware.action.NEW_VIDEO"

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2258
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    .end local v0           #duration:J
    .end local v3           #videoTable:Landroid/net/Uri;
    :cond_1
    :goto_1
    iput-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2262
    return-void

    .line 2245
    .restart local v0       #duration:J
    .restart local v3       #videoTable:Landroid/net/Uri;
    :cond_2
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video duration <= 0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2252
    :catch_0
    move-exception v2

    .line 2255
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2256
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2258
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    const-string v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current video URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v4
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 2022
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2023
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2024
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2025
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 2029
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1718
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    .line 1720
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :goto_0
    return-void

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->lock()V

    .line 1725
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 1728
    :cond_1
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mEffectType:I

    .line 1729
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 1730
    const-string v0, "videocamera"

    const-string v1, "[Flow] camera release!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1732
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 1733
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3359
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 3361
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3365
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3367
    :cond_0
    return-void

    .line 3362
    :catch_0
    move-exception v0

    .line 3363
    .local v0, e:Ljava/io/IOException;
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private collapseCameraControls(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const v3, 0x7f080098

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3401
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v2, v0, :cond_1

    .line 3402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3403
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3434
    :cond_0
    :goto_0
    return v0

    .line 3408
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 3409
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 3413
    goto :goto_0

    .line 3416
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_6

    .line 3417
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3418
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    goto :goto_0

    .line 3420
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3421
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_0

    .line 3423
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3424
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 3429
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    .line 3434
    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 3352
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3353
    const-string v0, ".mp4"

    .line 3355
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 3345
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3346
    const-string v0, "video/mp4"

    .line 3348
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 582
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 583
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0c009b

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 586
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private delayedOnResume()V
    .locals 5

    .prologue
    .line 1647
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1649
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1650
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1651
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1652
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1653
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1654
    new-instance v1, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1655
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1657
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/hwcamera/VideoCamera$5;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/VideoCamera$5;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1663
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1664
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V

    .line 1666
    :cond_0
    return-void
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2266
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2267
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 2268
    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2269
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2270
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2271
    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2275
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowCurrentStorageHint()V

    .line 2277
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 2280
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2282
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2283
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 2009
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2011
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 2012
    const/4 v0, -0x1

    .line 2013
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2017
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->setResult(ILandroid/content/Intent;)V

    .line 2018
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->finish()V

    .line 2019
    return-void

    .line 2015
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private doSwitchCamera()V
    .locals 2

    .prologue
    .line 2291
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 2292
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 2293
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 2294
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showAlert()V

    .line 2300
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 2302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    .line 2304
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2305
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2307
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 2308
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2309
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    .line 2311
    const-string v0, "videocamera"

    const-string v1, "[Flow] Camera switched !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2313
    return-void

    .line 2296
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getThumbnail()V

    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 3025
    const/4 v0, 0x0

    return v0
.end method

.method private ensureCameraDevice()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    .line 1740
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraHolder;->open(I)Lcom/android/hwcamera/HwCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 1741
    const-string v0, "videocamera"

    const-string v1, "[Flow] camera open!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_0
    return-void
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/hwcamera/PreferenceGroup;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 2
    .parameter "screen"

    .prologue
    .line 2387
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2388
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2389
    const-string v1, "pref_camera_videosize_key"

    invoke-static {p1, v1}, Lcom/android/hwcamera/CameraSettings;->removePreferenceFromScreen(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V

    .line 2393
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2394
    const-string v1, "pref_camera_videosize_key"

    invoke-static {p1, v1}, Lcom/android/hwcamera/CameraSettings;->removePreferenceFromScreen(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V

    .line 2397
    :cond_1
    return-object p1
.end method

.method private finishRecorderAndCloseCamera()V
    .locals 1

    .prologue
    .line 1748
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 1749
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1750
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 1751
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showAlert()V

    .line 1759
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 1760
    return-void

    .line 1753
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 1754
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getThumbnail()V

    goto :goto_0

    .line 1757
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    goto :goto_0
.end method

.method private flashModeInit()V
    .locals 3

    .prologue
    .line 974
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 975
    .local v0, flashModeRotateImage:Lcom/android/hwcamera/RotateImageView;
    new-instance v1, Lcom/android/hwcamera/hwui/FlashImageView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/hwcamera/hwui/FlashImageView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    .line 976
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 978
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v1, p0}, Lcom/android/hwcamera/hwui/FlashImageView;->setFlashMocdChangeListener(Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;)V

    .line 981
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    if-eqz v1, :cond_0

    .line 982
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 983
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    .line 986
    :cond_0
    return-void
.end method

.method private flashModeUpdate()V
    .locals 2

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    if-nez v0, :cond_0

    .line 991
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 997
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 996
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    goto :goto_0
.end method

.method private galleryExClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1078
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 1079
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 1082
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setControlBarVisibility(I)V

    .line 1083
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setSuperPanelVisibility(I)V

    .line 1084
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V

    .line 1085
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    return-void
.end method

.method private galleryExEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1064
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 1065
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExHorScroll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    .line 1067
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1068
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExHorScroll:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1075
    :goto_0
    return-void

    .line 1070
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setControlBarVisibility(I)V

    .line 1071
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setSuperPanelVisibility(I)V

    .line 1072
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V

    .line 1073
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private galleryExInit()V
    .locals 5

    .prologue
    .line 1042
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoCamera;->setSuperPanelVisibility(I)V

    .line 1043
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsGalleryExViewAdd:Z

    if-nez v3, :cond_0

    .line 1044
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsGalleryExViewAdd:Z

    .line 1045
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1046
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1047
    .local v2, rootView:Landroid/view/ViewGroup;
    new-instance v3, Lcom/android/hwcamera/hwui/GalleryEx;

    const v4, 0x7f030007

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/hwcamera/hwui/GalleryEx;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    .line 1048
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 1049
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getRotateLinearLayout()Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 1050
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExHorScroll:Landroid/view/View;

    .line 1051
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    .line 1055
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #rootView:Landroid/view/ViewGroup;
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 1056
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 1057
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExKEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->init(Ljava/lang/String;)V

    .line 1058
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget v4, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 1059
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1060
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1061
    return-void

    .line 1053
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private galleryExStart(Ljava/lang/String;)V
    .locals 3
    .parameter "strKEY"

    .prologue
    const/4 v2, 0x1

    .line 1028
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExKEY:Ljava/lang/String;

    .line 1029
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 1030
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mControlBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mControlBar:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1039
    :cond_2
    return-void
.end method

.method private generateVideoFilename(I)V
    .locals 12
    .parameter "outputFileFormat"

    .prologue
    .line 2198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2199
    .local v0, dateTaken:J
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v7

    .line 2201
    .local v7, title:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2202
    .local v4, filename:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v6

    .line 2204
    .local v6, mime:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2205
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2206
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    .end local v2           #dir:Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 2212
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2213
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "title"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2216
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "mime_type"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_data"

    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2219
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v8, :cond_1

    .line 2220
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    :cond_1
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v8}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 2225
    .local v5, loc:Landroid/location/Location;
    if-eqz v5, :cond_2

    iget-boolean v8, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    if-eqz v8, :cond_2

    .line 2226
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "latitude"

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2227
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "longitude"

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2230
    .end local v5           #loc:Landroid/location/Location;
    :cond_2
    const-string v8, "videocamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    return-void

    .line 2208
    :catch_0
    move-exception v3

    .line 2209
    .local v3, error:Ljava/lang/Exception;
    const-string v8, "videocamera"

    const-string v9, "make camera path dir error!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getThumbnail()V
    .locals 4

    .prologue
    .line 2738
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2739
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2741
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2742
    new-instance v1, Lcom/android/hwcamera/Thumbnail;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/hwcamera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 2743
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2746
    .end local v0           #videoFrame:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 2783
    long-to-double v2, p1

    iget v4, p0, Lcom/android/hwcamera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2784
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private getTotalRecordingTime()J
    .locals 11

    .prologue
    .line 3262
    :try_start_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v6

    .line 3263
    .local v6, storageDirectory:Ljava/lang/String;
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3264
    .local v5, stat:Landroid/os/StatFs;
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->audioBitRate:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    const v8, 0x3f88f5c3

    mul-float/2addr v7, v8

    float-to-long v7, v7

    const-wide/16 v9, 0x8

    div-long v0, v7, v9

    .line 3265
    .local v0, bitRate:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v7, v9

    div-long v3, v7, v0

    .line 3266
    .local v3, remaining:J
    const-string v7, "videocamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recording time videoBitRate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " audioBitRate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bitrate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    const-string v7, "videocamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recording time stat.getAvailableBlocks() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getBlockSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    const-string v7, "videocamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recording time remaining time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3277
    .end local v0           #bitRate:J
    .end local v3           #remaining:J
    .end local v5           #stat:Landroid/os/StatFs;
    .end local v6           #storageDirectory:Ljava/lang/String;
    :goto_0
    return-wide v3

    .line 3272
    :catch_0
    move-exception v2

    .line 3276
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "videocamera"

    const-string v8, "Fail to access sdcard"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3277
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method private getZoomRatios()[F
    .locals 6

    .prologue
    .line 816
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 822
    :cond_0
    return-object v2

    .line 817
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 818
    .local v3, zoomRatios:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [F

    .line 819
    .local v2, result:[F
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 820
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    aput v4, v2, v0

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hideAlert()V
    .locals 2

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2633
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 2634
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2635
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    if-nez v0, :cond_0

    .line 2636
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 2637
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2640
    :cond_0
    return-void
.end method

.method private initThumbnailButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2749
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    .line 2750
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->enableFilter(Z)V

    .line 2751
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 2753
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "last_video_thumb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/hwcamera/Thumbnail;->loadFrom(Ljava/io/File;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 2754
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3476
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 3477
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3479
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3480
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mFocusAreaSupported:Z

    .line 3481
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMeteringAreaSupported:Z

    .line 3482
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mAeLockSupported:Z

    .line 3483
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mAwbLockSupported:Z

    .line 3493
    :goto_0
    return-void

    .line 3487
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusAreaSupported:Z

    .line 3490
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mMeteringAreaSupported:Z

    .line 3491
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mAeLockSupported:Z

    .line 3492
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mAwbLockSupported:Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3487
    goto :goto_1

    :cond_2
    move v1, v2

    .line 3490
    goto :goto_2
.end method

.method private initializeFeatures(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "cr"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "ro.config.hw_videocamera_caf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

    .line 797
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_videocamera_touchfocus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsTouchFocusNeeded:Z

    .line 799
    return-void
.end method

.method private initializeHeadUpDisplay()V
    .locals 7

    .prologue
    const v6, 0x7f080006

    .line 937
    new-instance v1, Lcom/android/hwcamera/CameraSettings;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/hwcamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 939
    .local v1, settings:Lcom/android/hwcamera/CameraSettings;
    const v3, 0x7f050001

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/CameraSettings;->getPreferenceGroup(I)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 940
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v3, :cond_0

    .line 941
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoCamera;->filterPreferenceScreenByIntent(Lcom/android/hwcamera/PreferenceGroup;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 943
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->superPanelInit()V

    .line 944
    const v3, 0x7f080012

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 945
    .local v2, videoRootView:Landroid/view/ViewGroup;
    new-instance v3, Lcom/android/hwcamera/hwui/Review;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v2, v4}, Lcom/android/hwcamera/hwui/Review;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    .line 946
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/Review;->setVideoState(Z)V

    .line 947
    const v3, 0x7f080095

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 950
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 952
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeCapabilities()V

    .line 956
    const/4 v0, 0x1

    .line 957
    .local v0, enforceAudible:Z
    const-string v3, "ro.camera.sound.forced"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 958
    const/4 v0, 0x0

    .line 960
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3, p0, v0}, Lcom/android/hwcamera/FocusManager;->initializeSoundPlayer(Landroid/content/Context;Z)V

    .line 961
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 962
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarHeight:I

    .line 969
    .end local v0           #enforceAudible:Z
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getZoomRatios()[F

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mZoomRatios:[F

    .line 970
    return-void

    .line 964
    .restart local v0       #enforceAudible:Z
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarHeight:I

    goto :goto_0
.end method

.method private initializeRecorder()V
    .locals 20

    .prologue
    .line 2035
    const-string v15, "videocamera"

    const-string v16, "initializeRecorder"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v15, :cond_0

    .line 2156
    :goto_0
    return-void

    .line 2039
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v15, :cond_1

    .line 2040
    const-string v15, "videocamera"

    const-string v16, "Surface holder is null. Wait for surface changed."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2044
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 2045
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 2047
    .local v10, myExtras:Landroid/os/Bundle;
    const-wide/16 v11, 0x0

    .line 2048
    .local v11, requestedSizeLimit:J
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoCamera;->closeVideoFileDescriptor()V

    .line 2049
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v15, :cond_3

    if-eqz v10, :cond_3

    .line 2050
    const-string v15, "output"

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 2051
    .local v14, saveUri:Landroid/net/Uri;
    if-eqz v14, :cond_2

    .line 2053
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "rw"

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2055
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2061
    :cond_2
    :goto_1
    const-string v15, "android.intent.extra.sizeLimit"

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 2064
    .end local v14           #saveUri:Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoCamera;->IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

    if-nez v15, :cond_4

    .line 2065
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/hwcamera/VideoCamera;->setCafEnable(Z)V

    .line 2068
    :cond_4
    new-instance v15, Landroid/media/MediaRecorder;

    invoke-direct {v15}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2071
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v15}, Lcom/android/hwcamera/HwCamera;->unlock()V

    .line 2072
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/hwcamera/HwCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 2073
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v15, :cond_5

    .line 2074
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2076
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 2078
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v15, :cond_6

    .line 2079
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v16, 0x408f400000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 2082
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v15, :cond_7

    .line 2084
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2089
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2092
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v15}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 2093
    .local v7, loc:Landroid/location/Location;
    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    if-eqz v15, :cond_8

    .line 2094
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v15

    double-to-float v15, v15

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/hwcamera/Util;->setLocation(FF)V

    .line 2099
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v15, :cond_b

    .line 2100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 2106
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2110
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    const-wide/32 v17, 0x300000

    add-long v15, v15, v17

    const-wide/32 v17, 0x1400000

    sub-long v8, v15, v17

    .line 2112
    .local v8, maxFileSize:J
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-lez v15, :cond_c

    cmp-long v15, v11, v8

    if-gez v15, :cond_c

    .line 2113
    move-wide v8, v11

    .line 2121
    :cond_9
    :goto_3
    :try_start_2
    const-string v15, "videocamera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "maxFileSize : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v15, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2135
    :goto_4
    const/4 v13, 0x0

    .line 2136
    .local v13, rotation:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    .line 2137
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    move/from16 v16, v0

    aget-object v5, v15, v16

    .line 2138
    .local v5, info:Landroid/hardware/Camera$CameraInfo;
    iget v15, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 2139
    iget v15, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/lit16 v15, v15, 0x168

    rem-int/lit16 v13, v15, 0x168

    .line 2144
    .end local v5           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v15, v13}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2147
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v15}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2154
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 2056
    .end local v7           #loc:Landroid/location/Location;
    .end local v8           #maxFileSize:J
    .end local v13           #rotation:I
    .restart local v14       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 2058
    .local v3, ex:Ljava/io/FileNotFoundException;
    const-string v15, "videocamera"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2085
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    .end local v14           #saveUri:Landroid/net/Uri;
    :catch_1
    move-exception v4

    .line 2086
    .local v4, exception:Ljava/lang/RuntimeException;
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    goto/16 :goto_0

    .line 2102
    .end local v4           #exception:Ljava/lang/RuntimeException;
    .restart local v7       #loc:Landroid/location/Location;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->fileFormat:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/hwcamera/VideoCamera;->generateVideoFilename(I)V

    .line 2103
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2114
    .restart local v8       #maxFileSize:J
    :cond_c
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 2115
    const-wide/32 v15, 0x445c0

    cmp-long v15, v15, v8

    if-gez v15, :cond_9

    .line 2116
    const-wide/32 v8, 0x445c0

    goto/16 :goto_3

    .line 2141
    .restart local v5       #info:Landroid/hardware/Camera$CameraInfo;
    .restart local v13       #rotation:I
    :cond_d
    iget v15, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    move/from16 v16, v0

    add-int v15, v15, v16

    rem-int/lit16 v13, v15, 0x168

    goto :goto_5

    .line 2148
    .end local v5           #info:Landroid/hardware/Camera$CameraInfo;
    :catch_2
    move-exception v2

    .line 2149
    .local v2, e:Ljava/io/IOException;
    const-string v15, "videocamera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "prepare failed for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2150
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    .line 2151
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 2123
    .end local v2           #e:Ljava/io/IOException;
    .end local v13           #rotation:I
    :catch_3
    move-exception v15

    goto/16 :goto_4
.end method

.method private initializeZoom()V
    .locals 6

    .prologue
    .line 802
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-zoom-support"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, zoomStr:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 804
    .local v2, zoomSupported:Z
    if-nez v2, :cond_0

    .line 813
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    .line 807
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max zoom="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-smooth-zoom-support"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, zoomSmooth:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    .line 810
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smooth zoom supported="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mZoomListener:Lcom/android/hwcamera/VideoCamera$ZoomListener;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
.end method

.method private isFrontCamera()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3450
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    aget-object v0, v2, v3

    .line 3451
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v1, :cond_0

    .line 3454
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isStorageSpaceEnough()Z
    .locals 4

    .prologue
    .line 2423
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowCurrentStorageHint()V

    .line 2426
    invoke-static {}, Lcom/android/hwcamera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    .line 2427
    iget-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2428
    const/4 v0, 0x0

    .line 2430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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

    .line 2830
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

.method private isTouchFocusNeeded()Z
    .locals 1

    .prologue
    .line 3458
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsTouchFocusNeeded:Z

    return v0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2005
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isZooming()Z
    .locals 3

    .prologue
    .line 863
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZooming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2734
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2735
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2727
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2728
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2729
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2730
    return-void
.end method

.method private makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-nez v0, :cond_0

    .line 1526
    invoke-static {p0, p1, p2}, Lcom/android/hwcamera/hwui/RotateToast;->makeRotateText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 1531
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateToast;->setOrientationEx(I)V

    .line 1532
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->show()V

    .line 1533
    return-void

    .line 1528
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 1529
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/hwui/RotateToast;->setDuration(I)V

    goto :goto_0
.end method

.method private onSharedPreferencesChanged()V
    .locals 5

    .prologue
    .line 3030
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v2, :cond_0

    .line 3049
    :goto_0
    return-void

    .line 3031
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    monitor-enter v3

    .line 3032
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 3035
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 3048
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3037
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_video_gps_key"

    invoke-static {v2, v4}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 3039
    .local v1, recordLocation:Z
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 3042
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v2}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 3043
    .local v0, cameraId:I
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    if-eq v2, v0, :cond_2

    .line 3044
    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->switchCameraId(I)V

    .line 3048
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 3046
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resetCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private onStopVideoRecording(Z)V
    .locals 2
    .parameter "valid"

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 1280
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 1281
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mQuickCapture:Z

    if-eqz v0, :cond_1

    .line 1282
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->doReturnToCaller(Z)V

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showAlert()V

    goto :goto_0

    .line 1287
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getThumbnail()V

    .line 1290
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1292
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showVideoFrame()V

    .line 1293
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    if-eqz v0, :cond_0

    .line 1294
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 1295
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private readVideoPreferences()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1537
    iget v7, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v7}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v0

    .line 1538
    .local v0, defaultQuality:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v8, "pref_video_quality_key"

    invoke-virtual {v7, v8, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1541
    .local v6, videoQuality:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1543
    .local v3, quality:I
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1544
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1545
    const-string v7, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1547
    .local v1, extraVideoQuality:I
    if-nez v1, :cond_2

    .line 1548
    const/4 v3, 0x0

    .line 1549
    iput-boolean v10, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    .line 1555
    .end local v1           #extraVideoQuality:I
    :cond_0
    :goto_0
    const-string v7, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1556
    const-string v7, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1558
    .local v4, seconds:I
    mul-int/lit16 v7, v4, 0x3e8

    iput v7, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 1562
    .end local v4           #seconds:I
    :goto_1
    iget v7, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v7, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v7

    iput-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 1565
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setBitrateAsSetted()V

    .line 1567
    iget v7, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    if-ne v7, v10, :cond_1

    .line 1568
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const/16 v8, 0x1e

    iput v8, v7, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1571
    :cond_1
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v8, "pref_videocamera_review_key"

    const v9, 0x7f0c00fa

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1573
    .local v5, strTime:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    .line 1574
    return-void

    .line 1551
    .end local v5           #strTime:Ljava/lang/String;
    .restart local v1       #extraVideoQuality:I
    :cond_2
    const/4 v3, 0x1

    .line 1552
    iput-boolean v9, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    goto :goto_0

    .line 1560
    .end local v1           #extraVideoQuality:I
    :cond_3
    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->getVidoeDurationInMillis(I)I

    move-result v7

    iput v7, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    goto :goto_1
.end method

.method private releaseMediaRecorder()V
    .locals 2

    .prologue
    .line 2159
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 2161
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->cleanupEmptyFile()V

    .line 2162
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 2163
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2168
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->lock()V

    .line 2171
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

    if-nez v0, :cond_2

    .line 2172
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setCafEnable(Z)V

    .line 2176
    :cond_2
    return-void
.end method

.method private resetCameraParameters()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3004
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3005
    .local v0, size:Landroid/hardware/Camera$Size;
    const/4 v1, 0x1

    .line 3006
    .local v1, sizeChanged:Z
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v4, :cond_2

    .line 3007
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v4, v5, :cond_0

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-eq v4, v5, :cond_1

    :cond_0
    move v1, v3

    .line 3012
    :goto_0
    if-eqz v1, :cond_5

    .line 3015
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 3016
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 3017
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    .line 3021
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 3007
    goto :goto_0

    .line 3010
    :cond_2
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, p0, Lcom/android/hwcamera/VideoCamera;->mVideoWidth:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget v5, p0, Lcom/android/hwcamera/VideoCamera;->mVideoHeight:I

    if-eq v4, v5, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    .line 3019
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setCameraParameters()V

    goto :goto_1
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2723
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2724
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1583
    :goto_0
    return-void

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoHeight:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mVideoWidth:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private restartPreview()Z
    .locals 2

    .prologue
    .line 598
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPreview()V
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showCameraErrorAndFinish()V

    .line 601
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restoreParameterToDefault()V
    .locals 3

    .prologue
    .line 3086
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->flashModeUpdate()V

    .line 3087
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V

    .line 3089
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_tag"

    const-string v2, "videotag"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    return-void
.end method

.method private restorePreferences()V
    .locals 5

    .prologue
    .line 3095
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v2, :cond_0

    .line 3121
    :goto_0
    return-void

    .line 3099
    :cond_0
    new-instance v1, Lcom/android/hwcamera/VideoCamera$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoCamera$7;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    .line 3110
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_1

    .line 3111
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 3113
    :cond_1
    new-instance v2, Lcom/android/hwcamera/hwui/RotateDailog;

    const v3, 0x7f0c000c

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/hwcamera/hwui/RotateDailog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    .line 3117
    const v2, 0x7f080013

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3118
    .local v0, rootView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/hwui/RotateDailog;->setParentView(Landroid/view/View;)V

    .line 3119
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/RotateDailog;->createPopupWindowEx()V

    .line 3120
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    goto :goto_0
.end method

.method public static roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1107
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private saveLocationInit()V
    .locals 5

    .prologue
    .line 914
    invoke-static {p0}, Lcom/android/hwcamera/Storage;->saveLocationInit(Landroid/content/Context;)V

    .line 916
    invoke-static {}, Lcom/android/hwcamera/Storage;->isInternalStorageExist()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    .line 918
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    if-nez v2, :cond_0

    .line 919
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 920
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_save_location_key"

    const-string v3, "memoryscard"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 921
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 922
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 934
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_save_location_key"

    const v4, 0x7f0c00d4

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, saveLocationValue:Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 930
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_0

    .line 932
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_0
.end method

.method private seconds2Hours(J)Ljava/lang/String;
    .locals 15
    .parameter "seconds"

    .prologue
    .line 3282
    const-wide/16 v13, 0x3c

    div-long v3, p1, v13

    .line 3283
    .local v3, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v3, v13

    .line 3284
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v3, v13

    .line 3285
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v3

    sub-long v8, p1, v13

    .line 3287
    .local v8, remainderSeconds:J
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 3288
    .local v10, secondsString:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_0

    .line 3289
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3292
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 3293
    .local v5, minutesString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_1

    .line 3294
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3296
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3297
    .local v11, totaltext:Ljava/lang/String;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_4

    .line 3298
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 3299
    .local v2, hoursString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_2

    .line 3300
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3303
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_3

    .line 3304
    const-string v11, "99:59:59"

    move-object v12, v11

    .line 3309
    .end local v2           #hoursString:Ljava/lang/String;
    .end local v11           #totaltext:Ljava/lang/String;
    .local v12, totaltext:Ljava/lang/String;
    :goto_0
    return-object v12

    .line 3307
    .end local v12           #totaltext:Ljava/lang/String;
    .restart local v2       #hoursString:Ljava/lang/String;
    .restart local v11       #totaltext:Ljava/lang/String;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v2           #hoursString:Ljava/lang/String;
    :cond_4
    move-object v12, v11

    .line 3309
    .end local v11           #totaltext:Ljava/lang/String;
    .restart local v12       #totaltext:Ljava/lang/String;
    goto :goto_0
.end method

.method private setBitrateAsSetted()V
    .locals 5

    .prologue
    .line 3574
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "hw_video_qulity_level"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3575
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_quality_level_key"

    const v3, 0x7f0c0021

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3577
    .local v0, qualityLevelValue:Ljava/lang/String;
    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3578
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    sget-object v1, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 3585
    .end local v0           #qualityLevelValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3580
    .restart local v0       #qualityLevelValue:Ljava/lang/String;
    :cond_1
    const-string v1, "fine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3581
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    sget-object v1, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0
.end method

.method private setCafEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 2185
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 2186
    .local v0, supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2187
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->cancelAutoFocus()V

    .line 2188
    if-eqz p1, :cond_1

    .line 2189
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2193
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2195
    :cond_0
    return-void

    .line 2191
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 22

    .prologue
    .line 2838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewWidth:I

    .line 2841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewHeight:I

    .line 2848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2854
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2855
    .local v13, videoSize:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-size"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "videoSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2860
    .local v8, previewSize:Ljava/lang/String;
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "previewSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoCamera;->setBitrateAsSetted()V

    .line 2867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_camera_video_flashmode_key"

    const v21, 0x7f0c0048

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2869
    .local v6, flashMode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v11

    .line 2870
    .local v11, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6, v11}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 2871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2881
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_video_coloreffect_key"

    const v21, 0x7f0c0050

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2883
    .local v4, colorEffect:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2887
    :cond_1
    const v19, 0x7f0c0049

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2888
    .local v16, whiteBalance:Ljava/lang/String;
    const-string v19, "none"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_video_whitebalance_key"

    const v21, 0x7f0c0049

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2892
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2901
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_video_distortion_key"

    const v21, 0x7f0c00f0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2903
    .local v5, distorvalue:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/hwcamera/Util;->setDistortionValue(Ljava/lang/String;)V

    .line 2906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v12

    .line 2907
    .local v12, supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "continuous-video"

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "continuous-video"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2911
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-zoom-support"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2912
    .local v17, zoomStr:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    .line 2913
    .local v18, zoomSupported:Z
    if-eqz v18, :cond_5

    .line 2914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2917
    :cond_5
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "recording-hint"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2919
    .local v9, recordhintValue:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2923
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-stabilization-supported"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2924
    .local v14, vstabSupported:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_camera_steady_video_key"

    const v21, 0x7f0c00e6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2927
    .local v15, vstabValue:Ljava/lang/String;
    const-string v19, "on"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 2928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-stabilization"

    const-string v21, "true"

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    .end local v9           #recordhintValue:Ljava/lang/String;
    .end local v14           #vstabSupported:Ljava/lang/String;
    .end local v15           #vstabValue:Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_camera_picturesize_key"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2938
    .local v7, pictureSize:Ljava/lang/String;
    if-nez v7, :cond_c

    .line 2939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V

    .line 2945
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_video_antibanding_key"

    const v21, 0x7f0c0124

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2947
    .local v3, antibanding:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 2948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2950
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2953
    return-void

    .line 2873
    .end local v3           #antibanding:Ljava/lang/String;
    .end local v4           #colorEffect:Ljava/lang/String;
    .end local v5           #distorvalue:Ljava/lang/String;
    .end local v7           #pictureSize:Ljava/lang/String;
    .end local v12           #supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #whiteBalance:Ljava/lang/String;
    .end local v17           #zoomStr:Ljava/lang/String;
    .end local v18           #zoomSupported:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v6

    .line 2874
    if-nez v6, :cond_0

    .line 2875
    const v19, 0x7f0c0043

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 2895
    .restart local v4       #colorEffect:Ljava/lang/String;
    .restart local v16       #whiteBalance:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v16

    .line 2896
    if-nez v16, :cond_3

    .line 2897
    const-string v16, "auto"

    goto/16 :goto_1

    .line 2930
    .restart local v5       #distorvalue:Ljava/lang/String;
    .restart local v9       #recordhintValue:Ljava/lang/String;
    .restart local v12       #supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14       #vstabSupported:Ljava/lang/String;
    .restart local v15       #vstabValue:Ljava/lang/String;
    .restart local v17       #zoomStr:Ljava/lang/String;
    .restart local v18       #zoomSupported:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-stabilization"

    const-string v21, "false"

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2941
    .end local v9           #recordhintValue:Ljava/lang/String;
    .end local v14           #vstabSupported:Ljava/lang/String;
    .end local v15           #vstabValue:Ljava/lang/String;
    .restart local v7       #pictureSize:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v10

    .line 2942
    .local v10, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v7, v10, v0}, Lcom/android/hwcamera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_3
.end method

.method private setCameraUIButControlBar(I)V
    .locals 2
    .parameter "visiable"

    .prologue
    const/4 v1, 0x0

    .line 1301
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setVisibility(I)V

    .line 1302
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->dissmissPopWindowNoAni()V

    .line 1305
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 1308
    :cond_0
    return-void
.end method

.method private setControlBarVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1089
    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1090
    .local v0, controlBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    :cond_0
    return-void
.end method

.method private setFlashSwitchIconVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1095
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1096
    .local v0, flashSwitchIcon:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    :cond_0
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/Review;->setOrientationEx(I)V

    .line 1186
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 1187
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 1188
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 1189
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 1192
    :cond_1
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_5

    .line 1193
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 1194
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 1196
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_2

    .line 1197
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOrientationEx(I)V

    .line 1199
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_3

    .line 1200
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 1203
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    if-eqz v0, :cond_4

    .line 1204
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 1206
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1207
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 1210
    :cond_5
    return-void
.end method

.method private setOrientationVidoInvokeAfterCapture(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/16 v5, 0x5e

    .line 1145
    const v4, 0x7f080098

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 1146
    .local v2, rotateLineayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    if-nez v2, :cond_0

    .line 1179
    :goto_0
    return-void

    .line 1149
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1150
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1151
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1152
    .local v1, height:I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1154
    .local v3, width:I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1169
    :sswitch_0
    invoke-virtual {v2, v3, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 1170
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 1163
    :sswitch_1
    invoke-virtual {v2, v1, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 1164
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 1154
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 1670
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1682
    :goto_0
    return-void

    .line 1676
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/HwCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 1680
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setSuperPanelVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setHandleVisiable(I)V

    .line 1104
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2582
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showVideoFrame()V

    .line 2583
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    if-eqz v3, :cond_1

    .line 2584
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    if-eqz v3, :cond_0

    .line 2585
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    .line 2587
    :cond_0
    const v3, 0x7f080007

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 2588
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2589
    .local v2, videoRootView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2590
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03001f

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2591
    .local v1, videoInvokeBarPort:Landroid/view/View;
    const v3, 0x7f080099

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2592
    const v3, 0x7f08009a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2593
    const v3, 0x7f08009b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2594
    const v3, 0x7f08009c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2595
    const v3, 0x7f080098

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2596
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 2597
    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoCamera;->setOrientationVidoInvokeAfterCapture(I)V

    .line 2599
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #videoInvokeBarPort:Landroid/view/View;
    .end local v2           #videoRootView:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private showCameraErrorAndFinish()V
    .locals 3

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 591
    .local v0, ress:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/hwcamera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method private showConfirmGpsDialog()V
    .locals 3

    .prologue
    .line 3125
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const-string v2, "pref_video_gps_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setKey(Ljava/lang/String;)V

    .line 3126
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 3127
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3128
    .local v0, cameraRootView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/GPSDailog;->creatGpsDialogBox(Landroid/view/ViewGroup;)V

    .line 3129
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 3130
    return-void
.end method

.method private showEulaDialog()V
    .locals 4

    .prologue
    .line 3133
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 3134
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3135
    .local v0, cameraRootView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    new-instance v2, Lcom/android/hwcamera/VideoCamera$8;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/VideoCamera$8;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    const-string v3, "pref_video_gps_key"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/hwcamera/hwui/GPSDailog;->creatFirstTimeDialogBox(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3153
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 3154
    return-void
.end method

.method private showPhoneStorageHint(J)V
    .locals 7
    .parameter "internalCardAvailableSpace"

    .prologue
    .line 1488
    const/4 v2, 0x0

    .line 1489
    .local v2, isSDCardAvailable:Z
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    .line 1490
    .local v0, SDCardStorageSpace:J
    const-wide/32 v5, 0x1400000

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 1491
    const/4 v2, 0x1

    .line 1494
    :cond_0
    const/4 v3, 0x0

    .line 1495
    .local v3, isStorageChange:Z
    const/4 v4, 0x0

    .line 1496
    .local v4, toastText:Ljava/lang/String;
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-nez v5, :cond_3

    .line 1498
    const/4 v3, 0x0

    .line 1499
    const v5, 0x7f0c011c

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1515
    :goto_0
    if-eqz v4, :cond_1

    .line 1516
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    .line 1519
    :cond_1
    if-eqz v3, :cond_2

    .line 1520
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 1522
    :cond_2
    return-void

    .line 1500
    :cond_3
    const-wide/16 v5, -0x2

    cmp-long v5, v0, v5

    if-nez v5, :cond_4

    .line 1502
    const/4 v3, 0x0

    .line 1503
    const v5, 0x7f0c011e

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1506
    :cond_4
    if-eqz v2, :cond_5

    .line 1507
    const/4 v3, 0x1

    .line 1508
    const v5, 0x7f0c0121

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1510
    :cond_5
    const/4 v3, 0x0

    .line 1511
    const v5, 0x7f0c0120

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private showRecordingTime(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    const/16 v7, 0x5a

    const/4 v3, -0x1

    const v6, 0x3f19999a

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 2512
    const v2, 0x7f080006

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2514
    .local v1, mControlBarHeight:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2515
    if-ne p1, v3, :cond_0

    .line 2516
    const/4 p1, 0x0

    .line 2519
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    invoke-virtual {v2, p1}, Lcom/android/hwcamera/hwui/RotateLayout;->setOrientation(I)V

    .line 2523
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2525
    .local v0, heightRatioWidth:F
    cmpl-float v2, v0, v5

    if-lez v2, :cond_3

    cmpl-float v2, v6, v0

    if-ltz v2, :cond_3

    .line 2530
    if-ne p1, v7, :cond_1

    .line 2531
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2568
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2569
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/hwui/RotateLayout;->setVisibility(I)V

    .line 2570
    return-void

    .line 2532
    :cond_1
    const/16 v2, 0xb4

    if-ne p1, v2, :cond_2

    .line 2533
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 2535
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 2538
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 2541
    .end local v0           #heightRatioWidth:F
    :cond_4
    if-ne p1, v3, :cond_5

    .line 2542
    const/16 p1, 0x10e

    .line 2545
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    invoke-virtual {v2, p1}, Lcom/android/hwcamera/hwui/RotateLayout;->setOrientation(I)V

    .line 2549
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2551
    .restart local v0       #heightRatioWidth:F
    cmpl-float v2, v0, v5

    if-lez v2, :cond_8

    cmpl-float v2, v6, v0

    if-ltz v2, :cond_8

    .line 2556
    if-nez p1, :cond_6

    .line 2557
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 2558
    :cond_6
    if-ne p1, v7, :cond_7

    .line 2559
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 2561
    :cond_7
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 2564
    :cond_8
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private showSDCardStorageHint(J)V
    .locals 13
    .parameter "SDCardAvailableSpace"

    .prologue
    const-wide/16 v11, -0x1

    const-wide/16 v9, -0x2

    const/4 v8, 0x0

    .line 1424
    iget-boolean v6, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    if-nez v6, :cond_3

    .line 1425
    const/4 v4, 0x0

    .line 1426
    .local v4, toastContent:Ljava/lang/String;
    cmp-long v6, p1, v11

    if-nez v6, :cond_1

    .line 1428
    const v6, 0x7f0c0009

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1436
    :goto_0
    invoke-direct {p0, v4, v8}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    .line 1485
    .end local v4           #toastContent:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1429
    .restart local v4       #toastContent:Ljava/lang/String;
    :cond_1
    cmp-long v6, p1, v9

    if-nez v6, :cond_2

    .line 1431
    const v6, 0x7f0c000b

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1434
    :cond_2
    const v6, 0x7f0c000a

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1441
    .end local v4           #toastContent:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 1442
    .local v3, isPhoneAvalilable:Z
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    .line 1443
    .local v0, InternalStorageSpace:J
    const-wide/32 v6, 0x1400000

    cmp-long v6, v0, v6

    if-lez v6, :cond_4

    .line 1444
    const/4 v3, 0x1

    .line 1447
    :cond_4
    const/4 v2, 0x0

    .line 1448
    .local v2, isChangeStorage:Z
    const/4 v5, 0x0

    .line 1449
    .local v5, toastText:Ljava/lang/String;
    cmp-long v6, p1, v11

    if-nez v6, :cond_7

    .line 1451
    if-eqz v3, :cond_6

    .line 1452
    const/4 v2, 0x1

    .line 1453
    const v6, 0x7f0c011b

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1478
    :goto_2
    if-eqz v5, :cond_5

    .line 1479
    invoke-direct {p0, v5, v8}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    .line 1482
    :cond_5
    if-eqz v2, :cond_0

    .line 1483
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_1

    .line 1455
    :cond_6
    const/4 v2, 0x0

    .line 1456
    const v6, 0x7f0c011c

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1458
    :cond_7
    cmp-long v6, p1, v9

    if-nez v6, :cond_9

    .line 1460
    if-eqz v3, :cond_8

    .line 1461
    const/4 v2, 0x1

    .line 1462
    const v6, 0x7f0c011d

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1464
    :cond_8
    const/4 v2, 0x0

    .line 1465
    const v6, 0x7f0c011e

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1469
    :cond_9
    if-eqz v3, :cond_a

    .line 1470
    const/4 v2, 0x1

    .line 1471
    const v6, 0x7f0c011f

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1473
    :cond_a
    const/4 v2, 0x0

    .line 1474
    const v6, 0x7f0c0120

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private showStorageHint(ZJ)V
    .locals 0
    .parameter "isSaveToSDCard"
    .parameter "storageAvailableSpace"

    .prologue
    .line 1415
    if-eqz p1, :cond_0

    .line 1416
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/VideoCamera;->showSDCardStorageHint(J)V

    .line 1420
    :goto_0
    return-void

    .line 1418
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/VideoCamera;->showPhoneStorageHint(J)V

    goto :goto_0
.end method

.method private showStorageHintEx(Z)V
    .locals 2
    .parameter "isStorageInSDCard"

    .prologue
    .line 1396
    const/4 v0, 0x0

    .line 1397
    .local v0, storageText:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1398
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return-void

    .line 1401
    :cond_1
    const v1, 0x7f0c0122

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1402
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 1409
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1410
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 1404
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1405
    const v1, 0x7f0c0123

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1406
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_1
.end method

.method private showVideoFrame()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2604
    const/4 v1, 0x0

    .line 2605
    .local v1, src:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2606
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2613
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 2616
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 2617
    .local v0, info:[Landroid/hardware/Camera$CameraInfo;
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    aget-object v2, v0, v2

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_2

    .line 2618
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    neg-int v2, v2

    invoke-static {v1, v2, v4}, Lcom/android/hwcamera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2622
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2623
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2624
    iput-boolean v5, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    .line 2628
    .end local v0           #info:[Landroid/hardware/Camera$CameraInfo;
    :goto_2
    return-void

    .line 2608
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    .line 2609
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 2620
    .restart local v0       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_2
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    neg-int v2, v2

    invoke-static {v1, v2, v5}, Lcom/android/hwcamera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 2626
    .end local v0           #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    goto :goto_2
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 1234
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 1245
    :goto_0
    return-void

    .line 1237
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1238
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    goto :goto_0

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private startPreview()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1685
    const-string v1, "videocamera"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->ensureCameraDevice()V

    .line 1689
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-ne v1, v4, :cond_0

    .line 1690
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->stopPreview()V

    .line 1691
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    .line 1693
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1695
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I

    .line 1696
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayOrientation:I

    .line 1698
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-static {p0, v1, v2}, Lcom/android/hwcamera/Util;->setCameraDisplayOrientation(Landroid/app/Activity;ILcom/android/hwcamera/HwCamera;)V

    .line 1699
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->setFaceOrientation(I)Z

    .line 1700
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setCameraParameters()V

    .line 1703
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->startPreview()V

    .line 1704
    const-string v1, "videocamera"

    const-string v2, "[Flow] Preview started!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    .line 1706
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1713
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    .line 1715
    return-void

    .line 1707
    :catch_0
    move-exception v0

    .line 1708
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 1709
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVideoRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2434
    const-string v1, "videocamera"

    const-string v2, "startVideoRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v1, v3, :cond_0

    .line 2505
    :goto_0
    return-void

    .line 2439
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2440
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    .line 2443
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isStorageSpaceEnough()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2444
    const-string v1, "videocamera"

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2448
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2464
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    if-eq v1, v3, :cond_4

    .line 2465
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 2473
    :cond_4
    invoke-static {p0}, Lcom/android/hwcamera/Util;->pauseAudioPlayback(Landroid/content/Context;)V

    .line 2475
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2497
    :goto_1
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    .line 2498
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingStartTime:J

    .line 2499
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 2501
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->showRecordingTime(I)V

    .line 2503
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateRecordingTime()V

    .line 2504
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOn()V

    goto :goto_0

    .line 2455
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeRecorder()V

    .line 2456
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_3

    .line 2457
    const-string v1, "videocamera"

    const-string v2, "Fail to initialize media recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2485
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 2487
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setCameraUIButControlBar(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2488
    :catch_0
    move-exception v0

    .line 2489
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "videocamera"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2490
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    .line 2492
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->lock()V

    goto :goto_0
.end method

.method private startZoom(Z)V
    .locals 5
    .parameter "inOrOut"

    .prologue
    const/4 v4, 0x0

    .line 827
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isZooming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    if-eqz p1, :cond_3

    .line 832
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    if-gt v1, v2, :cond_2

    .line 833
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    .line 845
    :goto_1
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    if-eqz v1, :cond_5

    .line 846
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->startSmoothZoom(I)V

    .line 847
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    .line 858
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomRatios:[F

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, zoomRatio_down:Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 835
    .end local v0           #zoomRatio_down:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    goto :goto_1

    .line 838
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 839
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    goto :goto_1

    .line 841
    :cond_4
    iput v4, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    goto :goto_1

    .line 849
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 850
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_2
.end method

.method private stopReviewIfNeed()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 549
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 553
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 555
    :cond_0
    return-void
.end method

.method private stopVideoRecording()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2670
    const-string v2, "videocamera"

    const-string v3, "stopVideoRecording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_0

    .line 2672
    const/4 v1, 0x0

    .line 2675
    .local v1, shouldAddToMediaStoreNow:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2687
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2688
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting current video filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2699
    :goto_1
    iput-boolean v6, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    .line 2700
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 2701
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/RotateLayout;->setVisibility(I)V

    .line 2702
    invoke-direct {p0, v6}, Lcom/android/hwcamera/VideoCamera;->setCameraUIButControlBar(I)V

    .line 2705
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setOrientationIndicator(I)V

    .line 2706
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOnAwhile()V

    .line 2709
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2711
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->addVideoToMediaStore()V

    .line 2715
    .end local v1           #shouldAddToMediaStoreNow:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2716
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    .line 2718
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowCurrentStorageHint()V

    .line 2719
    return-void

    .line 2682
    .restart local v1       #shouldAddToMediaStoreNow:Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2683
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2684
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2685
    const/4 v1, 0x1

    goto :goto_0

    .line 2690
    :catch_0
    move-exception v0

    .line 2691
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "videocamera"

    const-string v3, "stop fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2692
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 2694
    :cond_3
    iput-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2695
    iput-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    goto :goto_1
.end method

.method private superPanelInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3052
    const v1, 0x7f080037

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/SuperPanel;

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 3053
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 3054
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoCaptureIntent(Z)V

    .line 3055
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoRecordQuality(Z)V

    .line 3057
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 3058
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 3059
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 3061
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setIsInternalStorageExist(Z)V

    .line 3063
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 3064
    .local v0, popSettings:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->initSettingmenu(Lcom/android/hwcamera/hwui/RotateLinearLayout;)V

    .line 3065
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setCurrentState(Z)V

    .line 3066
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->initVideoSubPanel()V

    .line 3067
    return-void
.end method

.method private switchCameraId(I)V
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v3, 0x0

    .line 2351
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 2383
    :cond_0
    :goto_0
    return-void

    .line 2354
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0}, Lcom/android/hwcamera/RotateImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2355
    const-string v0, "videocamera"

    const-string v1, "switchCameraId too fast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2358
    :cond_2
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] switchCameraId() cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2367
    :cond_3
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    .line 2368
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2370
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    if-eqz v0, :cond_4

    .line 2371
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/FocusManager;->setTouchFocusEnable(Z)V

    .line 2376
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    if-eqz v0, :cond_5

    .line 2377
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 2381
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private switchCameraInit()V
    .locals 2

    .prologue
    .line 1001
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    .line 1002
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 1003
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->switchCameraRefresh()V

    .line 1004
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    new-instance v1, Lcom/android/hwcamera/VideoCamera$4;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoCamera$4;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1013
    return-void
.end method

.method private switchCameraRefresh()V
    .locals 6

    .prologue
    const v5, 0x7f0c0013

    .line 1016
    const v0, 0x7f020082

    .line 1017
    .local v0, switchCameraImageId:I
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_id_key"

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, switchCameraValue:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    const v0, 0x7f020082

    .line 1024
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 1025
    return-void

    .line 1022
    :cond_0
    const v0, 0x7f020083

    goto :goto_0
.end method

.method private switchCameraUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2321
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2322
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_gps_key"

    const-string v3, "off"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_gps_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 2328
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 2330
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeHeadUpDisplay()V

    .line 2332
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    if-eqz v1, :cond_1

    .line 2333
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/FocusManager;->setTouchFocusEnable(Z)V

    .line 2336
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    if-eqz v1, :cond_2

    .line 2337
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 2340
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->flashModeUpdate()V

    .line 2341
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updatesuperpanel()V

    .line 2342
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    if-nez v1, :cond_3

    .line 2343
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f020082

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 2347
    :goto_0
    return-void

    .line 2345
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f020083

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private switchToCameraMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2956
    const-string v2, "videocamera"

    const-string v3, "[Flow] switchToCameraMode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_1

    .line 2972
    :cond_0
    :goto_0
    return v0

    .line 2959
    :cond_1
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-nez v2, :cond_0

    .line 2965
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    if-ne v2, v1, :cond_0

    .line 2970
    :cond_2
    invoke-static {p0}, Lcom/android/hwcamera/MenuHelper;->gotoCameraMode(Landroid/app/Activity;)V

    .line 2971
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->finish()V

    move v0, v1

    .line 2972
    goto :goto_0
.end method

.method private updateAndShowCurrentStorageHint()V
    .locals 7

    .prologue
    .line 1344
    const-wide/16 v1, 0x0

    .line 1345
    .local v1, storageAvailableSpace:J
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v0

    .line 1347
    .local v0, isCurrentSaveToSDCard:Z
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    if-nez v3, :cond_0

    .line 1348
    const/4 v0, 0x1

    .line 1351
    :cond_0
    if-eqz v0, :cond_1

    .line 1352
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v1

    .line 1357
    :goto_0
    const-wide/32 v3, 0x1400000

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 1358
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStorage()(M) :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x100000

    div-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :goto_1
    return-void

    .line 1354
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v1

    goto :goto_0

    .line 1361
    :cond_2
    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/VideoCamera;->showStorageHint(ZJ)V

    goto :goto_1
.end method

.method private updateAndShowStorageHint()V
    .locals 9

    .prologue
    .line 1367
    iget-boolean v5, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    if-nez v5, :cond_0

    .line 1368
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v5}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1369
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_camera_save_location_key"

    const-string v6, "memoryscard"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1370
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1374
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x0

    .line 1375
    .local v1, isPriorSaveToSDCard:Z
    const-wide/16 v3, 0x0

    .line 1376
    .local v3, storageAvailableSpace:J
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v6, "pref_camera_save_location_key"

    const v7, 0x7f0c00d4

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1378
    .local v2, saveLocationValue:Ljava/lang/String;
    const-string v5, "phone"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1379
    const/4 v1, 0x0

    .line 1380
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v3

    .line 1386
    :goto_0
    const-wide/32 v5, 0x1400000

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 1387
    const-string v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkStorage()(M) :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v7, 0x100000

    div-long v7, v3, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->showStorageHintEx(Z)V

    .line 1393
    :goto_1
    return-void

    .line 1382
    :cond_1
    const/4 v1, 0x1

    .line 1383
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v3

    goto :goto_0

    .line 1391
    :cond_2
    invoke-direct {p0, v1, v3, v4}, Lcom/android/hwcamera/VideoCamera;->showStorageHint(ZJ)V

    goto :goto_1
.end method

.method private updateRecordingIndicator(Z)V
    .locals 3
    .parameter "showRecording"

    .prologue
    .line 2574
    if-eqz p1, :cond_0

    const v1, 0x7f020026

    .line 2577
    .local v1, drawableId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2578
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2579
    return-void

    .line 2574
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableId:I
    :cond_0
    const v1, 0x7f020027

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 15

    .prologue
    .line 2788
    iget-boolean v11, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v11, :cond_0

    .line 2827
    :goto_0
    return-void

    .line 2791
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2792
    .local v6, now:J
    iget-wide v11, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingStartTime:J

    sub-long v2, v6, v11

    .line 2796
    .local v2, delta:J
    iget v11, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    if-eqz v11, :cond_2

    iget v11, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    const v12, 0xea60

    sub-int/2addr v11, v12

    int-to-long v11, v11

    cmp-long v11, v2, v11

    if-ltz v11, :cond_2

    const/4 v1, 0x1

    .line 2799
    .local v1, countdownRemainingTime:Z
    :goto_1
    const-wide/16 v11, 0x3e8

    const-wide/16 v13, 0x3e8

    rem-long v13, v2, v13

    sub-long v4, v11, v13

    .line 2801
    .local v4, next_update_delay:J
    if-eqz v1, :cond_3

    .line 2802
    const-wide/16 v11, 0x0

    iget v13, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    int-to-long v13, v13

    sub-long/2addr v13, v2

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2803
    const-wide/16 v11, 0x3e7

    add-long/2addr v11, v2

    const-wide/16 v13, 0x3e8

    div-long v8, v11, v13

    .line 2807
    .local v8, seconds:J
    :goto_2
    iget-boolean v11, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v11, :cond_4

    .line 2808
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getTotalRecordingTime()J

    move-result-wide v11

    invoke-direct {p0, v11, v12}, Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;

    move-result-object v10

    .line 2809
    .local v10, totalRecordingTime:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v8, v9}, Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2814
    .end local v10           #totalRecordingTime:Ljava/lang/String;
    :goto_3
    iget-boolean v11, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v11, v1, :cond_1

    .line 2817
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 2819
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v1, :cond_5

    const v11, 0x7f090001

    :goto_4
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2822
    .local v0, color:I
    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2825
    .end local v0           #color:I
    :cond_1
    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v11, v12, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2796
    .end local v1           #countdownRemainingTime:Z
    .end local v4           #next_update_delay:J
    .end local v8           #seconds:J
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2805
    .restart local v1       #countdownRemainingTime:Z
    .restart local v4       #next_update_delay:J
    :cond_3
    const-wide/16 v11, 0x3e8

    div-long v8, v2, v11

    .restart local v8       #seconds:J
    goto :goto_2

    .line 2811
    :cond_4
    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-direct {p0, v8, v9}, Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2819
    :cond_5
    const/high16 v11, 0x7f09

    goto :goto_4
.end method

.method private updateThumbnailButton()V
    .locals 4

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2761
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2763
    :cond_0
    new-instance v0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/hwcamera/VideoCamera$6;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/VideoCamera$6;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;-><init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->start()V

    .line 2778
    :goto_0
    return-void

    .line 2775
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updatesuperpanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3071
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-nez v0, :cond_0

    .line 3072
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 3075
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_1

    .line 3076
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->set_1080P_videoSize_title(I)V

    .line 3078
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    if-nez v0, :cond_2

    .line 3079
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToBackCamera(Z)V

    .line 3083
    :goto_0
    return-void

    .line 3081
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToFrontCamera(Z)V

    goto :goto_0
.end method

.method private viewLastVideo()V
    .locals 7

    .prologue
    .line 2644
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v5, :cond_0

    .line 2667
    :goto_0
    return-void

    .line 2647
    :cond_0
    const/4 v2, 0x0

    .line 2648
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.cooliris.media.action.REVIEW"

    .line 2649
    .local v4, intentStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v5}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2650
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2651
    const-string v4, "com.android.camera.action.REVIEW"

    .line 2653
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v5}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2655
    .restart local v2       #intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2656
    :catch_0
    move-exception v1

    .line 2658
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v6}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2659
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 2662
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 2660
    :catch_1
    move-exception v0

    .line 2661
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v5, "videocamera"

    const-string v6, "review video fail"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2665
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string v5, "videocamera"

    const-string v6, "Can\'t view last video."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2660
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #ex:Landroid/content/ActivityNotFoundException;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    .prologue
    .line 3498
    const-string v1, "videocamera"

    const-string v2, "video auto focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mAutoFocusCallback:Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3501
    const-string v1, "videocamera"

    const-string v2, "video auto focus finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3506
    :goto_0
    return-void

    .line 3503
    :catch_0
    move-exception v0

    .line 3504
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "videocamera"

    const-string v2, "autoFocus failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelAutoFocus(I)V
    .locals 3
    .parameter "setState"

    .prologue
    .line 3511
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_0

    .line 3512
    const-string v1, "videocamera"

    const-string v2, "mCameraDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    :goto_0
    return-void

    .line 3516
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    .line 3517
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->cancelAutoFocus()V

    .line 3518
    const-string v1, "videocamera"

    const-string v2, "[Flow] cancelSensorAutoFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3519
    :catch_0
    move-exception v0

    .line 3520
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "videocamera"

    const-string v2, "cancelAutoFocus failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 3527
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x1

    .line 868
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-eqz v0, :cond_1

    .line 870
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExEnd()V

    .line 881
    :cond_0
    :goto_0
    return v2

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 874
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    goto :goto_0

    .line 875
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 876
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_0

    .line 877
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0
.end method

.method protected doOnResume()V
    .locals 0

    .prologue
    .line 3341
    return-void
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 3331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    .line 3332
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3333
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3334
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3335
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 3336
    return-void
.end method

.method public isTouchFocusAreaValid(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 3438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 3439
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 3440
    .local v2, y:I
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarHeight:I

    sub-int v0, v3, v4

    .line 3442
    .local v0, bottom:I
    if-gt v2, v0, :cond_0

    if-le v1, v0, :cond_1

    .line 3443
    :cond_0
    const/4 v3, 0x0

    .line 3445
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1836
    const-string v0, "videocamera"

    const-string v1, "[Flow] onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-eqz v0, :cond_1

    .line 1838
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExEnd()V

    .line 1871
    :cond_0
    :goto_0
    return-void

    .line 1842
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_0

    .line 1843
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1844
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 1847
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v0, v3, :cond_3

    .line 1848
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1849
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1850
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1853
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    if-eqz v0, :cond_4

    .line 1854
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->dismissDialogBox()V

    .line 1856
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_5

    .line 1857
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->dismissPoupWindowEx()V

    .line 1859
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1860
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    .line 1870
    :goto_1
    const-string v0, "videocamera"

    const-string v1, "[Flow] onBackPressed end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1861
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1862
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_1

    .line 1864
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1865
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_1

    .line 1868
    :cond_8
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1250
    :sswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->deleteCurrentVideo()V

    .line 1251
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->hideAlert()V

    goto :goto_0

    .line 1254
    :sswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPlayVideoActivity()V

    goto :goto_0

    .line 1257
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_0

    .line 1260
    :sswitch_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 1261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_0

    .line 1265
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-nez v0, :cond_0

    .line 1269
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->viewLastVideo()V

    goto :goto_0

    .line 1248
    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_4
        0x7f080099 -> :sswitch_2
        0x7f08009a -> :sswitch_1
        0x7f08009b -> :sswitch_0
        0x7f08009c -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 2998
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2999
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 608
    const-string v10, "videocamera"

    const-string v11, "[Flow] onCreate begin"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/hwcamera/Util;->initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 612
    new-instance v10, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v10, p0}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 613
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v10}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-static {v10}, Lcom/android/hwcamera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 614
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v10}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v10

    iput v10, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    .line 616
    const-string v10, "ro.camera.show.eula"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 617
    const-string v10, "pref_eula"

    invoke-virtual {p0, v10, v12}, Lcom/android/hwcamera/VideoCamera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mEulaPreference:Landroid/content/SharedPreferences;

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 623
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v10}, Lcom/android/hwcamera/VideoCamera;->initializeFeatures(Landroid/content/ContentResolver;)V

    .line 626
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 627
    new-instance v10, Lcom/android/hwcamera/FocusManager;

    const v11, 0x7f0c0041

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/hwcamera/FocusManager;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 631
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/hwcamera/CameraHolder;->getNumberOfCameras()I

    move-result v10

    iput v10, p0, Lcom/android/hwcamera/VideoCamera;->mNumberOfCameras:I

    .line 632
    iget v10, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    iget v11, p0, Lcom/android/hwcamera/VideoCamera;->mNumberOfCameras:I

    add-int/lit8 v11, v11, -0x1

    if-le v10, v11, :cond_4

    .line 633
    iput v12, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    .line 634
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v11, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v10, p0, v11}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 635
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v11, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v10, v11}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 639
    :goto_0
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v10}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-static {v10}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 641
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v10, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    .line 642
    new-instance v10, Lcom/android/hwcamera/LocationManager;

    invoke-direct {v10, p0, p0}, Lcom/android/hwcamera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/hwcamera/LocationManager$Listener;)V

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 647
    new-instance v5, Ljava/lang/Thread;

    new-instance v10, Lcom/android/hwcamera/VideoCamera$2;

    invoke-direct {v10, p0}, Lcom/android/hwcamera/VideoCamera$2;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-direct {v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 675
    .local v5, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 676
    const-string v10, "videocamera"

    const-string v11, "[Flow] onCreate open camera"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 680
    .local v8, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_brightness_mode"

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 682
    .local v3, mode:I
    if-ne v3, v13, :cond_2

    .line 683
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 684
    .local v9, winParams:Landroid/view/WindowManager$LayoutParams;
    const v10, 0x3f333333

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 685
    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 688
    .end local v9           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 690
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 692
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->requestWindowFeature(I)Z

    .line 693
    const v10, 0x7f03001e

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->setContentView(I)V

    .line 695
    const v10, 0x7f080009

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/hwcamera/PreviewFrameLayout;

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    .line 697
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 699
    const v10, 0x7f08000a

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/SurfaceView;

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    .line 700
    const v10, 0x7f080095

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    .line 703
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 704
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    invoke-virtual {v10, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 706
    const v10, 0x7f08002a

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/hwcamera/hwui/RotateLayout;

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mFocusIndicator:Lcom/android/hwcamera/hwui/RotateLayout;

    .line 713
    :cond_3
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    invoke-virtual {v10}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 714
    .local v1, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 715
    const/4 v10, 0x3

    invoke-interface {v1, v10}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 717
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 718
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.extra.quickCapture"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/hwcamera/VideoCamera;->mQuickCapture:Z

    .line 719
    const v10, 0x7f0800a4

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 720
    const v10, 0x7f080096

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/hwcamera/hwui/RotateLayout;

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    .line 722
    const v10, 0x7f080013

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 723
    .local v6, videoRootView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 724
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-boolean v10, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v10, :cond_5

    .line 725
    const/high16 v10, 0x7f03

    invoke-virtual {v2, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 739
    :goto_1
    const v10, 0x7f080007

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/hwcamera/ShutterButton;

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 740
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v11, 0x7f020026

    invoke-virtual {v10, v11}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 741
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v10, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;)V

    .line 742
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v10}, Lcom/android/hwcamera/ShutterButton;->requestFocus()Z

    .line 744
    new-instance v10, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    invoke-direct {v10, p0, p0}, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;-><init>(Lcom/android/hwcamera/VideoCamera;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    .line 748
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V

    .line 749
    iget-boolean v10, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    if-eqz v10, :cond_6

    .line 750
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showCameraErrorAndFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_2
    return-void

    .line 637
    .end local v1           #holder:Landroid/view/SurfaceHolder;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #mode:I
    .end local v5           #startPreviewThread:Ljava/lang/Thread;
    .end local v6           #videoRootView:Landroid/view/ViewGroup;
    .end local v8           #win:Landroid/view/Window;
    :cond_4
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v11, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v10, p0, v11}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 727
    .restart local v1       #holder:Landroid/view/SurfaceHolder;
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v3       #mode:I
    .restart local v5       #startPreviewThread:Ljava/lang/Thread;
    .restart local v6       #videoRootView:Landroid/view/ViewGroup;
    .restart local v8       #win:Landroid/view/Window;
    :cond_5
    const v10, 0x7f030002

    invoke-virtual {v2, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 728
    const v10, 0x7f08001b

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/hwcamera/RotateImageView;

    .line 729
    .local v7, videoSwitchIcon:Lcom/android/hwcamera/RotateImageView;
    const v10, 0x7f020024

    invoke-virtual {v7, v10}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 731
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initThumbnailButton()V

    .line 732
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v10, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    const v10, 0x7f080019

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/hwcamera/Switcher;

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    .line 735
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v10, p0}, Lcom/android/hwcamera/Switcher;->setOnSwitchListener(Lcom/android/hwcamera/Switcher$OnSwitchListener;)V

    .line 736
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const v11, 0x7f080018

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/hwcamera/Switcher;->addTouchView(Landroid/view/View;)V

    goto :goto_1

    .line 753
    .end local v7           #videoSwitchIcon:Lcom/android/hwcamera/RotateImageView;
    :catch_0
    move-exception v10

    .line 757
    :cond_6
    const v10, 0x7f080004

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mControlBar:Landroid/view/View;

    .line 758
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x7f04

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarAnim:Landroid/view/animation/Animation;

    .line 759
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarAnim:Landroid/view/animation/Animation;

    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 760
    new-instance v10, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    .line 763
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->saveLocationInit()V

    .line 764
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeHeadUpDisplay()V

    .line 765
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->flashModeInit()V

    .line 766
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->switchCameraInit()V

    .line 767
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeZoom()V

    .line 768
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 769
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 770
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 771
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v0}, Lcom/android/hwcamera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 773
    new-instance v10, Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v10, p0, v11}, Lcom/android/hwcamera/hwui/GPSDailog;-><init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V

    iput-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 775
    const-string v10, "ro.camera.shuttersound"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 776
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v11, "pref_video_shutter_sound_key"

    const-string v12, "on"

    invoke-virtual {v10, v11, v12}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 777
    .local v4, shutterSound:Ljava/lang/String;
    const-string v10, "videocamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "silent Option:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v10}, Lcom/android/hwcamera/HwCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v10

    const-string v11, "off"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v10, v11}, Lcom/android/hwcamera/Util;->setSilentOption(Ljava/lang/Object;Z)V

    .line 782
    .end local v4           #shutterSound:Ljava/lang/String;
    :cond_7
    const-string v10, "videocamera"

    const-string v11, "[Flow] onCreate end"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1992
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1994
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1996
    const/4 v0, 0x0

    .line 2000
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1229
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onDestroy()V

    .line 1230
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1231
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2402
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2404
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 2405
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V

    .line 2407
    :cond_0
    return-void
.end method

.method public onFlashModeChange()Z
    .locals 1

    .prologue
    .line 2989
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 2990
    :cond_0
    const/4 v0, 0x0

    .line 2992
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    .line 2411
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 2412
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->onStopVideoRecording(Z)V

    .line 2419
    :cond_0
    :goto_0
    return-void

    .line 2413
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 2415
    const v0, 0x7f0c009c

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2417
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->onStopVideoRecording(Z)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1876
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v1, :cond_1

    .line 1917
    :cond_0
    :goto_0
    return v0

    .line 1880
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1917
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1882
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1883
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1888
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1889
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1894
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1900
    :sswitch_3
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-eq v1, v0, :cond_0

    .line 1903
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->startZoom(Z)V

    goto :goto_0

    .line 1909
    :sswitch_4
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-eq v1, v0, :cond_0

    .line 1912
    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->startZoom(Z)V

    goto :goto_0

    .line 1880
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_4
        0x19 -> :sswitch_3
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1922
    packed-switch p1, :pswitch_data_0

    .line 1927
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1924
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setPressed(Z)V

    .line 1925
    const/4 v0, 0x1

    goto :goto_0

    .line 1922
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1764
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] onPause begin screenChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onPause()V

    .line 1767
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    if-eqz v0, :cond_0

    .line 1827
    :goto_0
    return-void

    .line 1771
    :cond_0
    iput-boolean v5, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    .line 1772
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_1

    .line 1773
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->dissmissPopWindowNoAni()V

    .line 1774
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v4, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 1775
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->collapseAllPanelsControls()V

    .line 1778
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->finishRecorderAndCloseCamera()V

    .line 1779
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1782
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1784
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1785
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1786
    iput-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1788
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resetScreenOn()V

    .line 1790
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1791
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "last_video_thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Thumbnail;->saveTo(Ljava/io/File;)V

    .line 1795
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-eqz v0, :cond_4

    .line 1796
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->cancel()V

    .line 1797
    iput-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 1799
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v0, v5, :cond_5

    .line 1800
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->dismissReview()V

    .line 1801
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    if-nez v0, :cond_5

    .line 1802
    iput v4, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 1803
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 1804
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1805
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1808
    :cond_5
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-eqz v0, :cond_6

    .line 1809
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExClose()V

    .line 1811
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    if-eqz v0, :cond_7

    .line 1812
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->dismissDialogBox()V

    .line 1814
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_8

    .line 1815
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->dismissPoupWindowEx()V

    .line 1817
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->disable()V

    .line 1818
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 1821
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    if-eq v0, v5, :cond_9

    .line 1822
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 1826
    :cond_9
    const-string v0, "videocamera"

    const-string v1, "[Flow] onPause end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1598
    const-string v1, "videocamera"

    const-string v2, "[Flow] onResume begin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onResume()V

    .line 1604
    invoke-static {p0}, Lcom/android/hwcamera/Util;->stopFMRadioPlay(Landroid/content/Context;)V

    .line 1605
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    if-eqz v1, :cond_1

    .line 1643
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    .line 1610
    iput v3, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    .line 1611
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    .line 1612
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v2}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1613
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1617
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->enable()V

    .line 1618
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1619
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 1620
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 1621
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    if-nez v1, :cond_3

    .line 1622
    const-string v1, "videocamera"

    const-string v2, "onResume restart preview begin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1625
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOnAwhile()V

    .line 1626
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updatesuperpanel()V

    .line 1627
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1628
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_gps_key"

    const-string v3, "off"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->initGpsAnimation(Landroid/view/View;)V

    .line 1634
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_gps_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1636
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 1641
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1642
    const-string v1, "videocamera"

    const-string v2, "[Flow] onResume end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 1315
    invoke-virtual {p1}, Lcom/android/hwcamera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1317
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1318
    const-string v0, "videocamera"

    const-string v1, "camera onPause 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    goto :goto_0

    .line 1321
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1322
    const-string v0, "videocamera"

    const-string v1, "camera onPause2 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 1327
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-nez v0, :cond_0

    .line 1331
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 1332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->onStopVideoRecording(Z)V

    .line 1336
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 1337
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1334
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startVideoRecording()V

    goto :goto_1

    .line 1315
    nop

    :pswitch_data_0
    .packed-switch 0x7f080007
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 0
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 1276
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1214
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStart()V

    .line 1215
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Switcher;->setSwitch(Z)V

    .line 1218
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1223
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStop()V

    .line 1224
    return-void
.end method

.method public onSwitchChanged(Lcom/android/hwcamera/Switcher;Z)Z
    .locals 3
    .parameter "source"
    .parameter "onOff"

    .prologue
    const/4 v0, 0x1

    .line 2976
    if-ne p2, v0, :cond_0

    .line 2977
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_tag"

    const-string v2, "cameratag"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->switchToCameraMode()Z

    move-result v0

    .line 2981
    :cond_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 3372
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotionEvent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 3394
    :cond_0
    :goto_0
    return v0

    .line 3378
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/hwcamera/VideoCamera;->collapseCameraControls(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3382
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3387
    invoke-virtual {p0, p2}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusAreaValid(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3391
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3392
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/FocusManager;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 3394
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/hwcamera/FocusManager;->handleFocus(IIIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1831
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onUserInteraction()V

    .line 1832
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOnAwhile()V

    .line 1833
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1588
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 1589
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    if-eqz v0, :cond_0

    .line 1590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    .line 1591
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->onResume()V

    .line 1593
    :cond_0
    return-void
.end method

.method public setCameraUI(I)V
    .locals 1
    .parameter "visiable"

    .prologue
    .line 1310
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setCameraUIButControlBar(I)V

    .line 1311
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1312
    return-void
.end method

.method public setFocusParameters()V
    .locals 4

    .prologue
    .line 3533
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_0

    .line 3534
    const-string v1, "videocamera"

    const-string v2, "TODO: avoid NullPointerException from doFaceFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    :goto_0
    return-void

    .line 3538
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3540
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mAeLockSupported:Z

    if-eqz v1, :cond_1

    .line 3541
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 3543
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mAwbLockSupported:Z

    if-eqz v1, :cond_2

    .line 3544
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 3546
    :cond_2
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_3

    .line 3548
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 3550
    :cond_3
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusAreaSupported:Z

    if-eqz v1, :cond_5

    .line 3551
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3552
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 3562
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 3564
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focus Mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3567
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 3555
    :cond_5
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 3556
    .local v0, Coordinate:[F
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/hwcamera/FocusManager;->transformCoordinate([FLandroid/view/SurfaceView;Landroid/hardware/Camera$Size;)V

    .line 3558
    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->setTouchPosition(II)V

    goto :goto_1
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 6
    .parameter "hasSignal"

    .prologue
    const v5, 0x7f080032

    const v4, 0x7f080031

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3314
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    .line 3315
    .local v0, gpsSingnal:Landroid/widget/ImageView;
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    .line 3316
    if-eqz p1, :cond_0

    .line 3317
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 3318
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3319
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3320
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3327
    :goto_0
    return-void

    .line 3322
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3323
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3324
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3325
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->showGpsAnimation()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v5, 0x1

    .line 1932
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1933
    const-string v0, "videocamera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1937
    :cond_1
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1938
    iput p3, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceWidth:I

    .line 1939
    iput p4, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHeight:I

    .line 1941
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 1961
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1963
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1973
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1974
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    aget-object v7, v0, v1

    .line 1975
    .local v7, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v5, :cond_4

    .line 1976
    .local v5, mirror:Z
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusIndicator:Lcom/android/hwcamera/hwui/RotateLayout;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    iget v6, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayOrientation:I

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/FocusManager;->initialize(Landroid/view/View;Landroid/view/View;Lcom/android/hwcamera/hwui/FaceView;Lcom/android/hwcamera/FocusManager$Listener;ZI)V

    goto :goto_0

    .line 1965
    .end local v5           #mirror:Z
    .end local v7           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 1967
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    if-nez v0, :cond_2

    .line 1968
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    goto :goto_1

    .line 1975
    .restart local v7       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1983
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1987
    return-void
.end method
