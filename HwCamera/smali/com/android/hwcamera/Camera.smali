.class public Lcom/android/hwcamera/Camera;
.super Lcom/android/hwcamera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/hwcamera/Switcher$OnSwitchListener;
.implements Lcom/android/hwcamera/LocationManager$Listener;
.implements Lcom/android/hwcamera/FocusManager$Listener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;
.implements Lcom/android/hwcamera/HWExtCameraHandler$Listener;
.implements Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;
.implements Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Camera$SuperPanelListener;,
        Lcom/android/hwcamera/Camera$MyOrientationEventListener;,
        Lcom/android/hwcamera/Camera$PanoramaBarListener;,
        Lcom/android/hwcamera/Camera$ImageCapture;,
        Lcom/android/hwcamera/Camera$ImageSaver;,
        Lcom/android/hwcamera/Camera$SaveRequest;,
        Lcom/android/hwcamera/Camera$ZoomListener;,
        Lcom/android/hwcamera/Camera$ErrorCallback;,
        Lcom/android/hwcamera/Camera$AutoFocusCallback;,
        Lcom/android/hwcamera/Camera$DecodeThumbnailThread;,
        Lcom/android/hwcamera/Camera$DecodeBurstRequest;,
        Lcom/android/hwcamera/Camera$JpegPictureCallback;,
        Lcom/android/hwcamera/Camera$RawPictureCallback;,
        Lcom/android/hwcamera/Camera$PostViewPictureCallback;,
        Lcom/android/hwcamera/Camera$ShutterCallback;,
        Lcom/android/hwcamera/Camera$MainHandler;
    }
.end annotation


# static fields
.field public static final ACTION_RESULT_CODE:I = 0xe

.field private static final ACTION_URI_STRING:Ljava/lang/String; = "content://com.scalado.prototype.strobe.StrobeViewerActivity/data"

.field private static final AUTO_FOCUS_CALLBACK:I = 0x1b

.field private static final BEGIN_SAVE_ALL_IMAGES:I = 0x17

.field private static final CHECK_STORAGE:I = 0x5

.field private static final CLEAR_FACE_INDICATOR:I = 0x16

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final CROP_MSG:I = 0x1

.field private static final DECODE_NEW_PICTURE_COMPLETED:I = 0xd

.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.7f

.field private static final DISPLAY_FACE:I = 0xb

.field private static final DISTORTION:I = 0x5

.field private static final EFFECT:I = 0x4

.field private static final ENABLE_SHUTTERBUTTON_MSG:I = 0xf

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FINE_PIC_SIZE_RATE:F = 0.47f

.field private static final FIRST_TIME_INIT:I = 0x2

.field private static final FLOW:Ljava/lang/String; = "[Flow] "

.field private static final FOCUSING:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final HAS_HDR_FEATURE:Z = false

.field private static final HDR_SECOND_PIC:I = 0x2

.field private static final HIDE_FACE:I = 0xc

.field private static final IDLE:I = 0x1

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field public static final LOAD_EXTRA:Ljava/lang/String; = "load"

.field private static final MAKE_TOAST_HINT:I = 0x6

.field private static final NORMAL_PIC_SIZE_RATE:F = 0.38f

.field private static final NOTIFY_PREVIEW_STOPED:I = 0x21

.field public static final PANORAMA_RESULT_CODE:I = 0xd

.field private static final POSTCAPTUREALERT:I = 0x6

.field public static final PREFS:Ljava/lang/String; = "CameraPrefs"

.field private static final PREVIEWFRAME_LAYOUT:I = 0x20

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final PROGRESS_HIDEN:I = 0x15

.field private static final PROGRESS_SHOW:I = 0x14

.field private static final RESET_FOCUS_UI:I = 0x7

.field private static final REVIEW_DISPLAY_MSG:I = 0x12

.field private static final REVIEW_HIDE_MSG:I = 0xe

.field private static final REVIEW_IN_PROGRESS:I = 0x3

.field private static final REVIEW_SWITCH_MSG:I = 0x10

.field public static final REWIND_RESULT_CODE:I = 0xf

.field public static final REWIND_SAVED:I = 0x5

.field private static final SAVE_ALL_IMAG_TO_FILE_COMPLETED:I = 0x18

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SET_TIMER_PROMPT:I = 0x24

.field private static final SHOW_POST_CAPTURE:I = 0x13

.field private static final SMILE_AUTO_CAPTURE_THRESHOLD:I = 0x32

.field private static final SMILE_CAP_INTERVAL:J = 0x7d0L

.field private static final SMILE_LEVEL1_THRESHOLD:I = 0x14

.field private static final SMILE_LEVEL2_THRESHOLD:I = 0x28

.field private static final SNAPSHOT_IN_PROGRESS:I = 0x3

.field private static final START_ACTION_ACTIVITY:I = 0x25

.field private static final START_FACE_DETECTION_UI:I = 0x1c

.field private static final START_REWIND_ACTIVITY:I = 0x1e

.field private static final STOP_FACE_DETECTION_UI:I = 0x1d

.field private static final SWITCH_CAMERA_FLAG:Z = true

.field private static final SWITCH_CAMERA_UI:I = 0x22

.field private static final SWITCH_VIDEO_FLAG:Z = false

.field private static final SYSTEM_PROPERTY_SUPPORT_LED:Ljava/lang/String; = "ro.camera.support.led"

.field private static final TAG:Ljava/lang/String; = "Camera"

.field private static final THUMB_SAMPLE_RATE:I = 0x10

.field private static final UPDATE_DELAY_TAKEPICTURE_TIME:I = 0x9

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_FOCUS:I = 0x8

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final UPDATE_REWIND_THUMBNAIL:I = 0x26

.field private static final UPDATE_THUMBNAIL:I = 0x8

.field private static final ZOOM_IN:I = 0x1

.field private static final ZOOM_OUT:I = 0x2

.field private static final ZOOM_START:I = 0x1

.field private static final ZOOM_STOPPED:I = 0x0

.field public static mMediaServerDied:Z = false

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private isCounterDowning:Z

.field private mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/hwcamera/Camera$AutoFocusCallback;

.field private mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness_key:Ljava/lang/String;

.field private mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

.field private mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private mCameraDisabled:Z

.field private mCameraId:I

.field private mCameraState:I

.field private mCancelTimer:Z

.field private mCaptureStartTime:J

