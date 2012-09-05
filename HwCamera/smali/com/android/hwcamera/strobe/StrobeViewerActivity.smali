.class public Lcom/android/hwcamera/strobe/StrobeViewerActivity;
.super Landroid/app/Activity;
.source "StrobeViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyMediaScannerListener;,
        Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;,
        Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;,
        Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;,
        Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;,
        Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;,
        Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;,
        Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;,
        Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final ALPHA_SEMI_TRANSPARENT:I = 0x80

.field private static final ALPHA_TRANSPARENT:I = 0x0

.field private static final BG_LAYER_ID:I = 0x0

.field private static final DEFAULT_JPEG_QUALITY:I = 0x50

.field private static final DEFAULT_JPEG_THUMBNAIL_WIDTH:I = 0xa0

.field private static final DEFAULT_OPACITY:F = 1.0f

.field private static final END_FRAME_EXTRA:Ljava/lang/String; = "endFrame"

.field private static final JPEG_THUMBNAIL_HEIGHT_KEY:Ljava/lang/String; = "jpeg_thumbnail_height_key"

.field private static final JPEG_THUMBNAIL_WIDTH_KEY:Ljava/lang/String; = "jpeg_thumbnail_width_key"

.field private static final LOG_TAG:Ljava/lang/String; = "Strobe"

.field private static final MASK_LAYER_ID:I = 0x1

.field private static final MAX_IMAGE_ENCODERS:I = 0x4

.field private static final MOVE_THRESHHOLD:I = 0xa

.field private static final MSG_RENDER:I = 0x0

.field public static final PRELOADED_EXTRA:Ljava/lang/String; = "preloaded"

.field private static final QUALITY_KEY:Ljava/lang/String; = "quality_key"

.field private static final START_FRAME_EXTRA:Ljava/lang/String; = "startFrame"

.field private static final STATE_ANALYZING:I = 0x4

.field private static final STATE_LOADING:I = 0x5

.field private static final STATE_STEP_3:I = 0x2

.field private static final TAG:Ljava/lang/String; = "StrobeViewerActivity"


# instance fields
.field private mAnalyzeTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

.field private mBottomBarContent:Landroid/view/ViewGroup;

.field private mBottomBarScrollView:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

.field private mCancelButton:Landroid/widget/Button;

.field private mCurrentBackgroundIndex:I

.field private mDidRegister:Z

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mEncoders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/scalado/caps/codec/encoder/BitmapEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstFrame:I

.field private mFrameLayout:Landroid/view/ViewGroup;

.field private mImageSize:Lcom/scalado/base/Size;

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewSize:Lcom/scalado/base/Size;

.field private final mImageViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDeletingFiles:Z

.field private mJpegQuality:I

.field private mJpegThumbnailHeight:I

.field private mJpegThumbnailWidth:I

.field private mLastFrame:I

.field private mLastX:F

.field private mLastY:F

.field private mLoadSequenceTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

.field private mLoadStrobeObjectThumbnailTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

.field private mMaskOn:Z

.field private final mMediaScannerListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field private mProgressSpinner:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRenderCallback:Lcom/android/hwcamera/strobe/SessionStore$RenderCallback;

.field private final mRenderThread:Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

.field private mSaveButton:Landroid/widget/Button;

.field private mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

.field private mState:I