.field mCloseCameraLock:[Ljava/lang/Object;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContrast_key:Ljava/lang/String;

.field private mControlBar:Landroid/view/View;

.field private mControlBarAnim:Landroid/view/animation/Animation;

.field private mControlBarHeight:I

.field private mCropValue:Ljava/lang/String;

.field private mCurrentState:I

.field private mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

.field private mDelayTimeRemaining:I

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/hwcamera/Camera$ErrorCallback;

.field private mEulaPreference:Landroid/content/SharedPreferences;

.field private mFaceView:Lcom/android/hwcamera/hwui/FaceView;

.field private mFirstEnter:Z

.field private mFirstTimeInitialized:Z

.field private mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

.field private mFlashSupported:Z

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/android/hwcamera/hwui/RotateLayout;

.field private mFocusManager:Lcom/android/hwcamera/FocusManager;

.field private mFocusStartTime:J

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

.field private mGalleryExHorScroll:Landroid/view/View;

.field private mGalleryExKEY:Ljava/lang/String;

.field private mGalleryExLinearLayout:Landroid/widget/LinearLayout;

.field private mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

.field private mGalleryExitAnim:Landroid/view/animation/Animation;

.field private mGpsSignalState:Z

.field private mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

.field private final mHandler:Landroid/os/Handler;

.field private mHdrDone:Z

.field private mHdrSaveOrgPic:Z

.field private mISO_key:Ljava/lang/String;

.field private mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

.field private mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsActivityExit:Z

.field private mIsAutoFocus:Z

.field private mIsBursting:Z

.field private mIsGalleryExViewAdd:Z

.field private mIsImageCaptureIntent:Z

.field private mIsInternalStorageExist:Z

.field private mIsInvokeBarFirstInflate:Z

.field private mIsSmileCaptureState:Z

.field private mIsSupporetedWideScreen:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mLastSmileCapTime:J

.field private mLocationManager:Lcom/android/hwcamera/LocationManager;

.field private mLocationState:Z

.field private mMaxBurstPicNumber:I

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field private mNM:Landroid/app/NotificationManager;

.field private mNumberOfCameras:I

.field public mOpenCameraFail:Z

.field private mOpenCameraHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

.field private mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

.field private mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParametersManager:Lcom/android/hwcamera/ParametersManager;

.field private mPausing:Z

.field private mPicNum:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

.field private mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;

.field private mPicturesRemaining:I

.field private final mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

.field private mPreviewOnPara:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordLocation:Z

.field private mRestartPreviewNeed:Z

.field private mReview:Lcom/android/hwcamera/hwui/Review;

.field private mReviewOrientation:I

.field private mReviewTime:I

.field private mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

.field private mSaturation_key:Ljava/lang/String;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Ljava/lang/String;

.field private mShootingMode:I

.field private mShowProcess:Z

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private final mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mShutterupTime:J

.field private mSnapshotOnIdle:Z

.field mStartPreviewLock:[Ljava/lang/Object;

.field mStopPreviewLock:[Ljava/lang/Object;

.field private mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

.field private mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

.field private mSwitcher:Lcom/android/hwcamera/Switcher;

.field private mTargetZoomValue:I

.field private mThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private mThumbnailView:Lcom/android/hwcamera/RotateImageView;

.field private mThumnailAnimation:Landroid/view/animation/Animation;

.field private mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

.field private mTimerValue:I

.field private mUpdateSet:I

.field private final mZoomListener:Lcom/android/hwcamera/Camera$ZoomListener;

.field mZoomRatios:[F

.field private mZoomState:I

.field private mZoomValue:I

.field openCameraLock:[Ljava/lang/Object;

.field private prepareQuitCameraLock:[Ljava/lang/Object;

.field private final sReceiver:Landroid/content/BroadcastReceiver;

.field private screenChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    sput-boolean v1, Lcom/android/hwcamera/Camera;->mMediaServerDied:Z

    .line 318
    const-string v0, "ro.config.hw_camera_hdr"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/hwcamera/Camera;->HAS_HDR_FEATURE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase;-><init>()V

    .line 122
    iput v2, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 123
    iput v2, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    .line 124
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    .line 186
    iput v2, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    .line 191
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    .line 212
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    .line 218
    iput v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    .line 224
    iput v2, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 225
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    .line 245
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 256
    iput v4, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 257
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsGalleryExViewAdd:Z

    .line 269
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mLastSmileCapTime:J

    .line 282
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    .line 284
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 285
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    .line 286
    new-instance v0, Lcom/android/hwcamera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$ShutterCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;

    .line 287
    new-instance v0, Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$PostViewPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    .line 288
    new-instance v0, Lcom/android/hwcamera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$RawPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;

    .line 289
    new-instance v0, Lcom/android/hwcamera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$AutoFocusCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mAutoFocusCallback:Lcom/android/hwcamera/Camera$AutoFocusCallback;

    .line 290
    new-instance v0, Lcom/android/hwcamera/Camera$ZoomListener;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$ZoomListener;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomListener:Lcom/android/hwcamera/Camera$ZoomListener;

    .line 292
    new-instance v0, Lcom/android/hwcamera/Camera$ErrorCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$ErrorCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mErrorCallback:Lcom/android/hwcamera/Camera$ErrorCallback;

    .line 312
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 313
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    .line 317
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    .line 321
    new-instance v0, Lcom/android/hwcamera/Camera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$MainHandler;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    .line 322
    iput v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 323
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 337
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    .line 339
    iput v2, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    .line 340
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    .line 343
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 344
    sget v0, Lcom/android/hwcamera/Config;->BURST_MAX_NUMBER:I

    iput v0, p0, Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I

    .line 345
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 346
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 351
    new-instance v0, Lcom/android/hwcamera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$1;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 356
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 357
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    .line 358
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mLocationState:Z

    .line 359
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 360
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    .line 370
    iput v2, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    .line 371
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    .line 373
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/hwcamera/Camera;->mReviewOrientation:I

    .line 375
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    .line 376
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    .line 387
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    .line 388
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    .line 392
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    .line 394
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    .line 395
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    .line 396
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    .line 397
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    .line 398
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsSupporetedWideScreen:Z

    .line 399
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mFirstEnter:Z

    .line 400
    iput v2, p0, Lcom/android/hwcamera/Camera;->mControlBarHeight:I

    .line 401
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;

    .line 402
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

    .line 404
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    .line 415
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    .line 416
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    .line 965
    new-instance v0, Lcom/android/hwcamera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$4;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1199
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    .line 1200
    new-instance v0, Lcom/android/hwcamera/Camera$5;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$5;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 1896
    new-instance v0, Lcom/android/hwcamera/Camera$6;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$6;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2028
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->openCameraLock:[Ljava/lang/Object;

    .line 2053
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    .line 3651
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    .line 4031
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mCloseCameraLock:[Ljava/lang/Object;

    .line 4099
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    .line 4164
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    .line 5246
    return-void
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/FaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    return v0
.end method

.method static synthetic access$10100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$RawPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$PostViewPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    return-object v0
.end method

.method static synthetic access$10302(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/hwcamera/Camera;->mReviewOrientation:I

    return p1
.end method

.method static synthetic access$10500(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mNumberOfCameras:I

    return v0
.end method

.method static synthetic access$10600(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->switchCameraId(I)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/hwcamera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->stopPanorama(Z)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/PanoramaBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HWExtCameraHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->makeFirstZoomHintToast(I)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    return v0
.end method

.method static synthetic access$11402(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    return p1
.end method

.method static synthetic access$11500(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->restoreParameterToDefault()V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateSuperPanel()V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->onSharedPreferenceChanged()V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/hwcamera/Camera;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mEulaPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showConfirmGpsDialog()V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showEulaDialog()V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ParametersManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$12402(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    return p1
.end method

.method static synthetic access$12500(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->goToPanoromaMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12600(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12700(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setFlashModeEnable()V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setAutoFocus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->clearFaceRectangles()V

    return-void
.end method

.method static synthetic access$13000(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->galleryExStart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13100(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V

    return-void
.end method

.method static synthetic access$13200(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V

    return-void
.end method

.method static synthetic access$13300(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExInit()V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/CameraAutoFocusController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateDelayTakePictureTime()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/Camera;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/Camera;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->hideReview(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->displayReview()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchReview()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    return p1
.end method

.method static synthetic access$2408(Lcom/android/hwcamera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkCurrentStorage()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->startPanoramaViewer()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/hwcamera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/hwcamera/Camera;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreviewFrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/hwcamera/Camera;Ljava/lang/CharSequence;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchCameraUI()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setTimerpromptIcon()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopCaptureIfNeed()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/hwcamera/Camera;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->updateSDCardStorageHint(J)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/hwcamera/Camera;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$5202(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5302(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5400(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$5402(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mCaptureStartTime:J

    return-wide p1
.end method

.method static synthetic access$5500(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5502(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5600(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5602(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5700(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mShutterupTime:J

    return-wide v0
.end method

.method static synthetic access$5800(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mLocationState:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mLocationState:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/hwcamera/Camera;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$6002(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$6100(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    return v0
.end method

.method static synthetic access$6200(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/hwcamera/Camera;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->isBasedBurstShootMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopBurst()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/hwcamera/Camera;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->hdrProcessing([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/android/hwcamera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/android/hwcamera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$7200(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$7300(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/android/hwcamera/Camera;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->decordPictureForReview([B)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$7900(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showCameraStoppedAndFinish()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$8100(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    return v0
.end method

.method static synthetic access$8102(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    return p1
.end method

.method static synthetic access$8200(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTargetZoomValue:I

    return v0
.end method

.method static synthetic access$8400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/Review;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/hwcamera/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PictureRemaining$Key;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PictureRemaining;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->requestUpdateThumbnail(Lcom/android/hwcamera/Thumbnail;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mControlBarAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    return v0
.end method

.method static synthetic access$9100(Lcom/android/hwcamera/Camera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mControlBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExClose()V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    return v0
.end method

.method static synthetic access$9402(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    return p1
.end method

.method static synthetic access$9500(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$9502(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    return p1
.end method

.method static synthetic access$9600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    return v0
.end method

.method static synthetic access$9800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    return p1
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 4809
    const/4 v0, 0x2

    new-instance v1, Lcom/android/hwcamera/Camera$8;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$8;-><init>(Lcom/android/hwcamera/Camera;)V

    invoke-static {p1, v0, v1}, Lcom/android/hwcamera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 4815
    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 749
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 750
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/hwcamera/Camera$2;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$2;-><init>(Lcom/android/hwcamera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 756
    return-void
.end method

.method private calculateHorizontalFieldOfView(ILandroid/hardware/Camera$Parameters;)F
    .locals 6
    .parameter "nbr"
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 1261
    const/4 v1, 0x0

    .line 1262
    .local v1, horViewAngel:F
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v3

    cmpg-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v3

    const/high16 v4, 0x4334

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 1264
    :cond_0
    cmpg-float v3, v1, v5

    if-gez v3, :cond_1

    .line 1265
    const/high16 v1, 0x4248

    .line 1271
    :cond_1
    :goto_0
    const v2, 0x3f0ccccd

    .line 1272
    .local v2, overlap:F
    mul-float v3, v2, v1

    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v0, v3, v1

    .line 1273
    .local v0, HFOV:F
    return v0

    .line 1268
    .end local v0           #HFOV:F
    .end local v2           #overlap:F
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v1

    goto :goto_0
.end method

.method private canSetZoom()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3785
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    if-nez v1, :cond_1

    .line 3798
    :cond_0
    :goto_0
    return v0

    .line 3788
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera$ImageSaver;->isAllImageSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    .line 3798
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canTakePicture()Z
    .locals 1

    .prologue
    .line 3631
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isStorageSpaceEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPanorama(Z)V
    .locals 2
    .parameter "bCancel"

    .prologue
    .line 2527
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->clearPanoramaMessage()V

    .line 2528
    if-eqz p1, :cond_0

    .line 2529
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2531
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 2532
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 2533
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closePanorama()V

    .line 2534
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    .line 2535
    return-void
.end method

.method private checkCurrentStorage()V
    .locals 7

    .prologue
    .line 2745
    const-wide/16 v1, 0x0

    .line 2746
    .local v1, storageAvailableSpace:J
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v0

    .line 2748
    .local v0, isCurrentSaveToSDCard:Z
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    if-nez v3, :cond_0

    .line 2749
    const/4 v0, 0x1

    .line 2752
    :cond_0
    if-eqz v0, :cond_2

    .line 2753
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v1

    .line 2758
    :goto_0
    const-wide/32 v3, 0x1400000

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 2759
    const-string v3, "Camera"

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

    .line 2760
    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 2761
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 2766
    :goto_1
    iget v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2769
    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/Camera;->updateStorageHint(ZJ)V

    .line 2771
    :cond_1
    return-void

    .line 2755
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v1

    goto :goto_0

    .line 2763
    :cond_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    goto :goto_1
.end method

.method private checkRemaining(J)I
    .locals 5
    .parameter "storageAvailableSpace"

    .prologue
    .line 2820
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updatePicSizePrefKey()V

    .line 2821
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PictureRemaining;->getPictureSize(Lcom/android/hwcamera/PictureRemaining$Key;)I

    move-result v0

    .line 2822
    .local v0, onePictureSize:I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStorage()(M) :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v3, 0x100000

    div-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "current picsize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    const-wide/32 v1, 0x1400000

    sub-long v1, p1, v1

    int-to-long v3, v0

    div-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method private checkStorage()V
    .locals 9

    .prologue
    .line 2781
    iget-boolean v5, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    if-nez v5, :cond_0

    .line 2783
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v5}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2784
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_camera_save_location_key"

    const-string v6, "memoryscard"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2785
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2789
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x0

    .line 2790
    .local v1, isPriorSaveToSDCard:Z
    const-wide/16 v3, 0x0

    .line 2791
    .local v3, storageAvailableSpace:J
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v6, "pref_camera_save_location_key"

    const v7, 0x7f0c00d4

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2793
    .local v2, saveLocationValue:Ljava/lang/String;
    const-string v5, "phone"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2794
    const/4 v1, 0x0

    .line 2795
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v3

    .line 2801
    :goto_0
    const-wide/32 v5, 0x1400000

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 2802
    const-string v5, "Camera"

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

    .line 2803
    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v5

    iput v5, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 2804
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 2809
    :goto_1
    iget v5, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2812
    invoke-direct {p0, v1, v3, v4}, Lcom/android/hwcamera/Camera;->updateStorageHint(ZJ)V

    .line 2817
    :goto_2
    return-void

    .line 2797
    :cond_1
    const/4 v1, 0x1

    .line 2798
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v3

    goto :goto_0

    .line 2806
    :cond_2
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    goto :goto_1

    .line 2815
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->updateStorageHintEx(Z)V

    goto :goto_2
.end method

.method private clearFaceRectangles()V
    .locals 1

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_0

    .line 3686
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 3687
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->invalidate()V

    .line 3689
    :cond_0
    return-void
.end method

.method private clearPanoramaMessage()V
    .locals 1

    .prologue
    .line 5682
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearPanoramaMessage()V

    .line 5683
    return-void
.end method

.method private closeOpenedPanel()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3707
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-nez v2, :cond_1

    .line 3720
    :cond_0
    :goto_0
    return v0

    .line 3710
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3711
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    move v0, v1

    .line 3712
    goto :goto_0

    .line 3713
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3714
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    move v0, v1

    .line 3715
    goto :goto_0

    .line 3716
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3717
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    move v0, v1

    .line 3718
    goto :goto_0
.end method

.method private closePanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2538
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 2539
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->restoreUi()V

    .line 2540
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    .line 2541
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    .line 2542
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showNormalUi()V

    .line 2543
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2544
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2545
    return-void
.end method

.method private collapseCameraControls(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 925
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v2, :cond_1

    .line 962
    :cond_0
    :goto_0
    return v0

    .line 928
    :cond_1
    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 935
    :cond_2
    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 936
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExEnd()V

    goto :goto_0

    .line 942
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_6

    .line 943
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    .line 947
    goto :goto_0

    .line 950
    :cond_6
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_9

    .line 951
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 952
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    goto :goto_0

    .line 954
    :cond_7
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 955
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_0

    .line 957
    :cond_8
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 958
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 962
    goto :goto_0
.end method

.method private decordPictureForReview([B)V
    .locals 8
    .parameter "jpegData"

    .prologue
    .line 1446
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1447
    .local v3, s:Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget-object v6, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v6}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1448
    .local v2, ratio:I
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    move v0, v2

    .line 1449
    .local v0, inSampleSize:I
    :goto_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1450
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1451
    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    .line 1452
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/android/hwcamera/Camera;->mReviewOrientation:I

    neg-int v5, v5

    invoke-static {v4, v5}, Lcom/android/hwcamera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    .line 1453
    return-void

    .line 1448
    .end local v0           #inSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private displayBlinkIcon(Z)V
    .locals 2
    .parameter "blinkState"

    .prologue
    const v0, 0x7f08008b

    .line 669
    if-eqz p1, :cond_0

    .line 670
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private displayReview()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2308
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 2309
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 2310
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2311
    .local v0, mReviewImg:Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2312
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2313
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 2314
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v1, :cond_0

    .line 2315
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    iget v2, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v3}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/hwui/Review;->setIntervalReviewDisplay(ILandroid/net/Uri;)V

    .line 2323
    .end local v0           #mReviewImg:Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 2318
    .restart local v0       #mReviewImg:Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    iget v2, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/hwui/Review;->setIntervalReviewDisplay(ILandroid/net/Uri;)V

    goto :goto_0

    .line 2321
    .end local v0           #mReviewImg:Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    goto :goto_0
.end method

.method private doAttach()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    .line 2853
    iget-boolean v10, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v10, :cond_0

    .line 2925
    :goto_0
    return-void

    .line 2857
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mJpegImageData:[B

    .line 2859
    .local v2, data:[B
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v10, :cond_2

    .line 2864
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_1

    .line 2865
    const/4 v6, 0x0

    .line 2867
    .local v6, outputStream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 2868
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2869
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 2871
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->setResultEx(I)V

    .line 2872
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2876
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2873
    :catch_0
    move-exception v10

    .line 2876
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v10

    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 2879
    .end local v6           #outputStream:Ljava/io/OutputStream;
    :cond_1
    invoke-static {v2}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v5

    .line 2880
    .local v5, orientation:I
    const v10, 0xc800

    invoke-static {v2, v10}, Lcom/android/hwcamera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2881
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v5}, Lcom/android/hwcamera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2882
    new-instance v10, Landroid/content/Intent;

    const-string v11, "inline-data"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "data"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v12, v10}, Lcom/android/hwcamera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 2883
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    goto :goto_0

    .line 2887
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #orientation:I
    :cond_2
    const/4 v9, 0x0

    .line 2888
    .local v9, tempUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2890
    .local v8, tempStream:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v10, "crop-temp"

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 2891
    .local v7, path:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 2892
    const-string v10, "crop-temp"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/hwcamera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 2893
    invoke-virtual {v8, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2894
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 2895
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 2905
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2908
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2909
    .local v4, newExtras:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mCropValue:Ljava/lang/String;

    const-string v11, "circle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2910
    const-string v10, "circleCrop"

    const-string v11, "true"

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    :cond_3
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_4

    .line 2913
    const-string v10, "output"

    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2918
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.hwcamera.action.CROP"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2920
    .local v1, cropIntent:Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2921
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2923
    invoke-virtual {p0, v1, v13}, Lcom/android/hwcamera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2896
    .end local v1           #cropIntent:Landroid/content/Intent;
    .end local v4           #newExtras:Landroid/os/Bundle;
    .end local v7           #path:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 2897
    .local v3, ex:Ljava/io/FileNotFoundException;
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->setResultEx(I)V

    .line 2898
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2905
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 2900
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 2901
    .local v3, ex:Ljava/io/IOException;
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->setResultEx(I)V

    .line 2902
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2905
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 2915
    .restart local v4       #newExtras:Landroid/os/Bundle;
    .restart local v7       #path:Ljava/io/File;
    :cond_4
    const-string v10, "return-data"

    invoke-virtual {v4, v10, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 2928
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 2929
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 2930
    return-void
.end method

.method private doFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 3936
    if-eqz p1, :cond_0

    .line 3937
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->autoFocus()V

    .line 3941
    :goto_0
    return-void

    .line 3939
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->cancelAutoFocus(I)V

    goto :goto_0
.end method

.method private doSnap()V
    .locals 3

    .prologue
    .line 3919
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSnap: mCameraState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->doSnap()V

    .line 3921
    return-void
.end method

.method private doTakePicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5509
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 5510
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 5511
    const-string v0, "off"

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/ParametersManager;->getAutoFocusValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5512
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 5513
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onShutterDown()V

    .line 5515
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    .line 5516
    return-void
.end method

.method private enableCameraControl(ZZ)V
    .locals 1
    .parameter "enabled"
    .parameter "filterColor"

    .prologue
    .line 1114
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 1115
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 1116
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    if-eqz v0, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    if-eqz v0, :cond_2

    .line 1123
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/FlashImageView;->setEnableEx(Z)V

    .line 1127
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    if-eqz v0, :cond_3

    .line 1128
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/FocusManager;->setTouchFocusEnable(Z)V

    .line 1134
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->initGridLines(Z)V

    .line 1136
    return-void
.end method

.method private enableShutterButton(ZZ)V
    .locals 3
    .parameter "enabled"
    .parameter "filterColor"

    .prologue
    .line 1139
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 1143
    if-eqz p1, :cond_2

    .line 1144
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->clearColorFilter()V

    goto :goto_0

    .line 1146
    :cond_2
    if-eqz p2, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1148
    .local v0, disable_Color:I
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ShutterButton;->setColorFilter(I)V

    goto :goto_0
.end method

.method private enableSwitcherThumbnail(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const v3, 0x7f08001b

    .line 1154
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    if-nez v1, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v1}, Lcom/android/hwcamera/Switcher;->isEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/Switcher;->setEnabled(Z)V

    .line 1162
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 1163
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1164
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1165
    .local v0, disable_Color:I
    if-eqz p1, :cond_2

    .line 1166
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v1}, Lcom/android/hwcamera/Switcher;->clearColorFilter()V

    .line 1167
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 1169
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/Switcher;->setColorFilter(I)V

    .line 1170
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method private flashModeInit()V
    .locals 3

    .prologue
    .line 2334
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 2335
    .local v0, flashModeRotateImage:Lcom/android/hwcamera/RotateImageView;
    new-instance v1, Lcom/android/hwcamera/hwui/FlashImageView;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/hwcamera/hwui/FlashImageView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    .line 2336
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 2338
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v1, p0}, Lcom/android/hwcamera/hwui/FlashImageView;->setFlashMocdChangeListener(Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;)V

    .line 2341
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    if-eqz v1, :cond_0

    .line 2342
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 2343
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    .line 2346
    :cond_0
    return-void
.end method

.method private flashModeUpdate()V
    .locals 2

    .prologue
    .line 2350
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    if-nez v0, :cond_0

    .line 2351
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2357
    :goto_0
    return-void

    .line 2355
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 2356
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    goto :goto_0
.end method

.method private galleryExClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2464
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 2465
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v0, :cond_0

    .line 2466
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 2468
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V

    .line 2469
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V

    .line 2470
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setControlBarVisibility(I)V

    .line 2471
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setSuperPanelVisibility(I)V

    .line 2472
    return-void
.end method

.method private galleryExEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2449
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 2450
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExHorScroll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2451
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    .line 2453
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2454
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExHorScroll:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2461
    :goto_0
    return-void

    .line 2456
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V

    .line 2457
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V

    .line 2458
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setControlBarVisibility(I)V

    .line 2459
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setSuperPanelVisibility(I)V

    goto :goto_0
.end method

.method private galleryExInit()V
    .locals 5

    .prologue
    .line 2425
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->setSuperPanelVisibility(I)V

    .line 2426
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsGalleryExViewAdd:Z

    if-nez v3, :cond_0

    .line 2427
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsGalleryExViewAdd:Z

    .line 2428
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2429
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2430
    .local v2, rootView:Landroid/view/ViewGroup;
    new-instance v3, Lcom/android/hwcamera/hwui/GalleryEx;

    const v4, 0x7f030007

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/hwcamera/hwui/GalleryEx;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    .line 2431
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 2432
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getRotateLinearLayout()Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 2433
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExHorScroll:Landroid/view/View;

    .line 2434
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    .line 2439
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #rootView:Landroid/view/ViewGroup;
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 2440
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 2441
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mGalleryExKEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->init(Ljava/lang/String;)V

    .line 2442
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget v4, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 2443
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2445
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2446
    return-void

    .line 2436
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private galleryExStart(Ljava/lang/String;)V
    .locals 3
    .parameter "strKEY"

    .prologue
    .line 2407
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mGalleryExKEY:Ljava/lang/String;

    .line 2408
    const-string v0, "pref_camera_distortion_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2409
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 2413
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 2414
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 2416
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2417
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 2419
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mControlBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2420
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mControlBar:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mControlBarAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2422
    :cond_2
    return-void

    .line 2411
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    goto :goto_0
.end method

.method private getNextZoomValue(IZ)I
    .locals 5
    .parameter "oldValue"
    .parameter "zoomIn"

    .prologue
    .line 2081
    const/4 v0, 0x1

    .line 2082
    .local v0, flag:I
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    .line 2083
    .local v2, zoomMax:I
    const/4 v3, 0x5

    .line 2084
    .local v3, zoomSteps:I
    move v1, p1

    .line 2085
    .local v1, tempValue:I
    if-eqz p2, :cond_0

    .line 2086
    const/4 v0, -0x1

    .line 2088
    :cond_0
    mul-int v4, v0, v3

    add-int/2addr v1, v4

    .line 2090
    if-gez v1, :cond_2

    .line 2091
    const/4 v1, 0x0

    .line 2095
    :cond_1
    :goto_0
    return v1

    .line 2092
    :cond_2
    if-le v1, v2, :cond_1

    .line 2093
    move v1, v2

    goto :goto_0
.end method

.method private getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 17
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 4188
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v1, 0x3fa999999999999aL

    .line 4189
    .local v1, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    .line 4190
    const/4 v7, 0x0

    .line 4240
    :cond_0
    return-object v7

    .line 4192
    :cond_1
    const/4 v7, 0x0

    .line 4193
    .local v7, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v5, 0x7fefffffffffffffL

    .line 4201
    .local v5, minDiff:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 4202
    .local v3, display:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 4204
    .local v11, targetHeight:I
    if-gtz v11, :cond_2

    .line 4206
    const-string v13, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/hwcamera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 4207
    .local v12, windowManager:Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 4212
    .end local v12           #windowManager:Landroid/view/WindowManager;
    :cond_2
    const/16 v13, 0x21c

    if-le v11, v13, :cond_3

    .line 4213
    const/16 v11, 0x21c

    .line 4216
    :cond_3
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "targetHeight = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 4220
    .local v10, size:Landroid/hardware/Camera$Size;
    iget v13, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v8, v13, v15

    .line 4221
    .local v8, ratio:D
    sub-double v13, v8, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3fa999999999999aL

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_4

    .line 4223
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v5

    if-gez v13, :cond_4

    .line 4224
    move-object v7, v10

    .line 4225
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v5, v13

    goto :goto_0

    .line 4230
    .end local v8           #ratio:D
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_5
    if-nez v7, :cond_0

    .line 4231
    const-string v13, "Camera"

    const-string v14, "No preview size match the aspect ratio"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    const-wide v5, 0x7fefffffffffffffL

    .line 4233
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 4234
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v5

    if-gez v13, :cond_6

    .line 4235
    move-object v7, v10

    .line 4236
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v5, v13

    goto :goto_1
.end method

.method private getRequestRemaining()I
    .locals 2

    .prologue
    .line 3097
    const/4 v0, 0x1

    .line 3098
    .local v0, requestRemaining:I
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    packed-switch v1, :pswitch_data_0

    .line 3125
    :pswitch_0
    const/4 v0, 0x1

    .line 3127
    :goto_0
    return v0

    .line 3101
    :pswitch_1
    const/4 v0, 0x1

    .line 3102
    goto :goto_0

    .line 3105
    :pswitch_2
    const/4 v0, 0x2

    .line 3106
    goto :goto_0

    .line 3109
    :pswitch_3
    const/4 v0, 0x3

    .line 3110
    goto :goto_0

    .line 3113
    :pswitch_4
    const/4 v0, 0x1

    .line 3114
    goto :goto_0

    .line 3117
    :pswitch_5
    sget v0, Lcom/android/hwcamera/Config;->REWIND_PIC_NUM:I

    .line 3118
    goto :goto_0

    .line 3121
    :pswitch_6
    sget v0, Lcom/android/hwcamera/Config;->BURST_MAX_NUMBER:I

    .line 3122
    goto :goto_0

    .line 3098
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private getZoomRatios()[F
    .locals 6

    .prologue
    .line 846
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 847
    const/4 v2, 0x0

    .line 854
    :cond_0
    return-object v2

    .line 849
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 850
    .local v3, zoomRatios:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [F

    .line 851
    .local v2, result:[F
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 852
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    aput v4, v2, v0

    .line 851
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private goToPanoromaMode()Z
    .locals 3

    .prologue
    .line 5081
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5082
    :cond_0
    const/4 v0, 0x0

    .line 5089
    :goto_0
    return v0

    .line 5084
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z

    .line 5085
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5086
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "press_back_menu"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 5088
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 5089
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hdrProcessing([BLandroid/location/Location;)V
    .locals 6
    .parameter "jpegData"
    .parameter "location"

    .prologue
    const/4 v5, 0x1

    .line 1456
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    const/4 v1, 0x0

    .line 1460
    .local v1, hdrDone:Z
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    if-eqz v2, :cond_5

    .line 1462
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    if-eq v2, v3, :cond_2

    if-nez p1, :cond_4

    .line 1463
    :cond_2
    const/4 v1, 0x1

    .line 1471
    :goto_1
    if-eqz v1, :cond_0

    .line 1472
    iput-boolean v5, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    .line 1474
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1477
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1480
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_facedetection_key"

    const-string v4, "on"

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1482
    .local v0, faceDetectMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    if-eqz v2, :cond_3

    .line 1483
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/ParametersManager;->getFaceDecetionValue()Ljava/lang/String;

    move-result-object v0

    .line 1485
    :cond_3
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1486
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->startFaceDetection(Z)V

    goto :goto_0

    .line 1465
    .end local v0           #faceDetectMode:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1469
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private hidePostCaptureAlert()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4751
    iput v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 4752
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setCameraUIButCameraRoot(I)V

    .line 4753
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    .line 4754
    invoke-direct {p0, v1, v0}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 4755
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    if-nez v0, :cond_0

    .line 4756
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4759
    :cond_0
    return-void
.end method

.method private hideReview(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2326
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hideReviewUI()V

    .line 2327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    .line 2328
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 2329
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2330
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    .line 2332
    :cond_0
    return-void
.end method

.method private hideReviewUI()V
    .locals 2

    .prologue
    .line 2296
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2297
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->dismissReview()V

    .line 2298
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 2299
    return-void
.end method

.method private initCameraSwitcher()V
    .locals 2

    .prologue
    .line 2381
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    .line 2382
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 2383
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setCameraSwitcherIcon()V

    .line 2384
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    new-instance v1, Lcom/android/hwcamera/Camera$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$7;-><init>(Lcom/android/hwcamera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2392
    return-void
.end method

.method private initGridLines(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/16 v5, 0x8

    .line 2569
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-nez v2, :cond_0

    .line 2570
    const-string v2, "Camera"

    const-string v3, "initGridLines, but mPreferences is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    :goto_0
    return-void

    .line 2573
    :cond_0
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/GridLines;

    .line 2574
    .local v1, mGridLinesView:Lcom/android/hwcamera/hwui/GridLines;
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_grid_key"

    const v4, 0x7f0c00e8

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2576
    .local v0, gridLinesState:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GridLines;->setAnimationState(Z)V

    .line 2577
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2579
    if-eqz p1, :cond_1

    .line 2581
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto :goto_0

    .line 2584
    :cond_1
    invoke-virtual {v1, v5}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto :goto_0

    .line 2588
    :cond_2
    invoke-virtual {v1, v5}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto :goto_0
.end method

.method private initPanorama()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2486
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    if-nez v0, :cond_0

    .line 2487
    new-instance v0, Lcom/android/hwcamera/Camera$PanoramaBarListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/Camera$PanoramaBarListener;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    .line 2489
    :cond_0
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/PanoramaBar;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    .line 2490
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->registerListeners(Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;)V

    .line 2491
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setVisibility(I)V

    .line 2492
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2493
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 2494
    return-void
.end method

.method private initThumbnailButton()V
    .locals 3

    .prologue
    .line 767
    const-string v0, "Camera"

    const-string v1, "[Flow] initThumbnailButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "last_image_thumb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/hwcamera/Thumbnail;->loadFrom(Ljava/io/File;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 769
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    .line 770
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5753
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 5754
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5756
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5757
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    .line 5758
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mMeteringAreaSupported:Z

    .line 5759
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mAeLockSupported:Z

    .line 5760
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mAwbLockSupported:Z

    .line 5773
    :goto_0
    return-void

    .line 5764
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    .line 5767
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mMeteringAreaSupported:Z

    .line 5768
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mAeLockSupported:Z

    .line 5769
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mAwbLockSupported:Z

    .line 5771
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_3
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5764
    goto :goto_1

    :cond_2
    move v0, v2

    .line 5767
    goto :goto_2

    :cond_3
    move v2, v1

    .line 5771
    goto :goto_3
.end method

.method private initializeFirstTime()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 689
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] initializeFirstTime  mFirstTimeInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 695
    :cond_0
    new-instance v0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;-><init>(Lcom/android/hwcamera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    .line 696
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->enable()V

    .line 698
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepMediaProviderInstance()V

    .line 700
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 701
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 702
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initThumbnailButton()V

    .line 707
    :cond_1
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ShutterButton;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 708
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;)V

    .line 709
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonLongPressListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;)V

    .line 710
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 713
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLayout;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusIndicator:Lcom/android/hwcamera/hwui/RotateLayout;

    .line 714
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    aget-object v8, v0, v1

    .line 715
    .local v8, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v10, :cond_2

    move v5, v10

    .line 716
    .local v5, mirror:Z
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusIndicator:Lcom/android/hwcamera/hwui/RotateLayout;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v6, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/FocusManager;->initialize(Landroid/view/View;Landroid/view/View;Lcom/android/hwcamera/hwui/FaceView;Lcom/android/hwcamera/FocusManager$Listener;ZI)V

    .line 718
    new-instance v0, Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$ImageSaver;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    .line 719
    new-instance v0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 721
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeScreenBrightness()V

    .line 722
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->installIntentFilter()V

    .line 725
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSoundPlayer()V

    .line 727
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 728
    .local v7, cameraRootView:Landroid/view/ViewGroup;
    new-instance v0, Lcom/android/hwcamera/hwui/Review;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v7, v1}, Lcom/android/hwcamera/hwui/Review;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    .line 729
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/Review;->setComboPreference(Lcom/android/hwcamera/ComboPreferences;)V

    .line 730
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 732
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initCameraSwitcher()V

    .line 733
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeHeadUpDisplay()V

    .line 734
    iput-boolean v10, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    .line 736
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->addIdleHandler()V

    .line 737
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 738
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_gps_key"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_gps_key"

    invoke-static {v0, v1}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v9

    .line 745
    .local v9, recordLocation:Z
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0, v9}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    goto/16 :goto_0
.end method

.method private initializeHeadUpDisplay()V
    .locals 2

    .prologue
    .line 2280
    const-string v0, "Camera"

    const-string v1, "initializeHeadUpDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->loadCameraPreferences()V

    .line 2282
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getZoomRatios()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomRatios:[F

    .line 2283
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->flashModeInit()V

    .line 2284
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->superPanelInit()V

    .line 2286
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->initGridLines(Z)V

    .line 2289
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_shootmode_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 2292
    :cond_0
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mControlBarHeight:I

    .line 2293
    return-void
.end method

.method private initializeScreenBrightness()V
    .locals 6

    .prologue
    .line 3316
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3318
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3321
    .local v0, mode:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 3322
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 3323
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3f333333

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3324
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3326
    .end local v2           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private initializeSecondTime()V
    .locals 4

    .prologue
    .line 802
    const-string v1, "Camera"

    const-string v2, "initializeSecondTime"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->enable()V

    .line 804
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    if-nez v1, :cond_0

    .line 805
    new-instance v1, Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$ImageSaver;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    .line 807
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    if-nez v1, :cond_1

    .line 808
    new-instance v1, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 810
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateSuperPanel()V

    .line 811
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->installIntentFilter()V

    .line 814
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSoundPlayer()V

    .line 815
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 817
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepMediaProviderInstance()V

    .line 819
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_2

    .line 820
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    .line 823
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_shootmode_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 824
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 827
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 828
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_gps_key"

    const-string v3, "off"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_gps_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 834
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 835
    return-void
.end method

.method private initializeSoundPlayer()V
    .locals 4

    .prologue
    .line 3295
    const/4 v0, 0x1

    .line 3296
    .local v0, enforceAudible:Z
    const-string v1, "ro.camera.sound.forced"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3297
    const/4 v0, 0x0

    .line 3300
    :cond_0
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    .line 3302
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1, p0, v0}, Lcom/android/hwcamera/FocusManager;->initializeSoundPlayer(Landroid/content/Context;Z)V

    .line 3303
    return-void
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 3279
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3280
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3281
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3282
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3283
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3284
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3285
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3286
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    .line 3288
    return-void
.end method

.method private isBasedBurstShootMode(I)Z
    .locals 1
    .parameter "shootMode"

    .prologue
    .line 1930
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 1933
    :cond_0
    const/4 v0, 0x1

    .line 1935
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4714
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFrontCamera()Z
    .locals 1

    .prologue
    .line 5674
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v0, :cond_0

    .line 5675
    const/4 v0, 0x0

    .line 5677
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 4718
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4719
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isOnWidescreen()Z
    .locals 5

    .prologue
    .line 4552
    const-string v1, "off"

    .line 4553
    .local v1, widescreenstate:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsSupporetedWideScreen:Z

    if-eqz v2, :cond_0

    .line 4554
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_widescreen_key"

    const v4, 0x7f0c0039

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4559
    :goto_0
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4560
    .local v0, bwidescreenisState:Z
    return v0

    .line 4557
    .end local v0           #bwidescreenisState:Z
    :cond_0
    const-string v1, "off"

    goto :goto_0
.end method

.method private isStorageSpaceEnough()Z
    .locals 2

    .prologue
    .line 3636
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3637
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkCurrentStorage()V

    .line 3640
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3641
    const-string v0, "Camera"

    const-string v1, "space is low include sd card and phone "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    const/4 v0, 0x0

    .line 3644
    :goto_0
    return v0

    :cond_1
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

    .line 4244
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

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 683
    :cond_0
    return-void
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 5151
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5152
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5153
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 5155
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5156
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5157
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5158
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 4

    .prologue
    .line 2269
    new-instance v0, Lcom/android/hwcamera/CameraSettings;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 2271
    .local v0, settings:Lcom/android/hwcamera/CameraSettings;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraSettings;->getPreferenceGroup(I)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 2272
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_shootmode_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2273
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v1}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2274
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraSettings;->filterShootModePanoramaOptions(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 2277
    :cond_0
    return-void
.end method

.method private makeFirstZoomHintToast(I)V
    .locals 3
    .parameter "degree"

    .prologue
    const/4 v2, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraAppImpl;->isTimeToZoomHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraAppImpl;->resetMakeZoomHint(Z)V

    .line 761
    const v1, 0x7f0c009d

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, zoomHint:Ljava/lang/String;
    invoke-direct {p0, v0, v2, p1}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 764
    .end local v0           #zoomHint:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter "text"
    .parameter "duration"
    .parameter "orientation"

    .prologue
    .line 3267
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-nez v0, :cond_0

    .line 3268
    invoke-static {p0, p1, p2}, Lcom/android/hwcamera/hwui/RotateToast;->makeRotateText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 3273
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/RotateToast;->setOrientationEx(I)V

    .line 3274
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->show()V

    .line 3275
    return-void

    .line 3270
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 3271
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/hwui/RotateToast;->setDuration(I)V

    goto :goto_0
.end method

.method private needShutterButtonFocus(Z)Z
    .locals 6
    .parameter "pressed"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2946
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2980
    :cond_0
    :goto_0
    return v1

    .line 2951
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_auto_focusmode_key"

    const v5, 0x7f0c00ee

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2953
    .local v0, autoFocusValus:Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2958
    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v3, v2, :cond_0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    .line 2967
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2972
    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->canTakePicture()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2977
    :cond_3
    iget v3, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-nez v3, :cond_0

    move v1, v2

    .line 2980
    goto :goto_0
.end method

.method private onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 5117
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v3, :cond_0

    .line 5136
    :goto_0
    return-void

    .line 5123
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_gps_key"

    invoke-static {v3, v4}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v2

    .line 5126
    .local v2, recordLocation:Z
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 5127
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 5128
    .local v0, cameraId:I
    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-eq v3, v0, :cond_1

    .line 5129
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->switchCameraId(I)V

    goto :goto_0

    .line 5131
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5132
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 5133
    const/16 v3, 0xf

    iput v3, v1, Landroid/os/Message;->what:I

    .line 5134
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private releaseSoundPlayer()V
    .locals 1

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 3310
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 3311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    .line 3313
    :cond_0
    return-void
.end method

.method private requestUpdateThumbnail(Lcom/android/hwcamera/Thumbnail;)V
    .locals 2
    .parameter "thumb"

    .prologue
    .line 624
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 625
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 626
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 627
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    return-void
.end method

.method private resetMenuPreference()V
    .locals 5

    .prologue
    .line 2246
    const/4 v1, 0x0

    .line 2247
    .local v1, resetState:Z
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_tag"

    const-string v4, "cameratag"

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cameratag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2249
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_reset_tag"

    const-string v4, "reset"

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "reset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2251
    if-eqz v1, :cond_0

    .line 2252
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "press_back_menu"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2260
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 2261
    new-instance v0, Lcom/android/hwcamera/ResetPreference;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ResetPreference;-><init>(Landroid/content/Context;)V

    .line 2262
    .local v0, resetPreference:Lcom/android/hwcamera/ResetPreference;
    invoke-virtual {v0}, Lcom/android/hwcamera/ResetPreference;->resetCameraPreference()V

    .line 2263
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "press_back_menu"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    .end local v0           #resetPreference:Lcom/android/hwcamera/ResetPreference;
    :cond_1
    return-void

    .line 2256
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_tag"

    const-string v4, "cameratag"

    invoke-static {v2, v3, v4}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 5147
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5148
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5149
    return-void
.end method

.method private restoreParameterToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5200
    iput v2, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    .line 5201
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->flashModeUpdate()V

    .line 5202
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setCameraSwitcherIcon()V

    .line 5204
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->initGridLines(Z)V

    .line 5206
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 5207
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkStorage()V

    .line 5208
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5209
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 5210
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5211
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5212
    return-void
.end method

.method private restorePreferences()V
    .locals 5

    .prologue
    .line 5161
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v2, :cond_0

    .line 5189
    :goto_0
    return-void

    .line 5165
    :cond_0
    new-instance v1, Lcom/android/hwcamera/Camera$9;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$9;-><init>(Lcom/android/hwcamera/Camera;)V

    .line 5180
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_1

    .line 5181
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 5183
    :cond_1
    new-instance v2, Lcom/android/hwcamera/hwui/RotateDailog;

    const v3, 0x7f0c000c

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/hwcamera/hwui/RotateDailog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    .line 5185
    const v2, 0x7f080013

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5186
    .local v0, rootView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/hwui/RotateDailog;->setParentView(Landroid/view/View;)V

    .line 5187
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/RotateDailog;->createPopupWindowEx()V

    .line 5188
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    iget v3, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    goto :goto_0
.end method

.method private saveLocationInit()V
    .locals 5

    .prologue
    .line 4762
    invoke-static {p0}, Lcom/android/hwcamera/Storage;->saveLocationInit(Landroid/content/Context;)V

    .line 4765
    invoke-static {}, Lcom/android/hwcamera/Storage;->isInternalStorageExist()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    .line 4766
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    if-nez v2, :cond_0

    .line 4767
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4768
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_save_location_key"

    const-string v3, "memoryscard"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4769
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4770
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 4782
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 4775
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_save_location_key"

    const v4, 0x7f0c00d4

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4777
    .local v1, saveLocationValue:Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4778
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_0

    .line 4780
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_0
.end method

.method private setAutoFocus(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 5412
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5420
    :goto_0
    return-void

    .line 5415
    :cond_0
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5416
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->resume()V

    goto :goto_0

    .line 5418
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->pause()V

    goto :goto_0
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 4654
    iget v1, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    .line 4655
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_1

    .line 4658
    iput v2, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    .line 4671
    :cond_0
    :goto_0
    return-void

    .line 4660
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4661
    iget v1, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 4662
    iput v2, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 4664
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4665
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4666
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 4667
    iput v3, v0, Landroid/os/Message;->what:I

    .line 4668
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setCameraSwitcherIcon()V
    .locals 6

    .prologue
    const v5, 0x7f0c0013

    .line 2395
    const v0, 0x7f02007f

    .line 2396
    .local v0, switchCameraImageId:I
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_id_key"

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2398
    .local v1, switchCameraValue:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2399
    const v0, 0x7f02007f

    .line 2403
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 2404
    return-void

    .line 2401
    :cond_0
    const v0, 0x7f020080

    goto :goto_0
.end method

.method private setCameraUIButCameraRoot(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 3871
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3873
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3874
    return-void
.end method

.method private setCameraUIVisibility(I)V
    .locals 2
    .parameter "visiable"

    .prologue
    const/4 v1, 0x0

    .line 3877
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 3878
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->dissmissPopWindowNoAni()V

    .line 3879
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 3880
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setVisibility(I)V

    .line 3882
    :cond_0
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3883
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3884
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3885
    return-void
.end method

.method private setControlBarVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 5437
    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5438
    .local v0, controlBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5439
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5441
    :cond_0
    return-void
.end method

.method private setControlbarAndPanel(I)V
    .locals 2
    .parameter "visiable"

    .prologue
    const v1, 0x7f08001d

    .line 3888
    if-nez p1, :cond_0

    .line 3889
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 3890
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 3895
    :goto_0
    return-void

    .line 3892
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 3893
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setFlashModeEnable()V
    .locals 5

    .prologue
    const v3, 0x7f0c00d6

    const/4 v4, 0x1

    .line 2361
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    if-nez v1, :cond_1

    .line 2378
    :cond_0
    :goto_0
    return-void

    .line 2365
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-eq v1, v4, :cond_0

    .line 2368
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2369
    .local v0, shootmodeValue:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_2

    .line 2370
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_shootmode_key"

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2, v0}, Lcom/android/hwcamera/hwui/FlashImageView;->getFlashEnable(Lcom/android/hwcamera/ComboPreferences;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2374
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/hwui/FlashImageView;->setEnableEx(Z)V

    goto :goto_0

    .line 2376
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->setEnableEx(Z)V

    goto :goto_0
.end method

.method private setFlashSwitchIconVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 5423
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5424
    .local v0, flashSwitchIcon:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5425
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5427
    :cond_0
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 2681
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    .line 2682
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2683
    const v1, 0x7f08001c

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2684
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2687
    :cond_0
    rem-int/lit8 v1, p1, 0x5a

    if-nez v1, :cond_6

    .line 2688
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2689
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2690
    const v1, 0x7f080089

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2691
    const v1, 0x7f08008a

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2692
    const v1, 0x7f08008b

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2693
    const v1, 0x7f08008c

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateTextView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/RotateTextView;->setDegree(I)V

    .line 2694
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateTextView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/RotateTextView;->setDegree(I)V

    .line 2696
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v1, :cond_1

    .line 2697
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOrientationEx(I)V

    .line 2700
    :cond_1
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 2701
    .local v0, rotateShutter:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    if-eqz v0, :cond_2

    .line 2702
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setDegree(I)V

    .line 2704
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    if-eqz v1, :cond_3

    .line 2705
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/Review;->setOrientationEx(I)V

    .line 2707
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v1, :cond_4

    .line 2708
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 2710
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    if-eqz v1, :cond_5

    .line 2711
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 2713
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2714
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 2717
    .end local v0           #rotateShutter:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    :cond_6
    return-void
.end method

.method private setPictureSizeByKey(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 4564
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-nez v2, :cond_0

    .line 4565
    const-string v2, "Camera"

    const-string v3, "setPictureSizeByKey: mPreferences == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4584
    :goto_0
    return-void

    .line 4569
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4570
    .local v0, pictureSize:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 4571
    const-string v2, "pref_camera_picture_widescreen_key"

    if-ne p1, v2, :cond_1

    .line 4572
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {p0, v2, v3}, Lcom/android/hwcamera/CameraSettings;->initialCameraWideScreenPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 4574
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {p0, v2, v3}, Lcom/android/hwcamera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 4577
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_3

    .line 4578
    const-string v2, "Camera"

    const-string v3, "setPictureSizeByKey: mParameters == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4581
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 4582
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0
.end method

.method private setPreviewFrameAspectRatio()V
    .locals 9

    .prologue
    .line 4587
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v5, :cond_1

    .line 4588
    const-string v5, "Camera"

    const-string v6, "setPreviewFrameAspectRatio: mParameters == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    :cond_0
    :goto_0
    return-void

    .line 4593
    :cond_1
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 4594
    .local v3, size:Landroid/hardware/Camera$Size;
    if-nez v3, :cond_2

    .line 4595
    const-string v5, "Camera"

    const-string v6, "setPreviewFrameAspectRatio: size == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4598
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4599
    .local v0, msg:Landroid/os/Message;
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4600
    const/16 v5, 0x20

    iput v5, v0, Landroid/os/Message;->what:I

    .line 4601
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4605
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 4606
    .local v4, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v5, v5

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/Camera;->getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 4608
    .local v1, optimalSize:Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_0

    .line 4609
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 4610
    .local v2, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4611
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iget v7, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_0

    .line 4614
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    .line 4615
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in setPreviewFrameAspectRatio,mRestartPreviewNeed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPromptIconVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 5430
    const v1, 0x7f080088

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5431
    .local v0, PromptIcon:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5432
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5434
    :cond_0
    return-void
.end method

.method private setSmileIcon(I)V
    .locals 2
    .parameter "drawableId"

    .prologue
    .line 5649
    const v1, 0x7f08008a

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 5650
    .local v0, smileImageView:Lcom/android/hwcamera/RotateImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 5651
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 5652
    return-void
.end method

.method private setSuperPanelVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 5444
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 5445
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setHandleVisiable(I)V

    .line 5447
    :cond_0
    return-void
.end method

.method private setTimerpromptIcon()V
    .locals 2

    .prologue
    .line 2558
    const v1, 0x7f080089

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2559
    .local v0, promptTimer:Landroid/view/View;
    iget v1, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-nez v1, :cond_0

    .line 2560
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2564
    :goto_0
    return-void

    .line 2562
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 4723
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4724
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 4725
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 4726
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mCropValue:Ljava/lang/String;

    .line 4728
    :cond_0
    return-void
.end method

.method private showBarAndShutterButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3905
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showOnlyShutterButton()V

    .line 3906
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 3907
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3908
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3909
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3910
    return-void
.end method

.method private showCameraErrorAndFinish()V
    .locals 3

    .prologue
    .line 4055
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4056
    .local v0, ress:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/hwcamera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4058
    return-void
.end method

.method private showCameraStoppedAndFinish()V
    .locals 3

    .prologue
    .line 4061
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4062
    .local v0, ress:Landroid/content/res/Resources;
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/hwcamera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4064
    return-void
.end method

.method private showConfirmGpsDialog()V
    .locals 3

    .prologue
    .line 5216
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const-string v2, "pref_camera_gps_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setKey(Ljava/lang/String;)V

    .line 5217
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 5218
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5219
    .local v0, cameraRootView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/GPSDailog;->creatGpsDialogBox(Landroid/view/ViewGroup;)V

    .line 5220
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 5221
    return-void
.end method

.method private showEulaDialog()V
    .locals 4

    .prologue
    .line 5224
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 5225
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5226
    .local v0, cameraRootView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    new-instance v2, Lcom/android/hwcamera/Camera$10;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/Camera$10;-><init>(Lcom/android/hwcamera/Camera;)V

    const-string v3, "pref_camera_gps_key"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/hwcamera/hwui/GPSDailog;->creatFirstTimeDialogBox(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 5242
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 5243
    return-void
.end method

.method private showJointUi()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 2517
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 2518
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2519
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->clearPanoramaMessage()V

    .line 2520
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    if-eqz v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setVisibility(I)V

    .line 2523
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2524
    return-void
.end method

.method private showNormalUi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2552
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 2553
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setControlBarVisibility(I)V

    .line 2554
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2555
    return-void
.end method

.method private showOnlyShutterButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3897
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 3898
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3899
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3900
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3901
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3902
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4731
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v3, :cond_1

    .line 4732
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    if-eqz v3, :cond_0

    .line 4733
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    .line 4735
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4736
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4737
    .local v0, cameraRootView:Landroid/view/ViewGroup;
    const v3, 0x7f030004

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4739
    .local v2, invokeBar_land:Landroid/view/View;
    const v3, 0x7f080021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4740
    const v3, 0x7f080022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4741
    const v3, 0x7f080023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4742
    const v3, 0x7f080020

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4743
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->setCameraUIButCameraRoot(I)V

    .line 4744
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 4745
    iget v3, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->setOrientationInvokeAfterCaptureEx(I)V

    .line 4747
    .end local v0           #cameraRootView:Landroid/view/ViewGroup;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #invokeBar_land:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showThumbAndSwitcher()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3913
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showNormalUi()V

    .line 3914
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3915
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3916
    return-void
.end method

.method private startBurst(I)V
    .locals 5
    .parameter "maxPicNumber"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1175
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBurst() maxPicNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 1177
    iput p1, p0, Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I

    .line 1178
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    .line 1179
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 1180
    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 1181
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    .line 1182
    return-void
.end method

.method private startPanorama()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2475
    const-string v0, "Camera"

    const-string v1, "startPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    invoke-static {v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 2477
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 2478
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showOnlyShutterButton()V

    .line 2479
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 2480
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    if-eqz v0, :cond_0

    .line 2481
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    .line 2483
    :cond_0
    return-void
.end method

.method private startPanoramaViewer()V
    .locals 14

    .prologue
    const/16 v13, 0x15

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 631
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v0, :cond_0

    .line 632
    const-string v0, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t startPanoramaViewer as mPausing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThumbnail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 634
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closePanorama()V

    .line 635
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    .line 636
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 666
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 640
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 641
    .local v7, dispName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_display_name"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 643
    .local v6, dispCur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 644
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 647
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_reset_tag"

    const-string v3, "noreset"

    invoke-static {v0, v2, v3}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/Camera;->calculateHorizontalFieldOfView(ILandroid/hardware/Camera$Parameters;)F

    move-result v8

    .line 652
    .local v8, fov:F
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FOV="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 653
    .local v11, params:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.scalado.csps.PanoramaWall/data?imgPath="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v11, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 656
    .local v10, panouri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v9, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 657
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "uri"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 658
    const-string v0, "Camera"

    const-string v2, "[Flow] start PanoramaViewer acitivy"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/16 v0, 0xd

    invoke-virtual {p0, v9, v0}, Lcom/android/hwcamera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 664
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 665
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closePanorama()V

    goto/16 :goto_0

    .line 653
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #panouri:Landroid/net/Uri;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private startPreview()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4101
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4162
    :cond_0
    :goto_0
    return-void

    .line 4104
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->openCameraDevice()V

    .line 4105
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4110
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v1, :cond_2

    .line 4111
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    .line 4112
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in startPreview to stop preview, mRestartPreviewNeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4113
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopPreview()V

    .line 4116
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 4117
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->setDisplayOrientation()V

    .line 4118
    iget v1, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->setFaceOrientation(I)Z

    .line 4119
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-static {p0, v1, v2}, Lcom/android/hwcamera/Util;->setCameraDisplayOrientation(Landroid/app/Activity;ILcom/android/hwcamera/HwCamera;)V

    .line 4121
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/FocusManager;->setAeAwbLock(Z)V

    .line 4122
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 4129
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4131
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->cancelAutoFocus(I)V

    .line 4133
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mErrorCallback:Lcom/android/hwcamera/Camera$ErrorCallback;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4136
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4137
    :try_start_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->startPreview()V

    .line 4138
    const-string v1, "Camera"

    const-string v3, "[Flow] Preview started!"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4139
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 4140
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4141
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4146
    iput v4, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    .line 4150
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4151
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->startFaceDetection(Z)V

    .line 4152
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->onPreviewStarted()V

    .line 4155
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v1, :cond_4

    .line 4156
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 4159
    :cond_4
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 4141
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 4142
    :catch_0
    move-exception v0

    .line 4143
    .local v0, ex:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 4144
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopBurst()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1188
    const-string v1, "Camera"

    const-string v2, "stopBurst()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 1190
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 1191
    invoke-static {}, Lcom/android/hwcamera/Util;->cancelTakePictureEx()Z

    .line 1192
    iput v3, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 1193
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1194
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1195
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1196
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1197
    return-void
.end method

.method private stopCaptureIfNeed()V
    .locals 6

    .prologue
    const/16 v5, 0x17

    const/16 v4, 0xe

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1024
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v2, :cond_3

    .line 1025
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    .line 1044
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v3, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1047
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1048
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1050
    :cond_1
    return-void

    .line 1027
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto :goto_0

    .line 1030
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v3, :cond_4

    .line 1031
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1033
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    goto :goto_0

    .line 1035
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1036
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 1039
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1041
    :cond_5
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1042
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    goto :goto_0
.end method

.method private stopPanorama(Z)V
    .locals 4
    .parameter "bShot"

    .prologue
    .line 2507
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPanorama bShot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCameraStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2509
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2510
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2511
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2512
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 2513
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showJointUi()V

    .line 2514
    return-void

    .line 2509
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stopSmileCapture()V
    .locals 2

    .prologue
    .line 3924
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-eqz v0, :cond_0

    .line 3925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    .line 3926
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 3927
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showThumbAndSwitcher()V

    .line 3928
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOnAwhile()V

    .line 3929
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3930
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 3932
    :cond_0
    return-void
.end method

.method private superPanelInit()V
    .locals 3

    .prologue
    .line 2594
    const v1, 0x7f080037

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/SuperPanel;

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 2595
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 2596
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 2597
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 2598
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setCameraCaptureIntent(Z)V

    .line 2600
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setIsInternalStorageExist(Z)V

    .line 2602
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateSuperPanel()V

    .line 2603
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 2604
    .local v0, popSettings:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->initSettingmenu(Lcom/android/hwcamera/hwui/RotateLinearLayout;)V

    .line 2605
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setCurrentState(Z)V

    .line 2606
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->initImageSubPanel()V

    .line 2607
    return-void
.end method

.method private switchCameraId(I)V
    .locals 5
    .parameter "cameraId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4834
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] switchCameraId() cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstTimeInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4863
    :cond_0
    :goto_0
    return-void

    .line 4837
    :cond_1
    iput p1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    .line 4838
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 4841
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4843
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-ne v0, v4, :cond_2

    .line 4844
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4845
    invoke-static {v3}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 4849
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    .line 4850
    iput v3, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    .line 4851
    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/Camera;->enableCameraControl(ZZ)V

    .line 4853
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 4854
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 4857
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4858
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_gps_key"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 4862
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private switchCameraUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4923
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_gps_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 4926
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 4929
    invoke-direct {p0, v3, v3}, Lcom/android/hwcamera/Camera;->enableCameraControl(ZZ)V

    .line 4931
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 4932
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeHeadUpDisplay()V

    .line 4935
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->flashModeUpdate()V

    .line 4936
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_shootmode_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4937
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 4939
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v1, :cond_2

    .line 4940
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f02007f

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 4944
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkCurrentStorage()V

    .line 4945
    return-void

    .line 4942
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f020080

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private switchPreviewSize()V
    .locals 11

    .prologue
    .line 5686
    iget-object v8, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-nez v8, :cond_0

    .line 5714
    :goto_0
    return-void

    .line 5692
    :cond_0
    iget-object v8, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 5693
    .local v5, size:Landroid/hardware/Camera$Size;
    if-eqz v5, :cond_1

    .line 5694
    iget v2, v5, Landroid/hardware/Camera$Size;->height:I

    .line 5695
    .local v2, previewHeight:I
    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    .line 5712
    .local v3, previewWidth:I
    :goto_1
    const-string v8, "Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchPreviewSize, size = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    iget-object v8, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v8, v3, v2}, Lcom/android/hwcamera/hwui/FaceView;->setScale(II)V

    goto :goto_0

    .line 5697
    .end local v2           #previewHeight:I
    .end local v3           #previewWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 5698
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5699
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5700
    .local v1, height:I
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5702
    .local v7, width:I
    iget-object v8, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v8}, Lcom/android/hwcamera/ParametersManager;->getWideScreenValue()Ljava/lang/String;

    move-result-object v6

    .line 5703
    .local v6, wideScreenState:Ljava/lang/String;
    const-string v8, "on"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5704
    move v3, v7

    .line 5705
    .restart local v3       #previewWidth:I
    move v2, v1

    .restart local v2       #previewHeight:I
    goto :goto_1

    .line 5707
    .end local v2           #previewHeight:I
    .end local v3           #previewWidth:I
    :cond_2
    mul-int/lit8 v8, v1, 0x4

    div-int/lit8 v3, v8, 0x3

    .line 5708
    .restart local v3       #previewWidth:I
    move v2, v1

    .restart local v2       #previewHeight:I
    goto :goto_1
.end method

.method private switchReview()V
    .locals 2

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2303
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2304
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->switchVisible()V

    .line 2305
    return-void
.end method

.method private switchToOtherMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x2

    .line 4818
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4819
    const/4 v0, 0x0

    .line 4830
    :goto_0
    return v0

    .line 4820
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    .line 4821
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$ImageSaver;->waitDone()V

    .line 4822
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    if-eqz v0, :cond_2

    .line 4823
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->waitDone()V

    .line 4824
    :cond_2
    invoke-static {p1, p0}, Lcom/android/hwcamera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 4825
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4827
    if-eq p1, v1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    .line 4828
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 4830
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchToVideoMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5062
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5077
    :cond_0
    :goto_0
    return v0

    .line 5066
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 5071
    const-string v0, "Camera"

    const-string v1, "[Flow] SwitchToVideoMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5072
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5073
    invoke-static {p0}, Lcom/android/hwcamera/MenuHelper;->gotoVideoMode(Landroid/app/Activity;)V

    .line 5074
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5075
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 5076
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 5077
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateCameraParametersFocus()V
    .locals 5

    .prologue
    .line 4278
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mAeLockSupported:Z

    if-eqz v2, :cond_0

    .line 4279
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->getAeAwbLock()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 4281
    :cond_0
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mAwbLockSupported:Z

    if-eqz v2, :cond_1

    .line 4282
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->getAeAwbLock()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 4285
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "touch-af-aec"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4286
    .local v1, touch:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "touch-off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4287
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "touch-af-aec"

    const-string v4, "touch-on"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4289
    :cond_2
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mMeteringAreaSupported:Z

    if-eqz v2, :cond_3

    .line 4291
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 4293
    :cond_3
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    if-eqz v2, :cond_4

    .line 4295
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 4305
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/ParametersManager;->getAutoFocusValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4306
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4310
    :goto_1
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCameraParametersFocus focus Mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v4}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 4312
    return-void

    .line 4298
    :cond_4
    const/4 v2, 0x2

    new-array v0, v2, [F

    .line 4299
    .local v0, Coordinate:[F
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/hwcamera/FocusManager;->transformCoordinate([FLandroid/view/SurfaceView;Landroid/hardware/Camera$Size;)V

    .line 4301
    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->setTouchPosition(II)V

    goto :goto_0

    .line 4308
    .end local v0           #Coordinate:[F
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateCameraParametersInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4248
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_1

    .line 4266
    :cond_0
    :goto_0
    return-void

    .line 4253
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 4254
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 4258
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4259
    .local v1, value:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hw_auto_framerate"

    invoke-static {v2, v3, v4}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4260
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 4261
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4264
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_0
.end method

.method private updateCameraParametersPreference()V
    .locals 34

    .prologue
    .line 4316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/Camera;->mFirstEnter:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 4317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/hwcamera/CameraSettings;->isSupportWideScreen(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/Camera;->mIsSupporetedWideScreen:Z

    .line 4319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/hwcamera/ParametersManager;->setScenceDefaultValue(Landroid/hardware/Camera$Parameters;)V

    .line 4321
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/Camera;->mFirstEnter:Z

    .line 4323
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->setConflitParameters()V

    .line 4324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getShootingmodeIndex()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 4325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getReviewValue()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/hwcamera/Camera;->mReviewTime:I

    .line 4326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getTimerValue()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/hwcamera/Camera;->mTimerValue:I

    .line 4328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const/16 v32, 0x24

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getFaceDecetionValue()Ljava/lang/String;

    move-result-object v11

    .line 4331
    .local v11, faceDetectionValue:Ljava/lang/String;
    const-string v31, "off"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 4332
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->stopFaceDetection()V

    .line 4343
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    move/from16 v31, v0

    const/16 v32, 0x7

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_17

    .line 4347
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->isOnWidescreen()Z

    move-result v31

    if-eqz v31, :cond_16

    .line 4348
    const-string v31, "pref_camera_picture_widescreen_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/hwcamera/Camera;->setPictureSizeByKey(Ljava/lang/String;)V

    .line 4360
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->setPreviewFrameAspectRatio()V

    .line 4364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getSceneValue()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    .line 4365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 4366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1

    .line 4367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    .line 4369
    :cond_1
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    .line 4371
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3

    .line 4372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4373
    const-string v31, "Camera"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "updateCameraParametersPreference is null!, get new mParameters="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 4376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 4377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4384
    const-string v31, "Camera"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "updateCameraParametersPreference reget Parametersas,as set scene mode= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4396
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_jpegquality_key"

    const v33, 0x7f0c003b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4399
    .local v15, jpegQuality:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    .line 4400
    .local v18, pic_size:Landroid/hardware/Camera$Size;
    const-string v31, "100"

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1a

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v31, v0

    const/16 v32, 0xc80

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_1a

    .line 4408
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getIsoValue()Ljava/lang/String;

    move-result-object v14

    .line 4409
    .local v14, iso:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_5

    .line 4410
    const-string v31, "KEY_HUAWEI_ISO"

    invoke-static/range {v31 .. v31}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    .line 4412
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_6

    const-string v31, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_6

    .line 4413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4417
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getContrastValue()Ljava/lang/String;

    move-result-object v7

    .line 4418
    .local v7, contrastStr:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v32

    mul-int v31, v31, v32

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinContrast()I

    move-result v32

    add-int v8, v31, v32

    .line 4419
    .local v8, contrastValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_7

    .line 4420
    const-string v31, "KEY_HUAWEI_CONTRAST"

    invoke-static/range {v31 .. v31}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    .line 4422
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    const-string v31, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_8

    .line 4423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 4427
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_antibanding_key"

    const v33, 0x7f0c0124

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4429
    .local v3, antiBanding:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v3, v0}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 4430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 4433
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getBrightnessValue()Ljava/lang/String;

    move-result-object v4

    .line 4434
    .local v4, brightnessStr:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v32

    mul-int v31, v31, v32

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v32

    add-int v5, v31, v32

    .line 4436
    .local v5, brightnessValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_a

    .line 4437
    const-string v31, "KEY_HUAWEI_BRIGHTNESS"

    invoke-static/range {v31 .. v31}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    .line 4439
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_b

    const-string v31, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 4440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4443
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getSaturationValue()Ljava/lang/String;

    move-result-object v23

    .line 4444
    .local v23, saturationStr:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v32

    mul-int v31, v31, v32

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v32

    add-int v24, v31, v32

    .line 4446
    .local v24, saturationValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_c

    .line 4447
    const-string v31, "KEY_HUAWEI_SATURATION"

    invoke-static/range {v31 .. v31}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    .line 4449
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    const-string v31, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_d

    .line 4450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4456
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getColorEffectValue()Ljava/lang/String;

    move-result-object v6

    .line 4457
    .local v6, colorEffect:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 4458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 4461
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getDistortionValue()Ljava/lang/String;

    move-result-object v9

    .line 4462
    .local v9, distorvalue:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/hwcamera/Util;->setDistortionValue(Ljava/lang/String;)V

    .line 4465
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/Camera;->mRecordLocation:Z

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 4467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 4468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 4469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 4470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 4476
    :cond_f
    const v31, 0x7f0c003c

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 4477
    .local v19, pictureFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "picture-format"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getFlashValue()Ljava/lang/String;

    move-result-object v12

    .line 4481
    .local v12, flashMode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v28

    .line 4482
    .local v28, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v28

    invoke-static {v12, v0}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 4483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4492
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getWhiteBalanceValue()Ljava/lang/String;

    move-result-object v30

    .line 4493
    .local v30, whiteBalance:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 4494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 4502
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getRedEyeReductionValue()Ljava/lang/String;

    move-result-object v22

    .line 4503
    .local v22, redEyeReductionValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/hwcamera/Util;->getRedEyeReductionSupported()Z

    move-result v31

    if-eqz v31, :cond_12

    .line 4504
    const-string v31, "on"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Lcom/android/hwcamera/Util;->setRedEyeReduction(Z)V

    .line 4506
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersFocus()V

    .line 4510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v16

    .line 4511
    .local v16, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v17

    .line 4512
    .local v17, min:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v26

    .line 4513
    .local v26, step:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getExposureValue()Ljava/lang/String;

    move-result-object v10

    .line 4514
    .local v10, exposure:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 4515
    .local v29, value:I
    move/from16 v0, v29

    move/from16 v1, v17

    if-lt v0, v1, :cond_1d

    move/from16 v0, v29

    move/from16 v1, v16

    if-gt v0, v1, :cond_1d

    .line 4516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v26

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 4522
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_hdr_save_mode"

    const v33, 0x7f0c00a2

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4525
    .local v13, hdrSaveMode:Ljava/lang/String;
    const-string v31, "on"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    .line 4527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lcom/android/hwcamera/Util;->setHdrSaveMode(ZLandroid/hardware/Camera$Parameters;)V

    .line 4529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 4530
    const-string v31, "on"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lcom/android/hwcamera/Util;->setHdrMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    .line 4536
    :goto_7
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v31

    if-eqz v31, :cond_13

    .line 4537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "recording-hint"

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4538
    .local v21, recordhintValue:Ljava/lang/String;
    const-string v31, "false"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_13

    .line 4539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 4543
    .end local v21           #recordhintValue:Ljava/lang/String;
    :cond_13
    const-string v31, "ro.camera.shuttersound"

    const-string v32, "0"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "1"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 4544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_shutter_sound_key"

    const-string v33, "on"

    invoke-virtual/range {v31 .. v33}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 4545
    .local v25, shutterSound:Ljava/lang/String;
    const-string v31, "Camera"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "silent Option:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/HwCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v31

    const-string v32, "off"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/android/hwcamera/Util;->setSilentOption(Ljava/lang/Object;Z)V

    .line 4549
    .end local v25           #shutterSound:Ljava/lang/String;
    :cond_14
    return-void

    .line 4334
    .end local v3           #antiBanding:Ljava/lang/String;
    .end local v4           #brightnessStr:Ljava/lang/String;
    .end local v5           #brightnessValue:I
    .end local v6           #colorEffect:Ljava/lang/String;
    .end local v7           #contrastStr:Ljava/lang/String;
    .end local v8           #contrastValue:I
    .end local v9           #distorvalue:Ljava/lang/String;
    .end local v10           #exposure:Ljava/lang/String;
    .end local v12           #flashMode:Ljava/lang/String;
    .end local v13           #hdrSaveMode:Ljava/lang/String;
    .end local v14           #iso:Ljava/lang/String;
    .end local v15           #jpegQuality:Ljava/lang/String;
    .end local v16           #max:I
    .end local v17           #min:I
    .end local v18           #pic_size:Landroid/hardware/Camera$Size;
    .end local v19           #pictureFormat:Ljava/lang/String;
    .end local v22           #redEyeReductionValue:Ljava/lang/String;
    .end local v23           #saturationStr:Ljava/lang/String;
    .end local v24           #saturationValue:I
    .end local v26           #step:F
    .end local v28           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v29           #value:I
    .end local v30           #whiteBalance:Ljava/lang/String;
    :cond_15
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->startFaceDetection(Z)V

    goto/16 :goto_0

    .line 4350
    :cond_16
    const-string v31, "pref_camera_picturesize_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/hwcamera/Camera;->setPictureSizeByKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4353
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->isOnWidescreen()Z

    move-result v31

    if-nez v31, :cond_18

    .line 4354
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    .line 4356
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getPictureSizevalueValue()Ljava/lang/String;

    move-result-object v20

    .line 4357
    .local v20, pictureSize:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v27

    .line 4358
    .local v27, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_1

    .line 4387
    .end local v20           #pictureSize:Ljava/lang/String;
    .end local v27           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    .line 4388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_4

    .line 4390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getScenceDefaultValue()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 4402
    .restart local v15       #jpegQuality:Ljava/lang/String;
    .restart local v18       #pic_size:Landroid/hardware/Camera$Size;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-static {v15}, Lcom/android/hwcamera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    goto/16 :goto_3

    .line 4485
    .restart local v3       #antiBanding:Ljava/lang/String;
    .restart local v4       #brightnessStr:Ljava/lang/String;
    .restart local v5       #brightnessValue:I
    .restart local v6       #colorEffect:Ljava/lang/String;
    .restart local v7       #contrastStr:Ljava/lang/String;
    .restart local v8       #contrastValue:I
    .restart local v9       #distorvalue:Ljava/lang/String;
    .restart local v12       #flashMode:Ljava/lang/String;
    .restart local v14       #iso:Ljava/lang/String;
    .restart local v19       #pictureFormat:Ljava/lang/String;
    .restart local v23       #saturationStr:Ljava/lang/String;
    .restart local v24       #saturationValue:I
    .restart local v28       #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v12

    .line 4486
    if-nez v12, :cond_10

    .line 4487
    const v31, 0x7f0c0043

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 4496
    .restart local v30       #whiteBalance:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v30

    .line 4497
    if-nez v30, :cond_11

    .line 4498
    const-string v30, "auto"

    goto/16 :goto_5

    .line 4518
    .restart local v10       #exposure:Ljava/lang/String;
    .restart local v16       #max:I
    .restart local v17       #min:I
    .restart local v22       #redEyeReductionValue:Ljava/lang/String;
    .restart local v26       #step:F
    .restart local v29       #value:I
    :cond_1d
    const-string v31, "Camera"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "invalid exposure range: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4532
    .restart local v13       #hdrSaveMode:Ljava/lang/String;
    :cond_1e
    const-string v31, "off"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lcom/android/hwcamera/Util;->setHdrMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_7
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 4270
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 4271
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4272
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4275
    :cond_0
    return-void
.end method

.method private updateDelayTakePictureTime()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 5473
    const v2, 0x7f08000f

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5474
    .local v0, mCounterDownView:Landroid/widget/TextView;
    iget v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    if-lez v2, :cond_2

    .line 5476
    const-string v2, "ro.camera.support.led"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5477
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    invoke-static {v2}, Lcom/android/hwcamera/LedLightManager;->ledoff(Landroid/app/NotificationManager;)V

    .line 5478
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v2, v3}, Lcom/android/hwcamera/LedLightManager;->ledOn(Landroid/app/NotificationManager;I)V

    .line 5481
    :cond_0
    iget v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    iget v3, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-ne v2, v3, :cond_1

    .line 5482
    invoke-direct {p0, v5}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 5484
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 5485
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v2}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 5486
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5487
    iget v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5488
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 5489
    .local v1, selftTimer:Landroid/view/animation/Animation;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5490
    iget v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    add-int/lit16 v2, v2, -0x3e8

    iput v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 5491
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5506
    .end local v1           #selftTimer:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 5493
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5494
    const v2, 0x7f080013

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5495
    const v2, 0x7f080088

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5496
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5497
    iget v2, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    iput v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 5498
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 5499
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    if-eqz v2, :cond_3

    .line 5500
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    .line 5501
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    goto :goto_0

    .line 5503
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doTakePicture()V

    goto :goto_0
.end method

.method private updatePhoneStorageHint(J)V
    .locals 8
    .parameter "phoneAvailableSpace"

    .prologue
    .line 3227
    const/4 v2, 0x0

    .line 3228
    .local v2, SdCardRemaining:I
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    .line 3229
    .local v0, SDCardStorageSpace:J
    const-wide/32 v6, 0x1400000

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 3230
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v2

    .line 3233
    :cond_0
    const/4 v3, 0x0

    .line 3234
    .local v3, isChangeStorage:Z
    const/4 v5, 0x0

    .line 3235
    .local v5, toastText:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v4

    .line 3236
    .local v4, requestRemain:I
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_3

    .line 3238
    const/4 v3, 0x0

    .line 3239
    const v6, 0x7f0c011c

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3255
    :goto_0
    if-eqz v5, :cond_1

    .line 3256
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 3259
    :cond_1
    if-eqz v3, :cond_2

    .line 3260
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 3261
    iput v2, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 3263
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 3264
    return-void

    .line 3240
    :cond_3
    const-wide/16 v6, -0x2

    cmp-long v6, v0, v6

    if-nez v6, :cond_4

    .line 3242
    const/4 v3, 0x0

    .line 3243
    const v6, 0x7f0c011e

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3246
    :cond_4
    if-lt v2, v4, :cond_5

    .line 3247
    const/4 v3, 0x1

    .line 3248
    const v6, 0x7f0c0121

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3250
    :cond_5
    const/4 v3, 0x0

    .line 3251
    const v6, 0x7f0c0120

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private updatePicSizePrefKey()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1278
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isOnWidescreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1279
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_picture_widescreen_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1284
    .local v2, picutureSize:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_jpegquality_key"

    const v5, 0x7f0c003b

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    .local v1, picQuality:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_coloreffect_key"

    const v5, 0x7f0c0050

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1290
    .local v0, colorEfect:Ljava/lang/String;
    new-instance v3, Lcom/android/hwcamera/PictureRemaining$Key;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/hwcamera/PictureRemaining$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;

    .line 1291
    return-void

    .line 1281
    .end local v0           #colorEfect:Ljava/lang/String;
    .end local v1           #picQuality:Ljava/lang/String;
    .end local v2           #picutureSize:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_picturesize_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #picutureSize:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateSDCardStorageHint(J)V
    .locals 9
    .parameter "SDCardAvailableSpace"

    .prologue
    .line 3159
    iget-boolean v7, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    if-nez v7, :cond_2

    .line 3160
    const/4 v5, 0x0

    .line 3161
    .local v5, toastContent:Ljava/lang/String;
    const-wide/16 v7, -0x1

    cmp-long v7, p1, v7

    if-nez v7, :cond_0

    .line 3163
    const v7, 0x7f0c0009

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3171
    :goto_0
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v5, v7, v8}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 3172
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 3224
    .end local v5           #toastContent:Ljava/lang/String;
    :goto_1
    return-void

    .line 3164
    .restart local v5       #toastContent:Ljava/lang/String;
    :cond_0
    const-wide/16 v7, -0x2

    cmp-long v7, p1, v7

    if-nez v7, :cond_1

    .line 3166
    const v7, 0x7f0c000b

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3169
    :cond_1
    const v7, 0x7f0c000a

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3177
    .end local v5           #toastContent:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 3178
    .local v2, internalRemaining:I
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    .line 3179
    .local v0, InternalStorageSpace:J
    const-wide/32 v7, 0x1400000

    cmp-long v7, v0, v7

    if-lez v7, :cond_3

    .line 3180
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v2

    .line 3183
    :cond_3
    const/4 v3, 0x0

    .line 3184
    .local v3, isChangeStorage:Z
    const/4 v6, 0x0

    .line 3185
    .local v6, toastText:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v4

    .line 3186
    .local v4, requestRemain:I
    const-wide/16 v7, -0x1

    cmp-long v7, p1, v7

    if-nez v7, :cond_7

    .line 3188
    if-lt v2, v4, :cond_6

    .line 3189
    const/4 v3, 0x1

    .line 3190
    const v7, 0x7f0c011b

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3215
    :goto_2
    if-eqz v6, :cond_4

    .line 3216
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 3219
    :cond_4
    if-eqz v3, :cond_5

    .line 3220
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 3221
    iput v2, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 3223
    :cond_5
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    goto :goto_1

    .line 3192
    :cond_6
    const/4 v3, 0x0

    .line 3193
    const v7, 0x7f0c011c

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 3195
    :cond_7
    const-wide/16 v7, -0x2

    cmp-long v7, p1, v7

    if-nez v7, :cond_9

    .line 3197
    if-lt v2, v4, :cond_8

    .line 3198
    const/4 v3, 0x1

    .line 3199
    const v7, 0x7f0c011d

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 3201
    :cond_8
    const/4 v3, 0x0

    .line 3202
    const v7, 0x7f0c011e

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 3206
    :cond_9
    if-lt v2, v4, :cond_a

    .line 3207
    const/4 v3, 0x1

    .line 3208
    const v7, 0x7f0c011f

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 3210
    :cond_a
    const/4 v3, 0x0

    .line 3211
    const v7, 0x7f0c0120

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method private updateShootMode(Ljava/lang/String;)V
    .locals 11
    .parameter "shootmode"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 4952
    move-object v2, p1

    .line 4953
    .local v2, value:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v3, :cond_1

    .line 4954
    const v3, 0x7f0c00d6

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4959
    :cond_0
    :goto_0
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Flow] updateShootMode shootmode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    if-nez v2, :cond_2

    .line 5020
    :goto_1
    return-void

    .line 4955
    :cond_1
    if-nez p1, :cond_0

    .line 4956
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_shootmode_key"

    const v5, 0x7f0c00d6

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4963
    :cond_2
    move-object v1, v2

    .line 4964
    .local v1, shootingMode:Ljava/lang/String;
    const-string v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4966
    :cond_3
    const-string v1, "burst"

    .line 4969
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4970
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4971
    const/16 v3, 0xa

    iput v3, v0, Landroid/os/Message;->what:I

    .line 4972
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4974
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4975
    const v3, 0x7f080011

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4976
    invoke-static {v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 4979
    :cond_5
    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v3, v10, :cond_6

    const-string v3, "smile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4980
    invoke-static {v6}, Lcom/android/hwcamera/Util;->setSmileDetection(Z)V

    .line 4982
    :cond_6
    invoke-direct {p0, v6, v6}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 4984
    const v3, 0x7f08008a

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4985
    const-string v3, "single"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4987
    iput v6, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 5017
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setFirstLevelMenuEnableByShoot(Ljava/lang/String;)V

    .line 5018
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const-string v4, "pref_camera_shootmode_key"

    const v5, 0x7f08003d

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5019
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setFlashModeEnable()V

    goto :goto_1

    .line 4988
    :cond_8
    const-string v3, "hdr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4990
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto :goto_2

    .line 4991
    :cond_9
    const-string v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4993
    iput v9, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto :goto_2

    .line 4994
    :cond_a
    const-string v3, "panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4996
    invoke-static {v9}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 4997
    iput v8, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 4998
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    goto :goto_2

    .line 4999
    :cond_b
    const-string v3, "burst"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5001
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto :goto_2

    .line 5002
    :cond_c
    const-string v3, "smile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5003
    iput v10, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 5004
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5005
    iput v8, v0, Landroid/os/Message;->arg1:I

    .line 5006
    const/16 v3, 0xb

    iput v3, v0, Landroid/os/Message;->what:I

    .line 5007
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 5008
    :cond_d
    const-string v3, "beauty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5009
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto :goto_2

    .line 5010
    :cond_e
    const-string v3, "zsl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5011
    iput v7, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto :goto_2

    .line 5012
    :cond_f
    const-string v3, "lowlight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5013
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto/16 :goto_2

    .line 5014
    :cond_10
    const-string v3, "action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5015
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto/16 :goto_2
.end method

.method private updateStorageHint(ZJ)V
    .locals 0
    .parameter "isSaveToSDCard"
    .parameter "storageAvailableSpace"

    .prologue
    .line 3150
    if-eqz p1, :cond_0

    .line 3151
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/Camera;->updateSDCardStorageHint(J)V

    .line 3155
    :goto_0
    return-void

    .line 3153
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/Camera;->updatePhoneStorageHint(J)V

    goto :goto_0
.end method

.method private updateStorageHintEx(Z)V
    .locals 3
    .parameter "isPriorSaveInSDCard"

    .prologue
    .line 3131
    const/4 v0, 0x0

    .line 3132
    .local v0, storageText:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 3133
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3147
    :cond_0
    :goto_0
    return-void

    .line 3136
    :cond_1
    const v1, 0x7f0c0122

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3137
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 3144
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 3145
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 3139
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3140
    const v1, 0x7f0c0123

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3141
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_1
.end method

.method private updateSuperPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5191
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 5192
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v0, :cond_1

    .line 5193
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToBackCamera(Z)V

    .line 5198
    :cond_0
    :goto_0
    return-void

    .line 5195
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToFrontCamera(Z)V

    goto :goto_0
.end method

.method private updateThumbnailButton()V
    .locals 4

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 778
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    if-ltz v0, :cond_2

    .line 781
    new-instance v0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/hwcamera/Camera$3;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/Camera$3;-><init>(Lcom/android/hwcamera/Camera;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;-><init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->start()V

    .line 796
    :cond_1
    :goto_0
    return-void

    .line 792
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private viewLastImage()V
    .locals 8

    .prologue
    .line 4674
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v5, :cond_0

    .line 4699
    :goto_0
    return-void

    .line 4677
    :cond_0
    const-string v5, "Camera"

    const-string v6, "[Flow] viewLastImage"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4678
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v5}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4679
    const-string v4, "com.cooliris.media.action.REVIEW"

    .line 4680
    .local v4, intentStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4681
    const-string v4, "com.android.camera.action.REVIEW"

    .line 4683
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v5}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4685
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4694
    :goto_1
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v6, "pref_camera_reset_tag"

    const-string v7, "noreset"

    invoke-static {v5, v6, v7}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4686
    :catch_0
    move-exception v1

    .line 4688
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v6}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4689
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 4692
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 4690
    :catch_1
    move-exception v0

    .line 4691
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_2
    const-string v5, "Camera"

    const-string v6, "review image fail"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4697
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #intentStr:Ljava/lang/String;
    :cond_2
    const-string v5, "Camera"

    const-string v6, "Can\'t view last image."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4690
    .restart local v1       #ex:Landroid/content/ActivityNotFoundException;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #intentStr:Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method private waitPreviewOpened()V
    .locals 3

    .prologue
    .line 2227
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2228
    :try_start_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2229
    const-string v0, "Camera"

    const-string v2, "[Flow] onCreate waite preview started!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 2232
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    if-eqz v0, :cond_1

    .line 2233
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showCameraErrorAndFinish()V

    .line 2234
    monitor-exit v1

    .line 2243
    :goto_0
    return-void

    .line 2235
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    if-eqz v0, :cond_2

    .line 2236
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showCameraErrorAndFinish()V

    .line 2237
    monitor-exit v1

    goto :goto_0

    .line 2239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2240
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2239
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    .prologue
    .line 3655
    const-string v1, "Camera"

    const-string v2, "[Flow] Send msg to start autoFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    .line 3659
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 3661
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3662
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mAutoFocusCallback:Lcom/android/hwcamera/Camera$AutoFocusCallback;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3663
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3664
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3665
    return-void
.end method

.method public canDoFocus()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 5656
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5665
    :cond_0
    :goto_0
    return v0

    .line 5660
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    .line 5665
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancelAutoFocus(I)V
    .locals 3
    .parameter "setState"

    .prologue
    .line 3669
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    if-nez v1, :cond_0

    .line 3682
    :goto_0
    return-void

    .line 3672
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    .line 3675
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 3677
    const-string v1, "Camera"

    const-string v2, "[Flow] Send msg to cancel autoFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3678
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3679
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3680
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3681
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public cancelSensorAutoFocus(Z)V
    .locals 2
    .parameter "setState"

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->cancelAutoFocus()V

    .line 2073
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 2074
    if-eqz p1, :cond_0

    .line 2075
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 2077
    :cond_0
    const-string v0, "Camera"

    const-string v1, "[Flow] cancelSensorAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    return-void
.end method

.method public capture()Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v0, 0x0

    .line 1917
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_1

    .line 1926
    :cond_0
    :goto_0
    return v0

    .line 1920
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1924
    const-string v0, "Camera"

    const-string v1, "[Flow] Capture(),send capture picture msg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1926
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeCamera()V
    .locals 3

    .prologue
    .line 4033
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 4035
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCloseCameraLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4036
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 4037
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/HwCamera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4038
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 4039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 4040
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 4041
    const-string v0, "Camera"

    const-string v2, "[Flow] Camera released!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCloseCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4043
    monitor-exit v1

    .line 4048
    :cond_0
    :goto_0
    return-void

    .line 4043
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 4044
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 859
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->collapseCameraControls(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 862
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public displayFace([Lcom/android/hwcamera/hwui/FaceInfo;)V
    .locals 2
    .parameter "facesList"

    .prologue
    .line 5533
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5534
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5535
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5536
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5537
    return-void
.end method

.method public doCancelPanorama()V
    .locals 2

    .prologue
    .line 4886
    invoke-static {}, Lcom/android/hwcamera/Util;->cancelPanorama()V

    .line 4887
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 4888
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4889
    return-void
.end method

.method public doCapture()V
    .locals 1

    .prologue
    .line 4891
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    .line 4892
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    #calls: Lcom/android/hwcamera/Camera$ImageCapture;->capture()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera$ImageCapture;->access$11300(Lcom/android/hwcamera/Camera$ImageCapture;)V

    .line 4894
    :cond_0
    return-void
.end method

.method public doFaceFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)V
    .locals 8
    .parameter "previousFocusFaceInfo"
    .parameter "focusFaceInfo"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5542
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5573
    :goto_0
    return-void

    .line 5545
    :cond_0
    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/hwui/FaceView;

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    .line 5546
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v3, p1, p2}, Lcom/android/hwcamera/hwui/FaceView;->isNeedFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5547
    invoke-virtual {p1, p2}, Lcom/android/hwcamera/hwui/FaceInfo;->clone(Lcom/android/hwcamera/hwui/FaceInfo;)V

    .line 5548
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5550
    .local v0, faceArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v3, Landroid/hardware/Camera$Area;

    iget-object v4, p2, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    invoke-direct {v3, v4, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5555
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5556
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5557
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    .line 5558
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5568
    .end local v0           #faceArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->isFocusStateCAFFace()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5569
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v3}, Lcom/android/hwcamera/HWExtCameraHandler;->setFocusState()V

    goto :goto_0

    .line 5560
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v3, p2}, Lcom/android/hwcamera/hwui/FaceView;->transformFaceCoordinate(Lcom/android/hwcamera/hwui/FaceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 5561
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/android/hwcamera/FocusManager;->handleFocus(IIIZ)Z

    .line 5563
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/hwcamera/FocusManager;->handleFocus(IIIZ)Z

    goto :goto_1

    .line 5571
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v3}, Lcom/android/hwcamera/HWExtCameraHandler;->clearFocusState()V

    goto :goto_0
.end method

.method protected doOnResume()V
    .locals 0

    .prologue
    .line 5750
    return-void
.end method

.method public doSetCameraParameters(II)V
    .locals 5
    .parameter "updateSet"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4896
    const/4 v4, 0x2

    if-ne v4, p1, :cond_1

    .line 4897
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->canSetZoom()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4910
    :goto_0
    return-void

    .line 4901
    :cond_0
    iget v4, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    if-ne p2, v2, :cond_2

    :goto_1
    invoke-direct {p0, v4, v2}, Lcom/android/hwcamera/Camera;->getNextZoomValue(IZ)I

    move-result v2

    iput v2, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    .line 4902
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4903
    .local v0, toastmsg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 4904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mZoomRatios:[F

    iget v4, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4905
    .local v1, zoomRatios:Ljava/lang/String;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4906
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 4907
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4909
    .end local v0           #toastmsg:Landroid/os/Message;
    .end local v1           #zoomRatios:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 4901
    goto :goto_1
.end method

.method public doSetFaceOrientation(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 1090
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1091
    invoke-static {p1}, Lcom/android/hwcamera/Util;->setFaceOrientation(I)Z

    .line 1093
    :cond_0
    return-void
.end method

.method public doStartAutoFocus(Ljava/lang/Object;)V
    .locals 3
    .parameter "autofocuCB"

    .prologue
    .line 4913
    :try_start_0
    const-string v1, "Camera"

    const-string v2, "start auto focus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 4915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/Camera;->mFocusStartTime:J

    .line 4916
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    check-cast p1, Lcom/android/hwcamera/Camera$AutoFocusCallback;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/android/hwcamera/HwCamera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4920
    :goto_0
    return-void

    .line 4917
    :catch_0
    move-exception v0

    .line 4918
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Camera"

    const-string v2, "autoFocus failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doSwitchCamera()V
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 4866
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopPreview()V

    .line 4867
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 4868
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4869
    const-string v1, "Camera"

    const-string v2, "doSwitchCamera don\'t open new device as quiting msg is queue!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->openCameraDevice()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4876
    :goto_0
    const-string v1, "Camera"

    const-string v2, "[Flow] Camera switched !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4884
    :goto_1
    return-void

    .line 4873
    :catch_0
    move-exception v0

    .line 4874
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Camera"

    const-string v2, "Open Camera failed when switch camera!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4880
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    .line 4881
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->initializeZoom()V

    .line 4882
    const-string v1, "Camera"

    const-string v2, "[Flow] Camera switched !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public doUpdateShootingMode(Ljava/lang/String;)V
    .locals 2
    .parameter "shootMode"

    .prologue
    .line 5023
    invoke-static {p1}, Lcom/android/hwcamera/Util;->setShootingMode(Ljava/lang/String;)Z

    .line 5024
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5025
    return-void
.end method

.method protected getCamera()Lcom/android/hwcamera/HwCamera;
    .locals 1

    .prologue
    .line 3648
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    return-object v0
.end method

.method public hideFace()V
    .locals 2

    .prologue
    .line 5528
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5529
    return-void
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 5742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    .line 5743
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5744
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5745
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5746
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 5747
    return-void
.end method

.method public initializeZoom()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mZoomListener:Lcom/android/hwcamera/Camera$ZoomListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
.end method

.method public isCameraReleased()Z
    .locals 1

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedFocus()Z
    .locals 1

    .prologue
    .line 5670
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->canDoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v5, 0x26

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 3589
    sparse-switch p1, :sswitch_data_0

    .line 3628
    :cond_0
    :goto_0
    return-void

    .line 3591
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3592
    .local v1, intent:Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 3593
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3594
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 3595
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3598
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/android/hwcamera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 3599
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 3601
    const-string v3, "crop-temp"

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3602
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 3608
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #path:Ljava/io/File;
    :sswitch_1
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    .line 3609
    if-ne v4, p2, :cond_0

    .line 3610
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3615
    :sswitch_2
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    goto :goto_0

    .line 3620
    :sswitch_3
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    .line 3621
    if-ne v4, p2, :cond_0

    .line 3622
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3589
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3725
    const-string v0, "Camera"

    const-string v1, "[Flow] onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 3727
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExEnd()V

    .line 3783
    :cond_1
    :goto_0
    return-void

    .line 3730
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-eq v0, v5, :cond_3

    .line 3732
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3738
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v5, :cond_4

    .line 3740
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3741
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3742
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 3745
    :cond_4
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-eqz v0, :cond_5

    .line 3746
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    .line 3747
    iput v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    goto :goto_0

    .line 3750
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closeOpenedPanel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3751
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3752
    invoke-static {v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 3765
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-eqz v0, :cond_9

    .line 3766
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    goto :goto_0

    .line 3753
    :cond_7
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazProcessing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3754
    invoke-static {v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    goto :goto_1

    .line 3755
    :cond_8
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3756
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getPanoramaControlAble()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3757
    invoke-static {v4}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 3758
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto :goto_0

    .line 3769
    :cond_9
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v4, :cond_a

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_a

    .line 3770
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopBurst()V

    .line 3771
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$ImageSaver;->isAllImageSaved()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3772
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 3778
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "press_back_menu"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3780
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraAppImpl;->resetMakeZoomHint(Z)V

    .line 3781
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onBackPressed()V

    goto/16 :goto_0

    .line 3775
    :cond_b
    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2827
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2850
    :cond_0
    :goto_0
    return-void

    .line 2829
    :sswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doAttach()V

    goto :goto_0

    .line 2832
    :sswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hidePostCaptureAlert()V

    .line 2833
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    goto :goto_0

    .line 2836
    :sswitch_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doCancel()V

    goto :goto_0

    .line 2841
    :sswitch_3
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2845
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2846
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->viewLastImage()V

    goto :goto_0

    .line 2827
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_3
        0x7f080021 -> :sswitch_0
        0x7f080022 -> :sswitch_1
        0x7f080023 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 3418
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3419
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 2102
    const-string v11, "Camera"

    const-string v12, "[Flow] onCreate begine"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 2104
    new-instance v11, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v11, p0}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 2105
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v11}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-static {v11}, Lcom/android/hwcamera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 2106
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v11}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v11

    iput v11, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    .line 2108
    new-instance v11, Lcom/android/hwcamera/FocusManager;

    const v12, 0x7f0c0041

    invoke-virtual {p0, v12}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/hwcamera/FocusManager;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 2109
    new-instance v11, Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-direct {v11, p0}, Lcom/android/hwcamera/HWExtCameraHandler;-><init>(Lcom/android/hwcamera/HWExtCameraHandler$Listener;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    .line 2110
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v11, p0}, Lcom/android/hwcamera/CameraAppImpl;->setCameraActivityInfo(Lcom/android/hwcamera/Camera;)V

    .line 2111
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v11}, Lcom/android/hwcamera/CameraAppImpl;->getOpenCameraHandler()Landroid/os/Handler;

    move-result-object v11

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    .line 2112
    const-string v11, "Camera"

    const-string v12, "[Flow] onCreate send open camera msg"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2114
    const v11, 0x7f030001

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->setContentView(I)V

    .line 2117
    const-string v11, "ro.camera.show.eula"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2118
    const-string v11, "pref_eula"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/hwcamera/Camera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mEulaPreference:Landroid/content/SharedPreferences;

    .line 2120
    :cond_0
    const-string v11, "ro.camera.support.led"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2121
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    .line 2129
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2130
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    new-instance v10, Ljava/util/zip/ZipFile;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 2131
    .local v10, zf:Ljava/util/zip/ZipFile;
    const-string v11, "classes.dex"

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 2132
    .local v9, ze:Ljava/util/zip/ZipEntry;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v7

    .line 2133
    .local v7, time:J
    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 2134
    .local v6, s:Ljava/lang/String;
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This HwCamera.apk was built at: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2138
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #time:J
    .end local v9           #ze:Ljava/util/zip/ZipEntry;
    .end local v10           #zf:Ljava/util/zip/ZipFile;
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isImageCaptureIntent()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    .line 2140
    new-instance v11, Lcom/android/hwcamera/ParametersManager;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v11, p0, v12}, Lcom/android/hwcamera/ParametersManager;-><init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    .line 2141
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    iget-boolean v12, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/ParametersManager;->setImageCaptureIntent(Z)V

    .line 2143
    const v11, 0x7f080009

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/PreviewFrameLayout;

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    .line 2144
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f040011

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 2145
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v11, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2146
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.intent.extra.quickCapture"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/hwcamera/Camera;->mQuickCapture:Z

    .line 2147
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/hwcamera/CameraHolder;->getNumberOfCameras()I

    move-result v11

    iput v11, p0, Lcom/android/hwcamera/Camera;->mNumberOfCameras:I

    .line 2148
    iget v11, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    iget v12, p0, Lcom/android/hwcamera/Camera;->mNumberOfCameras:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_4

    .line 2149
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    .line 2150
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v12, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v11, p0, v12}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2151
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v12, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {v11, v12}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2155
    :goto_1
    iget-boolean v11, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v11, :cond_2

    .line 2156
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->resetMenuPreference()V

    .line 2158
    :cond_2
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v11}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-static {v11}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2160
    new-instance v11, Lcom/android/hwcamera/PictureRemaining;

    invoke-direct {v11, p0}, Lcom/android/hwcamera/PictureRemaining;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

    .line 2164
    const v11, 0x7f08000a

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/SurfaceView;

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2165
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v11, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2166
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v11}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    .line 2167
    .local v4, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2168
    const/4 v11, 0x3

    invoke-interface {v4, v11}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 2174
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2175
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/hwcamera/Camera;->mShutterupTime:J

    .line 2177
    iget-boolean v11, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v11, :cond_3

    .line 2178
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setupCaptureParams()V

    .line 2181
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 2183
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f080013

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2184
    .local v1, cameraRootView:Landroid/view/ViewGroup;
    iget-boolean v11, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v11, :cond_5

    .line 2185
    const/high16 v11, 0x7f03

    invoke-virtual {v5, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2200
    :goto_2
    const v11, 0x7f080004

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mControlBar:Landroid/view/View;

    .line 2201
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x7f04

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mControlBarAnim:Landroid/view/animation/Animation;

    .line 2202
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mControlBarAnim:Landroid/view/animation/Animation;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v11, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2204
    new-instance v11, Lcom/android/hwcamera/Camera$SuperPanelListener;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/hwcamera/Camera$SuperPanelListener;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    .line 2205
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->saveLocationInit()V

    .line 2206
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2207
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2208
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2209
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v3}, Lcom/android/hwcamera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2212
    new-instance v11, Lcom/android/hwcamera/LocationManager;

    invoke-direct {v11, p0, p0}, Lcom/android/hwcamera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/hwcamera/LocationManager$Listener;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 2213
    new-instance v11, Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v11, p0, v12}, Lcom/android/hwcamera/hwui/GPSDailog;-><init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 2215
    new-instance v11, Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-direct {v11, p0}, Lcom/android/hwcamera/CameraAutoFocusController;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    .line 2216
    new-instance v11, Lcom/android/hwcamera/AutoFocusListener;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v13, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-direct {v11, v12, v13}, Lcom/android/hwcamera/AutoFocusListener;-><init>(Lcom/android/hwcamera/FocusManager;Lcom/android/hwcamera/CameraAutoFocusController;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    .line 2217
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    invoke-virtual {v11, p0}, Lcom/android/hwcamera/AutoFocusListener;->setListener(Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;)V

    .line 2218
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/CameraAutoFocusController;->setListener(Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;)V

    .line 2220
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->waitPreviewOpened()V

    .line 2222
    const-string v11, "Camera"

    const-string v12, "[Flow] onCreate end!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    return-void

    .line 2153
    .end local v1           #cameraRootView:Landroid/view/ViewGroup;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #holder:Landroid/view/SurfaceHolder;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    :cond_4
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v12, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v11, p0, v12}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 2187
    .restart local v1       #cameraRootView:Landroid/view/ViewGroup;
    .restart local v4       #holder:Landroid/view/SurfaceHolder;
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    :cond_5
    const v11, 0x7f030002

    invoke-virtual {v5, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2188
    const v11, 0x7f08001c

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/RotateImageView;

    .line 2189
    .local v2, cameraSwitchIcon:Lcom/android/hwcamera/RotateImageView;
    const v11, 0x7f020022

    invoke-virtual {v2, v11}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 2191
    const v11, 0x7f080019

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/Switcher;

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    .line 2192
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v11, p0}, Lcom/android/hwcamera/Switcher;->setOnSwitchListener(Lcom/android/hwcamera/Switcher$OnSwitchListener;)V

    .line 2193
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const v12, 0x7f080018

    invoke-virtual {p0, v12}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/Switcher;->addTouchView(Landroid/view/View;)V

    .line 2194
    const v11, 0x7f080017

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/RotateImageView;

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    .line 2195
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/RotateImageView;->enableFilter(Z)V

    .line 2196
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 2197
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v11, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 2135
    .end local v1           #cameraRootView:Landroid/view/ViewGroup;
    .end local v2           #cameraSwitchIcon:Lcom/android/hwcamera/RotateImageView;
    .end local v4           #holder:Landroid/view/SurfaceHolder;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 4796
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 4798
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 4800
    const/4 v0, 0x0

    .line 4804
    :goto_0
    return v0

    .line 4802
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 4804
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 5521
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onDestroy()V

    .line 5522
    const-string v0, "Camera"

    const-string v1, "[Flow] onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5523
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5524
    return-void
.end method

.method public onFlashModeChange()Z
    .locals 1

    .prologue
    .line 5108
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5109
    :cond_0
    const/4 v0, 0x0

    .line 5111
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0xf

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 3802
    sparse-switch p1, :sswitch_data_0

    .line 3855
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    :sswitch_1
    return v2

    .line 3804
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3806
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 3807
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->doFocus(Z)V

    goto :goto_0

    .line 3812
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3813
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    goto :goto_0

    .line 3823
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3828
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 3829
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->doFocus(Z)V

    .line 3831
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3832
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->requestFocusFromTouch()Z

    .line 3836
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 3834
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 3846
    :sswitch_5
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->canSetZoom()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3847
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3848
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3849
    const/16 v3, 0x19

    if-ne p1, v3, :cond_2

    move v1, v2

    :cond_2
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3850
    iput v4, v0, Landroid/os/Message;->what:I

    .line 3851
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3802
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1b -> :sswitch_3
        0x50 -> :sswitch_2
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3860
    packed-switch p1, :pswitch_data_0

    .line 3867
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3862
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 3863
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->doFocus(Z)V

    .line 3865
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3860
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3426
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3428
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    .line 3434
    :goto_0
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onPause()V

    .line 3435
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] onPause begin, screenChange= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    if-eqz v0, :cond_1

    .line 3585
    :goto_1
    return-void

    .line 3431
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3441
    :cond_1
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    .line 3443
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 3445
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_2

    .line 3446
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3447
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 3448
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3449
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3453
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3454
    invoke-static {v4}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 3462
    :cond_3
    :goto_2
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    .line 3464
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_4

    .line 3465
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 3467
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3468
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->resetScreenOn()V

    .line 3469
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    if-eqz v0, :cond_5

    .line 3470
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->dismissDialogBox()V

    .line 3472
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_6

    .line 3473
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->dismissPoupWindowEx()V

    .line 3475
    :cond_6
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-eqz v0, :cond_7

    .line 3477
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3478
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3479
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 3480
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 3482
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_8

    .line 3483
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->collapseAllPanelsControls()V

    .line 3485
    :cond_8
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_9

    .line 3486
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->disable()V

    .line 3487
    invoke-direct {p0, v3, v3}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 3488
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_9

    .line 3489
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 3490
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3491
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "last_image_thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Thumbnail;->saveTo(Ljava/io/File;)V

    .line 3492
    const-string v0, "Camera"

    const-string v1, "[Flow] last image thumb saved!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    :cond_9
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_a

    .line 3497
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3498
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    .line 3501
    :cond_a
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_b

    .line 3502
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 3503
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 3508
    :cond_b
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->releaseSoundPlayer()V

    .line 3509
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->releaseSoundPlayer()V

    .line 3511
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v7, :cond_18

    .line 3512
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hidePostCaptureAlert()V

    .line 3520
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-eqz v0, :cond_d

    .line 3521
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->cancel()V

    .line 3522
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 3526
    :cond_d
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    .line 3530
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mJpegImageData:[B

    .line 3532
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3533
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3536
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3537
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3541
    :cond_e
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_f

    .line 3542
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3543
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 3544
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3548
    :cond_f
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    if-eqz v0, :cond_10

    .line 3549
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 3551
    :cond_10
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    .line 3552
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->pause()V

    .line 3555
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3556
    :try_start_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3558
    :cond_11
    const-string v0, "Camera"

    const-string v2, "[Flow] onPause, wait to release camera!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 3561
    :cond_12
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3567
    :goto_4
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 3569
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    if-eqz v0, :cond_13

    .line 3570
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$ImageSaver;->finish()V

    .line 3571
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    .line 3573
    :cond_13
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    if-eqz v0, :cond_14

    .line 3574
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->finish()V

    .line 3575
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 3580
    :cond_14
    const-string v0, "ro.camera.support.led"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3581
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/android/hwcamera/LedLightManager;->ledoff(Landroid/app/NotificationManager;)V

    .line 3584
    :cond_15
    const-string v0, "Camera"

    const-string v1, "[Flow] onPause end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3455
    :cond_16
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3456
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto/16 :goto_2

    .line 3457
    :cond_17
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazProcessing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3459
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto/16 :goto_2

    .line 3513
    :cond_18
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 3514
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hideReviewUI()V

    .line 3515
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 3516
    :cond_19
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v6, :cond_c

    .line 3517
    :cond_1a
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExClose()V

    goto/16 :goto_3

    .line 3561
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3562
    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 4786
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4788
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4789
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4791
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 5450
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 5452
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3339
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onResume()V

    .line 3342
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3344
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    .line 3350
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "config_camera_stopFM"

    invoke-static {v2, v3, v6}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3352
    invoke-static {p0}, Lcom/android/hwcamera/Util;->stopFMRadioPlay(Landroid/content/Context;)V

    .line 3354
    :cond_0
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Flow] onResume mSurfaceHolder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " screenChange="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFirstTimeInitialized="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    if-eqz v2, :cond_2

    .line 3414
    :goto_1
    return-void

    .line 3347
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3358
    :cond_2
    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 3359
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 3361
    :cond_3
    iput-boolean v5, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    .line 3362
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    .line 3363
    iput v5, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    .line 3364
    new-instance v2, Lcom/android/hwcamera/Camera$ImageCapture;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/hwcamera/Camera$ImageCapture;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v2, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    .line 3367
    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-nez v2, :cond_4

    .line 3370
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v2, p0}, Lcom/android/hwcamera/CameraAppImpl;->setCameraActivityInfo(Lcom/android/hwcamera/Camera;)V

    .line 3371
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraAppImpl;->getOpenCameraHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    .line 3372
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3375
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->waitPreviewOpened()V

    .line 3378
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_5

    .line 3381
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-nez v2, :cond_9

    .line 3382
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3387
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOnAwhile()V

    .line 3389
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3390
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_auto_focusmode_key"

    const v4, 0x7f0c00ee

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3392
    .local v0, autoFocusValue:Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3393
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraAutoFocusController;->resume()V

    .line 3397
    .end local v0           #autoFocusValue:Ljava/lang/String;
    :cond_6
    iget v2, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v2, v6, :cond_7

    .line 3398
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    .line 3399
    const v2, 0x7f080007

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3402
    :cond_7
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_8

    .line 3403
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_reset_tag"

    const-string v4, "reset"

    invoke-static {v2, v3, v4}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3407
    :cond_8
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/GPSDailog;->initGpsAnimation(Landroid/view/View;)V

    .line 3410
    const/16 v1, 0x3e8

    .line 3411
    .local v1, delayCheckStorageTime:I
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3413
    const-string v2, "Camera"

    const-string v3, "[Flow] onResume end!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3384
    .end local v1           #delayCheckStorageTime:I
    :cond_9
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSecondTime()V

    goto :goto_2
.end method

.method public onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V
    .locals 8
    .parameter "button"

    .prologue
    const/16 v7, 0x9

    const/4 v3, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/Camera;->mShutterupTime:J

    .line 2985
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->collapsePanelsControls()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3066
    :cond_0
    :goto_0
    return-void

    .line 2989
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v1, v4, :cond_2

    .line 2991
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 2995
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-eq v1, v6, :cond_0

    .line 3000
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Flow] onShutterButtonClick mCameraState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    iput-boolean v5, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    .line 3002
    invoke-virtual {p1}, Lcom/android/hwcamera/ShutterButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3005
    :pswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isStorageSpaceEnough()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3009
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v1, v6, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v1, :cond_3

    .line 3010
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    .line 3011
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showBarAndShutterButton()V

    .line 3012
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOn()V

    .line 3013
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v2, 0x7f020027

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    goto :goto_0

    .line 3015
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v1, v6, :cond_4

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-eqz v1, :cond_4

    .line 3016
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    goto :goto_0

    .line 3020
    :cond_4
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v1, v4, :cond_6

    .line 3021
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->getPanoramaControlAble()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3022
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3023
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->startPanorama()V

    goto :goto_0

    .line 3024
    :cond_5
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3025
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->stopPanorama(Z)V

    goto/16 :goto_0

    .line 3033
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v1, v7, :cond_8

    .line 3036
    :cond_7
    iget v1, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    iput v1, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 3037
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3040
    :cond_8
    iput v5, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    .line 3043
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->isBasedBurstShootMode(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3044
    sget v0, Lcom/android/hwcamera/Config;->BURST_MAX_NUMBER:I

    .line 3045
    .local v0, maxPicture:I
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 3046
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 3047
    sget v0, Lcom/android/hwcamera/Config;->REWIND_PIC_NUM:I

    .line 3053
    :cond_9
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->startBurst(I)V

    goto/16 :goto_0

    .line 3048
    :cond_a
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_9

    .line 3049
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 3050
    sget v0, Lcom/android/hwcamera/Config;->ACTION_PIC_NUM:I

    goto :goto_1

    .line 3057
    .end local v0           #maxPicture:I
    :cond_b
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isOnAnimating()Z

    move-result v1

    if-nez v1, :cond_c

    .line 3058
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 3060
    :cond_c
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 3062
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    goto/16 :goto_0

    .line 3002
    nop

    :pswitch_data_0
    .packed-switch 0x7f080007
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 2933
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] onShutterButtonFocus mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pressed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    if-eqz p2, :cond_1

    .line 2936
    invoke-direct {p0, p2}, Lcom/android/hwcamera/Camera;->needShutterButtonFocus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2937
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->enableFocusSound()V

    .line 2938
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onShutterDown()V

    .line 2943
    :cond_0
    :goto_0
    return-void

    .line 2941
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onShutterButtonLongPressed()V
    .locals 2

    .prologue
    .line 3070
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 3094
    :cond_0
    :goto_0
    return-void

    .line 3075
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->collapsePanelsControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3079
    :cond_2
    const-string v0, "Camera"

    const-string v1, "[Flow] onShutterButtonLongPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isStorageSpaceEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3084
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 3090
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-nez v0, :cond_0

    .line 3093
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->shutterLongPressed()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 2721
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStart()V

    .line 2722
    const-string v0, "Camera"

    const-string v1, "[Flow] onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2724
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Switcher;->setSwitch(Z)V

    .line 2726
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2730
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStop()V

    .line 2731
    const-string v0, "Camera"

    const-string v1, "[Flow] onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 2733
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 2736
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Lcom/android/hwcamera/Switcher;Z)Z
    .locals 3
    .parameter "source"
    .parameter "onOff"

    .prologue
    .line 5093
    if-nez p2, :cond_0

    .line 5094
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_reset_tag"

    const-string v2, "noreset"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 5096
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_tag"

    const-string v2, "videotag"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 5098
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchToVideoMode()Z

    move-result v0

    .line 5100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 867
    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    :cond_0
    move v2, v3

    .line 921
    :cond_1
    :goto_0
    return v2

    .line 872
    :cond_2
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MotionEvent is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-direct {p0, p2}, Lcom/android/hwcamera/Camera;->collapseCameraControls(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 878
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v4

    if-nez v4, :cond_1

    .line 883
    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    .line 889
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 890
    .local v0, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 893
    .local v1, y:I
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, p0, Lcom/android/hwcamera/Camera;->mControlBarHeight:I

    sub-int/2addr v4, v5

    if-gt v1, v4, :cond_1

    .line 897
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/hwcamera/HWExtCameraHandler;->isPointOnFace(Lcom/android/hwcamera/hwui/FaceView;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 898
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 899
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->setFocusStateCAFFace()Z

    .line 900
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v3}, Lcom/android/hwcamera/HWExtCameraHandler;->doFaceFocus()V

    goto :goto_0

    .line 906
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v4}, Lcom/android/hwcamera/HWExtCameraHandler;->clearFocusState()V

    .line 908
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 910
    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    if-eqz v4, :cond_4

    .line 911
    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v3, :cond_1

    .line 914
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2, p2}, Lcom/android/hwcamera/FocusManager;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 916
    goto/16 :goto_0

    .line 921
    :cond_5
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/android/hwcamera/FocusManager;->handleFocus(IIIZ)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 5140
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onUserInteraction()V

    .line 5141
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v0, :cond_0

    .line 5142
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOnAwhile()V

    .line 5144
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 3330
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 3331
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    if-eqz v0, :cond_0

    .line 3332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    .line 3333
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->onResume()V

    .line 3335
    :cond_0
    return-void
.end method

.method public openCameraDevice()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 2035
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->openCameraLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 2036
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 2038
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraHolder;->open(I)Lcom/android/hwcamera/HwCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 2039
    const-string v0, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Flow] Camera opened! mCameraDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2042
    const-wide/16 v2, 0xfa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2046
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setCameraDevice(Lcom/android/hwcamera/HwCamera;)V

    .line 2047
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setHWExtCameraHandler(Landroid/os/Handler;)V

    .line 2048
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeCapabilities()V

    .line 2049
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->openCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2051
    :cond_1
    monitor-exit v1

    .line 2052
    return-void

    .line 2051
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2043
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public panoramaDirection(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 5630
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 5631
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "direction"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5632
    .local v1, data:Ljava/lang/String;
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "panoramaa direction decedied! direction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5633
    const-string v2, "Left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5634
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/PanoramaBar;->movePanoramaToEdge(I)V

    .line 5638
    :cond_0
    :goto_0
    return-void

    .line 5635
    :cond_1
    const-string v2, "Right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5636
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/PanoramaBar;->movePanoramaToEdge(I)V

    goto :goto_0
.end method

.method public panoramaTracker(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 5609
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 5610
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "offx"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 5611
    .local v1, offx:I
    const-string v3, "offy"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 5612
    .local v2, offy:I
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5614
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5616
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v3, v1, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPosition(II)V

    .line 5626
    :goto_0
    return-void

    .line 5620
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v3, v2, v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPosition(II)V

    goto :goto_0

    .line 5624
    :cond_1
    const-string v3, "Camera"

    const-string v4, "panoramaTracker get x,y in worng status!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public panormaIntermediateCaptureStart()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5643
    invoke-direct {p0, v0, v0}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 5644
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5645
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyBeforeCaputre()V

    .line 5646
    return-void
.end method

.method public prepareQuitCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2055
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_2

    .line 2056
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2057
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->cancelSensorAutoFocus(Z)V

    .line 2059
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_1

    .line 2060
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 2061
    invoke-static {}, Lcom/android/hwcamera/Util;->cancelTakePictureEx()Z

    .line 2063
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Util;->clearShootMode()V

    .line 2064
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopPreview()V

    .line 2066
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 2067
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2068
    monitor-exit v1

    .line 2069
    return-void

    .line 2068
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetParametersCompensation()V
    .locals 12

    .prologue
    .line 5029
    const v10, 0x7f0c007a

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5030
    .local v3, contrastStr:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v11

    mul-int/2addr v10, v11

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinContrast()I

    move-result v11

    add-int v4, v10, v11

    .line 5032
    .local v4, contrastValue:I
    const-string v10, "KEY_HUAWEI_CONTRAST"

    invoke-static {v10}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5033
    .local v6, mContrast_key:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 5034
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v6, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5037
    :cond_0
    const v10, 0x7f0c0080

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5038
    .local v0, brightnessStr:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v11

    mul-int/2addr v10, v11

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v11

    add-int v1, v10, v11

    .line 5041
    .local v1, brightnessValue:I
    const-string v10, "KEY_HUAWEI_BRIGHTNESS"

    invoke-static {v10}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5042
    .local v5, mBrightness_key:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 5043
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5046
    :cond_1
    const v10, 0x7f0c007d

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5047
    .local v8, saturationStr:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v11

    mul-int/2addr v10, v11

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v11

    add-int v9, v10, v11

    .line 5049
    .local v9, saturationValue:I
    const-string v10, "KEY_HUAWEI_SATURATION"

    invoke-static {v10}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5050
    .local v7, mSaturation_key:Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 5051
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5053
    :cond_2
    const v10, 0x7f0c0050

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5054
    .local v2, colorEffect:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5055
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v2}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 5057
    :cond_3
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5058
    return-void
.end method

.method public restartPreview()Z
    .locals 2

    .prologue
    .line 4068
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->startPreview()V
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4073
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 4069
    :catch_0
    move-exception v0

    .line 4070
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showCameraErrorAndFinish()V

    .line 4071
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCameraParameters(I)V
    .locals 3
    .parameter "updateSet"

    .prologue
    .line 4625
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    .line 4626
    const-string v0, "Camera"

    const-string v1, "TODO: avoid NullPointerException from doFaceFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    :goto_0
    return-void

    .line 4630
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4631
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraParameters begine, get parameter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 4634
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersInitialize()V

    .line 4637
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 4638
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersZoom()V

    .line 4641
    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    .line 4642
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersPreference()V

    .line 4644
    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    .line 4645
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersFocus()V

    .line 4647
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4648
    const-string v0, "Camera"

    const-string v1, "setCameraParameters end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDisplayOrientation()V
    .locals 2

    .prologue
    .line 4091
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDisplayRotation:I

    .line 4092
    iget v0, p0, Lcom/android/hwcamera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    .line 4093
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setDisplayOrientation(I)V

    .line 4094
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_0

    .line 4095
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FaceView;->setDisplayOrientation(I)V

    .line 4097
    :cond_0
    return-void
.end method

.method public setFaceArea(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1106
    .local p1, area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1107
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1110
    :cond_0
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 5782
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 5783
    return-void
.end method

.method public setOrientationInvokeAfterCaptureEx(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/16 v5, 0x5e

    .line 2653
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 2654
    .local v2, rotateLineayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    if-nez v2, :cond_0

    .line 2678
    :goto_0
    return-void

    .line 2657
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2658
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2659
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2660
    .local v1, height:I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2662
    .local v3, width:I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2670
    :sswitch_0
    invoke-virtual {v2, v3, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 2671
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 2664
    :sswitch_1
    invoke-virtual {v2, v1, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 2665
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 2662
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 4077
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Flow] setPreviewDisplay holder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_0

    .line 4079
    const-string v1, "Camera"

    const-string v2, "setPreviewDisplay mCameraDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    :goto_0
    return-void

    .line 4083
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/HwCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4084
    :catch_0
    move-exception v0

    .line 4085
    .local v0, ex:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 4086
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 6
    .parameter "hasSignal"

    .prologue
    const v5, 0x7f080032

    const v4, 0x7f080031

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 5722
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    .line 5723
    .local v0, gpsSingnal:Landroid/widget/ImageView;
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    .line 5724
    if-eqz p1, :cond_0

    .line 5725
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 5726
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5727
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5728
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5735
    :goto_0
    return-void

    .line 5730
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5731
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5732
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5733
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->showGpsAnimation()V

    goto :goto_0
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 5598
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    if-nez v0, :cond_1

    .line 5605
    :cond_0
    :goto_0
    return-void

    .line 5601
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 5603
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public smileCapture(I)V
    .locals 4
    .parameter "smileScore"

    .prologue
    .line 5577
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v0, :cond_1

    .line 5595
    :cond_0
    :goto_0
    return-void

    .line 5580
    :cond_1
    const/16 v0, 0x32

    if-lt p1, v0, :cond_2

    .line 5581
    const v0, 0x7f0200a2

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setSmileIcon(I)V

    .line 5582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/hwcamera/Camera;->mLastSmileCapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 5583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mLastSmileCapTime:J

    .line 5584
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    goto :goto_0

    .line 5588
    :cond_2
    const/16 v0, 0x28

    if-lt p1, v0, :cond_3

    .line 5589
    const v0, 0x7f0200a1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setSmileIcon(I)V

    goto :goto_0

    .line 5590
    :cond_3
    const/16 v0, 0x14

    if-lt p1, v0, :cond_4

    .line 5591
    const v0, 0x7f0200a0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setSmileIcon(I)V

    goto :goto_0

    .line 5593
    :cond_4
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public startContiniousAutoFocus()V
    .locals 3

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1099
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focus Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1104
    :goto_0
    return-void

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->resume()V

    goto :goto_0
.end method

.method public startFaceDetection(Z)V
    .locals 4
    .parameter "isOpenSmile"

    .prologue
    const/4 v3, 0x1

    .line 1064
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/ParametersManager;->getFaceDecetionValue()Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, faceDetectionMode:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1069
    invoke-static {}, Lcom/android/hwcamera/Util;->startFaceDetection()V

    .line 1070
    invoke-static {v3}, Lcom/android/hwcamera/Util;->setBlinkDetection(Z)V

    .line 1071
    if-eqz p1, :cond_0

    .line 1072
    invoke-static {v3}, Lcom/android/hwcamera/Util;->setSmileDetection(Z)V

    goto :goto_0
.end method

.method public startFaceDetectionUI()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1053
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/FaceView;

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    .line 1054
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 1055
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/hwui/FaceView;->setVisibility(I)V

    .line 1056
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v4, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/hwui/FaceView;->setDisplayOrientation(I)V

    .line 1057
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v4, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    aget-object v0, v1, v4

    .line 1058
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/hwcamera/hwui/FaceView;->setMirror(Z)V

    .line 1059
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceView;->resume()V

    .line 1060
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchPreviewSize()V

    .line 1061
    return-void

    :cond_0
    move v1, v3

    .line 1058
    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 1085
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setBlinkDetection(Z)V

    .line 1086
    invoke-static {}, Lcom/android/hwcamera/Util;->stopFaceDetection()V

    .line 1087
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1088
    return-void
.end method

.method public stopFaceDetectionUI()V
    .locals 2

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->resetFaceCount()V

    .line 1079
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 1080
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FaceView;->setVisibility(I)V

    .line 1082
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4166
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_1

    .line 4167
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessage()V

    .line 4168
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopFaceDetection()V

    .line 4170
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 4171
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 4172
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->cancelAutoFocus()V

    .line 4173
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->stopPreview()V

    .line 4174
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 4175
    const-string v0, "Camera"

    const-string v2, "[Flow] Preview stopped"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4177
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onPreviewStopped()V

    .line 4185
    return-void

    .line 4177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4180
    :cond_1
    iput v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 4181
    const-string v0, "Camera"

    const-string v1, "Fatal error!Stop preview but mCameraDevice is NULL!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 3945
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3946
    const-string v0, "Camera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    :cond_0
    :goto_0
    return-void

    .line 3949
    :cond_1
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] surfaceChanged holder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstTimeInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3965
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3968
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    if-eqz v0, :cond_4

    .line 3969
    :cond_2
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In surfacechange, mRestartPreviewNeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_3

    .line 3972
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3994
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_6

    .line 3995
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3975
    :cond_4
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mDisplayRotation:I

    if-eq v0, v1, :cond_5

    .line 3976
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3978
    :cond_5
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3984
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 3985
    .local v8, msg:Landroid/os/Message;
    iput-object p1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3986
    const/16 v0, 0x8

    iput v0, v8, Landroid/os/Message;->what:I

    .line 3987
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 3997
    .end local v8           #msg:Landroid/os/Message;
    :cond_6
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSecondTime()V

    .line 4000
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    aget-object v7, v0, v1

    .line 4001
    .local v7, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v5, :cond_7

    .line 4002
    .local v5, mirror:Z
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusIndicator:Lcom/android/hwcamera/hwui/RotateLayout;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v6, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/FocusManager;->initialize(Landroid/view/View;Landroid/view/View;Lcom/android/hwcamera/hwui/FaceView;Lcom/android/hwcamera/FocusManager$Listener;ZI)V

    goto/16 :goto_0

    .line 4001
    .end local v5           #mirror:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 4009
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] SurfaceCreated holder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 4013
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] surfaceDestroyed holder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 4015
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4019
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4020
    :try_start_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v0, :cond_1

    .line 4021
    const-string v0, "Camera"

    const-string v2, "[Flow]  surfaceDestroyed, wait stop preview!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 4024
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4028
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 4029
    return-void

    .line 4024
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4025
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method transformCoordinate([F[I)V
    .locals 9
    .parameter "Coordinate"
    .parameter "SurfaceViewLocation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4702
    aget v5, p1, v7

    aget v6, p2, v7

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 4703
    .local v3, x:F
    aget v5, p1, v8

    aget v6, p2, v8

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 4705
    .local v4, y:F
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 4706
    .local v1, SurfaceViewWidth:I
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 4707
    .local v0, SurfaceViewHeight:I
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 4709
    .local v2, s:Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, p1, v7

    .line 4710
    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    aput v5, p1, v8

    .line 4711
    return-void
.end method

.method transformFaceCoordinate([I)V
    .locals 13
    .parameter "FaceCoordinate"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3692
    aget v3, p1, v9

    .line 3693
    .local v3, x:I
    aget v5, p1, v10

    .line 3694
    .local v5, y:I
    aget v7, p1, v9

    aget v8, p1, v11

    add-int v4, v7, v8

    .line 3695
    .local v4, x1:I
    aget v7, p1, v10

    aget v8, p1, v12

    add-int v6, v7, v8

    .line 3696
    .local v6, y1:I
    iget-object v7, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 3697
    .local v1, SurfaceViewWidth:I
    iget-object v7, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 3698
    .local v0, SurfaceViewHeight:I
    iget-object v7, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 3700
    .local v2, s:Landroid/hardware/Camera$Size;
    mul-int v7, v1, v3

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    div-int/2addr v7, v8

    aput v7, p1, v9

    .line 3701
    mul-int v7, v0, v5

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    div-int/2addr v7, v8

    aput v7, p1, v10

    .line 3702
    mul-int v7, v1, v4

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    div-int/2addr v7, v8

    aput v7, p1, v11

    .line 3703
    mul-int v7, v0, v6

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    div-int/2addr v7, v8

    aput v7, p1, v12

    .line 3704
    return-void
.end method

.method public updatePicturesRemaining()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5455
    const v1, 0x7f08008c

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5456
    .local v0, remainPicText:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 5470
    :goto_0
    return-void

    .line 5460
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    if-gez v1, :cond_1

    .line 5461
    iput v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 5464
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_2

    .line 5465
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5467
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5468
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