.field private mStrobeObjectFocusOrder:[I

.field private final mStrobeObjectViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrobeObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbObjectClickListener:Landroid/view/View$OnClickListener;

.field private mWeakBackgroundMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0xa

    const/high16 v0, -0x4080

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    iput v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastX:F

    .line 114
    iput v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastY:F

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mState:I

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mEncoders:Ljava/util/HashMap;

    .line 142
    iput-boolean v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mMaskOn:Z

    .line 143
    iput v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDisplayWidth:I

    .line 144
    iput v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDisplayHeight:I

    .line 150
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mRenderThread:Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    .line 151
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mThumbObjectClickListener:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 153
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyMediaScannerListener;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyMediaScannerListener;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mMediaScannerListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 154
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mRenderCallback:Lcom/android/hwcamera/strobe/SessionStore$RenderCallback;

    .line 158
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    .line 162
    iput-boolean v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDidRegister:Z

    .line 1058
    iput-boolean v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mIsDeletingFiles:Z

    .line 1078
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$7;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$7;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastFrame:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/hwcamera/strobe/StrobeViewerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastFrame:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/strobe/StrobeViewerActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->setState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->clearBottomBar()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->clearStrobeObjects()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->analysisCompleted()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->renderSessionToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mThumbObjectClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/hwcamera/strobe/StrobeViewerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->showControls()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mProgressSpinner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Lcom/android/hwcamera/strobe/SessionStore$RenderCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mRenderCallback:Lcom/android/hwcamera/strobe/SessionStore$RenderCallback;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->applyOpacityGradients()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastX:F

    return v0
.end method

.method static synthetic access$3502(Lcom/android/hwcamera/strobe/StrobeViewerActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastX:F

    return p1
.end method

.method static synthetic access$3600(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastY:F

    return v0
.end method

.method static synthetic access$3602(Lcom/android/hwcamera/strobe/StrobeViewerActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastY:F

    return p1
.end method

.method static synthetic access$3700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/hwcamera/strobe/StrobeViewerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->loadBackgroundImage(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->focusSortStrobeObjects()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->setUpOpacityGradients()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/caps/Session;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->doSaveImage(Lcom/scalado/caps/Session;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mIsDeletingFiles:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mIsDeletingFiles:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->showSpinner()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Lcom/android/hwcamera/strobe/SessionStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->hideSpinner()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFirstFrame:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/hwcamera/strobe/StrobeViewerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFirstFrame:I

    return p1
.end method

.method private addStrobeObject(IILcom/android/hwcamera/strobe/SessionStore$StrobeObject;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "object"
    .parameter "drawable"

    .prologue
    .line 774
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 775
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 777
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/16 v4, 0x33

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 780
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 781
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 782
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    return-void
.end method

.method private addStrobeObjects(Lcom/scalado/base/Size;)V
    .locals 17
    .parameter "srcDims"

    .prologue
    .line 729
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_1

    .line 730
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    .line 731
    .local v7, object:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    const/4 v14, 0x2

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    .line 732
    .local v5, layers:[Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v14}, Lcom/scalado/base/Size;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float v9, v14, v15

    .line 733
    .local v9, scaleX:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v14}, Lcom/scalado/base/Size;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v10, v14, v15

    .line 734
    .local v10, scaleY:F
    invoke-virtual {v7}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getX()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v9

    float-to-int v12, v14

    .line 735
    .local v12, x:I
    invoke-virtual {v7}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getY()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    float-to-int v13, v14

    .line 736
    .local v13, y:I
    invoke-virtual {v7}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v9

    float-to-int v11, v14

    .line 737
    .local v11, w:I
    invoke-virtual {v7}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    float-to-int v3, v14

    .line 746
    .local v3, h:I
    invoke-virtual {v7}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 747
    .local v1, bg:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getMask()Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v11, v3, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 759
    .local v6, mask:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 760
    .local v8, res:Landroid/content/res/Resources;
    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v15, v8, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v15, v5, v14

    .line 761
    const/4 v14, 0x0

    aget-object v14, v5, v14

    const/high16 v15, 0x437f

    invoke-virtual {v7}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getOpacity()F

    move-result v16

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 762
    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v15, v8, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v15, v5, v14

    .line 763
    const/4 v14, 0x1

    aget-object v15, v5, v14

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mMaskOn:Z

    if-eqz v14, :cond_0

    const/16 v14, 0x80

    :goto_1
    invoke-virtual {v15, v14}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 765
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 766
    .local v2, drawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 767
    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 768
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v7, v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->addStrobeObject(IILcom/android/hwcamera/strobe/SessionStore$StrobeObject;Landroid/graphics/drawable/Drawable;)V

    .line 729
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 763
    .end local v2           #drawable:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 770
    .end local v1           #bg:Landroid/graphics/Bitmap;
    .end local v3           #h:I
    .end local v5           #layers:[Landroid/graphics/drawable/Drawable;
    .end local v6           #mask:Landroid/graphics/Bitmap;
    .end local v7           #object:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v8           #res:Landroid/content/res/Resources;
    .end local v9           #scaleX:F
    .end local v10           #scaleY:F
    .end local v11           #w:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_1
    return-void
.end method

.method private analysisCompleted()V
    .locals 4

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    invoke-virtual {v1}, Lcom/android/hwcamera/strobe/SessionStore;->getObjects()Ljava/util/List;

    move-result-object v0

    .line 1012
    .local v0, storeObjects:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;>;"
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1013
    const-string v1, "StrobeViewerActivity"

    const-string v2, "analysisComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string v1, "StrobeViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeObjects.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1018
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    .line 1021
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1022
    const-string v1, "StrobeViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeObjects.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    iget v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/strobe/SessionStore;->setBackgroundIndex(I)V

    .line 1035
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->setState(I)Z

    .line 1036
    :goto_0
    return-void

    .line 1026
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->hideSpinner()V

    .line 1027
    const v1, 0x7f0c012f

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1029
    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->finish()V

    goto :goto_0
.end method

.method private applyOpacityGradients()V
    .locals 8

    .prologue
    .line 820
    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    invoke-virtual {v5}, Lcom/android/hwcamera/strobe/SessionStore;->getVisibleObject()Ljava/util/List;

    move-result-object v2

    .line 821
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    .line 822
    .local v3, object:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 823
    .local v4, v:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 824
    .local v1, ld:Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/high16 v6, 0x437f

    invoke-virtual {v3}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getOpacity()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 827
    .end local v1           #ld:Landroid/graphics/drawable/LayerDrawable;
    .end local v3           #object:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v4           #v:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private clearBottomBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 787
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 788
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mBottomBarScrollView:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->scrollTo(II)V

    .line 789
    return-void
.end method

.method private clearStrobeObjects()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 796
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 797
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 798
    return-void
.end method

.method private controlsEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 641
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$4;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 649
    return-void
.end method

.method private deleteFolderSilently()V
    .locals 2

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/hwcamera/strobe/StrobeViewerActivity$6;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$6;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1071
    return-void
.end method

.method private doSaveImage(Lcom/scalado/caps/Session;)V
    .locals 26
    .parameter "session"

    .prologue
    .line 443
    invoke-static {}, Lcom/android/hwcamera/strobe/SessionStore;->getDateAndTime()Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, baseName:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 446
    const-string v22, "%s/%s.jpg"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sget-object v25, Lcom/android/hwcamera/strobe/SessionStore;->BASE_PATH:Ljava/io/File;

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v5, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 448
    .local v11, fileName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 450
    .local v15, stream:Lcom/scalado/stream/FileStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    .line 451
    .local v6, dims:Lcom/scalado/base/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/hwcamera/strobe/SessionStore;->getExifSession()Lcom/scalado/caps/exif/Session;

    move-result-object v10

    .line 453
    .local v10, exifSession:Lcom/scalado/caps/exif/Session;
    if-eqz v10, :cond_0

    .line 454
    new-instance v19, Lcom/scalado/base/Size;

    invoke-direct/range {v19 .. v19}, Lcom/scalado/base/Size;-><init>()V

    .line 455
    .local v19, thumbnailDims:Lcom/scalado/base/Size;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mJpegThumbnailWidth:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mJpegThumbnailHeight:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 458
    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getWidth()I

    move-result v22

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getHeight()I

    move-result v23

    mul-int v22, v22, v23

    div-int/lit8 v9, v22, 0x5

    .line 462
    .local v9, estimatedThumbnailSize:I
    new-instance v17, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 463
    .local v17, thumbnailBuffer:Lcom/scalado/base/Buffer;
    new-instance v21, Lcom/scalado/stream/BufferStream;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 465
    .local v21, thumbnailStream:Lcom/scalado/stream/BufferStream;
    new-instance v20, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 469
    .local v20, thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/16 v18, 0x0

    .line 470
    .local v18, thumbnailData:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v13

    .line 471
    .local v13, it:Lcom/scalado/base/Iterator;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/scalado/base/Iterator;->step(I)F

    .line 475
    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 476
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 479
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/scalado/caps/exif/Session;->setThumbnail([B)V

    .line 480
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/scalado/caps/exif/Session;->setExifToSession(Lcom/scalado/caps/Session;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 494
    .end local v9           #estimatedThumbnailSize:I
    .end local v13           #it:Lcom/scalado/base/Iterator;
    .end local v17           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v18           #thumbnailData:[B
    .end local v19           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v20           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v21           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v16, Lcom/scalado/stream/FileStream;

    sget-object v22, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v11, v1}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 495
    .end local v15           #stream:Lcom/scalado/stream/FileStream;
    .local v16, stream:Lcom/scalado/stream/FileStream;
    :try_start_3
    new-instance v8, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v16

    invoke-direct {v8, v0, v6}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 496
    .local v8, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mJpegQuality:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x42c8

    div-float v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    .line 497
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v14

    .line 498
    .local v14, itFile:Lcom/scalado/base/Iterator;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/scalado/base/Iterator;->step(I)F

    .line 500
    const-string v22, "StrobeViewerActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "start scan file "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v11, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mMediaScannerListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    move-object/from16 v25, v0

    invoke-static/range {v22 .. v25}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 516
    if-eqz v16, :cond_1

    .line 518
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 527
    .end local v6           #dims:Lcom/scalado/base/Size;
    .end local v8           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v10           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v11           #fileName:Ljava/lang/String;
    .end local v14           #itFile:Lcom/scalado/base/Iterator;
    .end local v16           #stream:Lcom/scalado/stream/FileStream;
    :cond_1
    :goto_1
    const-string v22, "StrobeViewerActivity"

    const-string v23, "doSaveImages hide spinner"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->hideSpinner()V

    .line 529
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V

    .line 530
    return-void

    .line 481
    .restart local v6       #dims:Lcom/scalado/base/Size;
    .restart local v9       #estimatedThumbnailSize:I
    .restart local v10       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v11       #fileName:Ljava/lang/String;
    .restart local v13       #it:Lcom/scalado/base/Iterator;
    .restart local v15       #stream:Lcom/scalado/stream/FileStream;
    .restart local v17       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v18       #thumbnailData:[B
    .restart local v19       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v20       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v21       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_0
    move-exception v7

    .line 482
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    const-string v23, "StrobeViewerActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to set EXIF thumbnail. width="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getWidth()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", height="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getHeight()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", size="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    :goto_2
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", exception="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 513
    .end local v6           #dims:Lcom/scalado/base/Size;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #estimatedThumbnailSize:I
    .end local v10           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v13           #it:Lcom/scalado/base/Iterator;
    .end local v17           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v18           #thumbnailData:[B
    .end local v19           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v20           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v21           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_1
    move-exception v7

    .line 514
    .restart local v7       #e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v22, "StrobeViewerActivity"

    const-string v23, "Exception when rendering to file."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 516
    if-eqz v15, :cond_1

    .line 518
    :try_start_7
    invoke-virtual {v15}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 519
    :catch_2
    move-exception v12

    .line 520
    .local v12, ioe:Ljava/io/IOException;
    const-string v22, "StrobeViewerActivity"

    const-string v23, "Exception when closing file."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 482
    .end local v12           #ioe:Ljava/io/IOException;
    .restart local v6       #dims:Lcom/scalado/base/Size;
    .restart local v9       #estimatedThumbnailSize:I
    .restart local v10       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v13       #it:Lcom/scalado/base/Iterator;
    .restart local v17       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v18       #thumbnailData:[B
    .restart local v19       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v20       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v21       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :cond_2
    const/16 v22, 0x0

    goto :goto_2

    .line 519
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #estimatedThumbnailSize:I
    .end local v13           #it:Lcom/scalado/base/Iterator;
    .end local v15           #stream:Lcom/scalado/stream/FileStream;
    .end local v17           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v18           #thumbnailData:[B
    .end local v19           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v20           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v21           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    .restart local v8       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v14       #itFile:Lcom/scalado/base/Iterator;
    .restart local v16       #stream:Lcom/scalado/stream/FileStream;
    :catch_3
    move-exception v12

    .line 520
    .restart local v12       #ioe:Ljava/io/IOException;
    const-string v22, "StrobeViewerActivity"

    const-string v23, "Exception when closing file."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 516
    .end local v6           #dims:Lcom/scalado/base/Size;
    .end local v8           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v10           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v12           #ioe:Ljava/io/IOException;
    .end local v14           #itFile:Lcom/scalado/base/Iterator;
    .end local v16           #stream:Lcom/scalado/stream/FileStream;
    .restart local v15       #stream:Lcom/scalado/stream/FileStream;
    :catchall_0
    move-exception v22

    :goto_4
    if-eqz v15, :cond_3

    .line 518
    :try_start_8
    invoke-virtual {v15}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 521
    :cond_3
    :goto_5
    throw v22

    .line 519
    :catch_4
    move-exception v12

    .line 520
    .restart local v12       #ioe:Ljava/io/IOException;
    const-string v23, "StrobeViewerActivity"

    const-string v24, "Exception when closing file."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 516
    .end local v12           #ioe:Ljava/io/IOException;
    .end local v15           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #dims:Lcom/scalado/base/Size;
    .restart local v10       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v16       #stream:Lcom/scalado/stream/FileStream;
    :catchall_1
    move-exception v22

    move-object/from16 v15, v16

    .end local v16           #stream:Lcom/scalado/stream/FileStream;
    .restart local v15       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_4

    .line 513
    .end local v15           #stream:Lcom/scalado/stream/FileStream;
    .restart local v16       #stream:Lcom/scalado/stream/FileStream;
    :catch_5
    move-exception v7

    move-object/from16 v15, v16

    .end local v16           #stream:Lcom/scalado/stream/FileStream;
    .restart local v15       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_3
.end method

.method private focusSort(I[I)Z
    .locals 7
    .parameter "focusPos"
    .parameter "order"

    .prologue
    const/4 v5, 0x1

    .line 845
    array-length v2, p2

    .line 847
    .local v2, numImages:I
    if-gt p1, v2, :cond_0

    if-gez p1, :cond_2

    .line 848
    :cond_0
    const/4 v5, 0x0

    .line 875
    :cond_1
    return v5

    .line 851
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 853
    move v3, v0

    .line 854
    .local v3, pos:I
    rem-int/lit8 v6, v0, 0x2

    if-ne v6, v5, :cond_3

    .line 855
    add-int/lit8 v6, v0, 0x1

    div-int/lit8 v6, v6, 0x2

    sub-int v4, p1, v6

    .line 856
    .local v4, value:I
    if-gez v4, :cond_4

    .line 857
    move v1, v0

    .local v1, j:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 858
    move v3, v1

    .line 859
    aput v1, p2, v3

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 864
    .end local v1           #j:I
    .end local v4           #value:I
    :cond_3
    add-int/lit8 v6, v0, 0x1

    div-int/lit8 v6, v6, 0x2

    add-int v4, p1, v6

    .line 865
    .restart local v4       #value:I
    if-lt v4, v2, :cond_4

    .line 866
    move v1, v0

    .restart local v1       #j:I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 867
    move v3, v1

    .line 868
    sub-int v6, v2, v1

    add-int/lit8 v6, v6, -0x1

    aput v6, p2, v3

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 873
    .end local v1           #j:I
    :cond_4
    aput v4, p2, v3

    .line 851
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private focusSortStrobeObjects()V
    .locals 5

    .prologue
    .line 830
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    if-nez v2, :cond_0

    .line 831
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    .line 833
    :cond_0
    iget v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->focusSort(I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 834
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 835
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    iget-object v4, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    aget v4, v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 837
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 838
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 834
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 842
    .end local v0           #i:I
    .end local v1           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private hideSpinner()V
    .locals 1

    .prologue
    .line 547
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$3;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 556
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 358
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDisplayWidth:I

    .line 359
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDisplayHeight:I

    .line 360
    const-string v1, "StrobeViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG_IMAGE_MARGIN width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDisplayWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v1, Lcom/scalado/base/Size;

    iget v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDisplayWidth:I

    iget v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDisplayHeight:I

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageViewSize:Lcom/scalado/base/Size;

    .line 363
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageViewSize:Lcom/scalado/base/Size;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/strobe/SessionStore;->setDisplayDims(Lcom/scalado/base/Size;)V

    .line 364
    const v1, 0x7f0800a3

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSaveButton:Landroid/widget/Button;

    .line 365
    const v1, 0x7f0800a0

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCancelButton:Landroid/widget/Button;

    .line 366
    const v1, 0x7f08009f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;

    .line 367
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 369
    const v1, 0x7f080028

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mProgressSpinner:Landroid/view/View;

    .line 371
    const v1, 0x7f08009e

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    .line 372
    const v1, 0x7f0800a2

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;

    .line 373
    const v1, 0x7f0800a1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mBottomBarScrollView:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    .line 374
    return-void
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 1093
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1095
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1096
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1097
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1098
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1099
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1100
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDidRegister:Z

    .line 1102
    return-void
.end method

.method private loadBackgroundImage()V
    .locals 3

    .prologue
    .line 668
    iget v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 673
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    iget v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual {v1}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v0

    .line 672
    .local v0, index:I
    invoke-direct {p0, v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->loadBackgroundImage(I)V

    goto :goto_0
.end method

.method private loadBackgroundImage(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 676
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    invoke-virtual {v3}, Lcom/android/hwcamera/strobe/SessionStore;->getAnalyzedSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/caps/Session;

    .line 677
    .local v2, session:Lcom/scalado/caps/Session;
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    if-nez v3, :cond_0

    .line 678
    new-instance v3, Lcom/scalado/base/Size;

    iget v4, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDisplayWidth:I

    iget v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDisplayHeight:I

    invoke-direct {v3, v4, v5}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    .line 679
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    new-instance v4, Lcom/scalado/base/Size;

    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageViewSize:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageViewSize:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->shrinkToAspect(Lcom/scalado/base/Size;)V

    .line 681
    const-string v3, "Strobe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using image size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 687
    .local v0, backgroundBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 688
    :try_start_0
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 690
    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->renderSessionToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V

    .line 692
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 693
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v1

    .line 697
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private render()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 662
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mRenderThread:Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    invoke-virtual {v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 663
    .local v0, h:Landroid/os/Handler;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 664
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 665
    return-void
.end method

.method private renderSessionToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "session"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 704
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mEncoders:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;

    .line 705
    .local v0, encoder:Lcom/scalado/caps/codec/encoder/BitmapEncoder;
    if-nez v0, :cond_0

    .line 708
    new-instance v0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;

    .end local v0           #encoder:Lcom/scalado/caps/codec/encoder/BitmapEncoder;
    invoke-direct {v0, p2, v4}, Lcom/scalado/caps/codec/encoder/BitmapEncoder;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 710
    .restart local v0       #encoder:Lcom/scalado/caps/codec/encoder/BitmapEncoder;
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mEncoders:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v2, "Strobe"

    const-string v3, "Creating new encoder..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :goto_0
    invoke-virtual {p1, v0}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 717
    .local v1, it:Lcom/scalado/base/Iterator;
    invoke-virtual {v1, v4}, Lcom/scalado/base/Iterator;->step(I)F

    .line 718
    return-void

    .line 713
    .end local v1           #it:Lcom/scalado/base/Iterator;
    :cond_0
    const-string v2, "Strobe"

    const-string v3, "Using cached encoder..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetSessionStoreSilently()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 385
    :cond_0
    return-void
.end method

.method private setState(I)Z
    .locals 9
    .parameter "state"

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 560
    const-string v2, "StrobeViewerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mState:I

    if-eq p1, v2, :cond_1

    .line 562
    iput p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mState:I

    .line 563
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v2, v4

    .line 637
    :goto_0
    return v2

    .line 609
    :pswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->loadBackgroundImage()V

    .line 610
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    if-le v2, v5, :cond_0

    .line 611
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    iget v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual {v2}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v1

    .line 613
    .local v1, index:I
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    invoke-virtual {v2}, Lcom/android/hwcamera/strobe/SessionStore;->getAnalyzedSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/caps/Session;

    invoke-virtual {v2}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 615
    .local v0, dims:Lcom/scalado/base/Size;
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->setUpOpacityGradients()V

    .line 616
    invoke-direct {p0, v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->addStrobeObjects(Lcom/scalado/base/Size;)V

    .line 617
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->focusSortStrobeObjects()V

    .line 618
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    if-nez v2, :cond_0

    .line 619
    new-instance v2, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    invoke-direct {v2, p0, v7}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    .line 620
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    new-array v5, v8, [Ljava/lang/Void;

    aput-object v7, v5, v4

    aput-object v7, v5, v3

    invoke-virtual {v2, v5}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .end local v0           #dims:Lcom/scalado/base/Size;
    .end local v1           #index:I
    :cond_0
    move v2, v3

    .line 623
    goto :goto_0

    .line 625
    :pswitch_2
    new-instance v2, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    invoke-direct {v2, p0, v7}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    .line 626
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    new-array v5, v8, [Ljava/lang/Void;

    aput-object v7, v5, v4

    aput-object v7, v5, v3

    invoke-virtual {v2, v5}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 627
    goto :goto_0

    .line 629
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V

    .line 630
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->showSpinner()V

    move v2, v3

    .line 631
    goto :goto_0

    :cond_1
    move v2, v4

    .line 637
    goto :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setUpOpacityGradients()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f80

    .line 801
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    invoke-virtual {v6}, Lcom/android/hwcamera/strobe/SessionStore;->getVisibleObject()Ljava/util/List;

    move-result-object v5

    .line 802
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;>;"
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    invoke-virtual {v6}, Lcom/android/hwcamera/strobe/SessionStore;->getObjects()Ljava/util/List;

    move-result-object v1

    .line 803
    .local v1, allList:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 804
    .local v2, count:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 805
    .local v0, allCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 806
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual {v6}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getObjectIndex()I

    move-result v4

    .line 807
    .local v4, index:I
    iget v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    if-ge v4, v6, :cond_1

    .line 808
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    add-int/lit8 v7, v4, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v9

    iget v8, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->setOpacity(F)V

    .line 805
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 810
    :cond_1
    iget v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    if-le v4, v6, :cond_0

    .line 811
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    sub-int v7, v0, v4

    int-to-float v7, v7

    mul-float/2addr v7, v9

    iget v8, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    sub-int v8, v0, v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->setOpacity(F)V

    goto :goto_1

    .line 816
    .end local v4           #index:I
    :cond_2
    iget v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual {v6, v9}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->setOpacity(F)V

    .line 817
    return-void
.end method

.method private showControls()V
    .locals 1

    .prologue
    .line 652
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$5;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$5;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 659
    return-void
.end method

.method private showSpinner()V
    .locals 1

    .prologue
    .line 533
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$2;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 544
    return-void
.end method


# virtual methods
.method public cancelStrobe(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->deleteFolderSilently()V

    .line 439
    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->finish()V

    .line 440
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->deleteFolderSilently()V

    .line 1076
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1077
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->setContentView(I)V

    .line 167
    new-instance v0, Lcom/android/hwcamera/strobe/SessionStore;

    invoke-direct {v0}, Lcom/android/hwcamera/strobe/SessionStore;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    .line 168
    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "quality_key"

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mJpegQuality:I

    .line 170
    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "jpeg_thumbnail_width_key"

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mJpegThumbnailWidth:I

    .line 172
    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "jpeg_thumbnail_height_key"

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mJpegThumbnailHeight:I

    .line 175
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->init()V

    .line 176
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->installIntentFilter()V

    .line 177
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    .line 178
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mRenderThread:Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->start()V

    .line 180
    return-void
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 390
    iget-boolean v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDidRegister:Z

    if-eqz v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mDidRegister:Z

    .line 394
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    invoke-virtual {v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_1

    .line 396
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    invoke-virtual {v3, v5}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->cancel(Z)Z

    .line 397
    iput-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    .line 400
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    invoke-virtual {v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_2

    .line 402
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    invoke-virtual {v3, v5}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->cancel(Z)Z

    .line 403
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    invoke-virtual {v3}, Lcom/android/hwcamera/strobe/SessionStore;->cancelAnalyze()V

    .line 404
    iput-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    .line 407
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    invoke-virtual {v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_3

    .line 409
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    invoke-virtual {v3, v5}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->cancel(Z)Z

    .line 410
    iput-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    .line 413
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 414
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 415
    .local v2, list:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 416
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 417
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 422
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    :cond_5
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->clear()V

    .line 423
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 424
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 425
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mEncoders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 426
    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mRenderThread:Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    invoke-virtual {v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 427
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->resetSessionStoreSilently()V

    .line 428
    return-void
.end method

.method public saveImages(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V

    .line 432
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->showSpinner()V

    .line 433
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->render()V

    .line 434
    invoke-direct {p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->deleteFolderSilently()V

    .line 435
    return-void
.end method
