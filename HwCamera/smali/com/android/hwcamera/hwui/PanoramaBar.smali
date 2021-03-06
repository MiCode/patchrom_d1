.class public Lcom/android/hwcamera/hwui/PanoramaBar;
.super Landroid/widget/FrameLayout;
.source "PanoramaBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;
    }
.end annotation


# static fields
.field public static final CANCEL_STATE:I = 0x4

.field public static final CAPTURE_STATE:I = 0x1

.field public static final DIRECTION_INIT:I = 0x0

.field public static final DIRECTION_LEFT:I = 0x5

.field public static final DIRECTION_RIGHT:I = 0x6

.field public static final DIRECTION_STOP:I = 0x7

.field public static final DIRECTION_STOP_NORMAL:I = 0x8

.field public static final DIRECTION_TEMP_LEFT:I = 0x3

.field public static final DIRECTION_TEMP_RIGHT:I = 0x4

.field public static final DIRECTION_TIPS:I = 0x1

.field public static final DIRECTION_UNKNOW:I = 0x2

.field public static final IDLE_STATE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PANORAMA_MINI_PIC_HEIGHT:I = 0x0

.field private static final PANORAM_GET_MINI_JOINT_TIMER:I = 0x28

.field private static final PANORAM_GET_NEW_MINI_JOINT_PICTURE_MSG:I = 0x1

.field public static final PANORMA_CAPTURE_MAX_PICTURES:I = 0x6

.field public static final PICTURE_OVERLAP:F = 0.6f

.field public static final PREVEIW_STATE:I = 0x2

.field public static final PROCESSING_STATE:I = 0x3

.field private static final RESET_CANCELABLE_FLAG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PanoramaBar"

.field private static mCurrentState:I


# instance fields
.field private mAnimToLeft:Landroid/view/animation/Animation;

.field private mAnimToRight:Landroid/view/animation/Animation;

.field private mAnimationDx:F

.field private mAnimationDy:F

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBControlAble:Z

.field private mContext:Landroid/content/Context;

.field public mCurPicture:Landroid/widget/ImageView;

.field private mFlashArrowsanim:Landroid/view/animation/Animation;

.field private mHandler:Landroid/os/Handler;

.field private mImagePaddingLeft:F

.field private mImagePaddingTop:F

.field private mLeftIndicator:Landroid/view/View;

.field private mLinerLayout:Landroid/view/View;

.field private mListeners:Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;

.field private mMaskAnimation:Landroid/view/animation/Animation;

.field private mMiniPictureCnt:I

.field protected mPaint:Landroid/graphics/Paint;

.field private mPanoramaBarRect:Landroid/graphics/Rect;

.field private mPanoramaStatus:I

.field private mPanorama_mini_height:I

.field private mPanorama_thubnail_max_with:I

.field private mPanorma_thubnail_width:F

.field private mPicParam:Landroid/widget/FrameLayout$LayoutParams;

.field private mRightIndicator:Landroid/view/View;

.field private mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

.field private newbitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x70

    :goto_0
    sput v0, Lcom/android/hwcamera/hwui/PanoramaBar;->PANORAMA_MINI_PIC_HEIGHT:I

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    return-void

    .line 79
    :cond_0
    const/16 v0, 0x45

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    .line 64
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingTop:F

    .line 68
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    .line 69
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingLeft:F

    .line 72
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    .line 73
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    .line 82
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    .line 83
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    .line 84
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    .line 299
    new-instance v0, Lcom/android/hwcamera/hwui/PanoramaBar$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/PanoramaBar$1;-><init>(Lcom/android/hwcamera/hwui/PanoramaBar;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    .line 559
    new-instance v0, Lcom/android/hwcamera/hwui/PanoramaBar$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/PanoramaBar$2;-><init>(Lcom/android/hwcamera/hwui/PanoramaBar;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 95
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    .line 99
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    .line 64
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingTop:F

    .line 68
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    .line 69
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingLeft:F

    .line 72
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    .line 73
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    .line 82
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    .line 83
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    .line 84
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    .line 299
    new-instance v0, Lcom/android/hwcamera/hwui/PanoramaBar$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/PanoramaBar$1;-><init>(Lcom/android/hwcamera/hwui/PanoramaBar;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    .line 559
    new-instance v0, Lcom/android/hwcamera/hwui/PanoramaBar$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/PanoramaBar$2;-><init>(Lcom/android/hwcamera/hwui/PanoramaBar;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 103
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mContext:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    .line 107
    :cond_0
    const v0, 0x7f040009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMaskAnimation:Landroid/view/animation/Animation;

    .line 108
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMaskAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 109
    sget v0, Lcom/android/hwcamera/hwui/PanoramaBar;->PANORAMA_MINI_PIC_HEIGHT:I

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->transformDPtoPX(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    .line 110
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    int-to-float v0, v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    .line 111
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getMaxThubnailWidth(F)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/hwcamera/hwui/PanoramaBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/PanoramaBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMaskAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/PanoramaBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/hwui/PanoramaBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/PanoramaBar;->setAlignBase(Z)V

    return-void
.end method

.method private drawDashBackGround(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x4000

    const/4 v8, 0x0

    .line 272
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaBarRect:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 274
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getWidth()I

    move-result v3

    .line 277
    .local v3, width:I
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 278
    .local v2, padtop:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    sub-int v4, v3, v4

    div-int/lit8 v1, v4, 0x2

    .line 279
    .local v1, padleft:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    iput v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    .line 280
    int-to-float v4, v1

    iput v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingLeft:F

    .line 281
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v2, -0x1

    iget v6, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    add-int/2addr v7, v2

    invoke-direct {v4, v1, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaBarRect:Landroid/graphics/Rect;

    .line 294
    .end local v1           #padleft:I
    .end local v2           #padtop:I
    .end local v3           #width:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xef

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 295
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 296
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaBarRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 297
    return-void

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getHeight()I

    move-result v0

    .line 285
    .local v0, height:I
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 286
    .restart local v1       #padleft:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    sub-int v4, v0, v4

    div-int/lit8 v2, v4, 0x2

    .line 287
    .restart local v2       #padtop:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    iput v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    .line 288
    int-to-float v4, v2

    iput v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingTop:F

    .line 289
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    add-int/2addr v7, v2

    invoke-direct {v4, v5, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaBarRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private flashArrows()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1f4

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 586
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 587
    .local v2, imageHeight:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 590
    .local v1, height:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 591
    .local v3, width:I
    const/4 v0, 0x0

    .line 592
    .local v0, animatLeft:Landroid/view/animation/Animation;
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animatLeft:Landroid/view/animation/Animation;
    neg-int v4, v3

    int-to-float v4, v4

    invoke-direct {v0, v6, v4, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 596
    .restart local v0       #animatLeft:Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v3

    invoke-direct {v4, v6, v5, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    .line 605
    :goto_0
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 606
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 607
    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 609
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 610
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 611
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 612
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 613
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/hwui/PanoramaBar;->showTwoArrows(Z)V

    .line 614
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 615
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 616
    return-void

    .line 600
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animatLeft:Landroid/view/animation/Animation;
    neg-int v4, v1

    int-to-float v4, v4

    invoke-direct {v0, v6, v6, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 601
    .restart local v0       #animatLeft:Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v1

    invoke-direct {v4, v6, v6, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public static getMaxThubnailWidth(F)I
    .locals 2
    .parameter "width"

    .prologue
    .line 115
    const/high16 v0, 0x4080

    mul-float/2addr v0, p0

    const v1, 0x3ecccccc

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static isOnPanoramaCapture()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 329
    sget v1, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnPanoramazPreview()Z
    .locals 2

    .prologue
    .line 333
    sget v0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnPanoramazProcessing()Z
    .locals 2

    .prologue
    .line 337
    sget v0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnPanoramazProcessingCancel()Z
    .locals 2

    .prologue
    .line 341
    sget v0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDirectionChanged(I)V
    .locals 9
    .parameter "direct"

    .prologue
    const-wide/16 v7, 0x258

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    const-string v1, "PanoramaBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDirectionChanged direct="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDirectionNew="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iput p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    .line 373
    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    packed-switch v1, :pswitch_data_0

    .line 452
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 376
    :pswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->flashArrows()V

    .line 377
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/hwui/PanoramaBar;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 380
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/hwcamera/hwui/PanoramaBar;->showOneArrow(Z)V

    goto :goto_0

    .line 383
    :pswitch_3
    invoke-direct {p0, v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->showOneArrow(Z)V

    goto :goto_0

    .line 386
    :pswitch_4
    invoke-direct {p0, v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->showOneArrow(Z)V

    .line 389
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    float-to-int v2, v2

    invoke-virtual {v1, v5, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->moveTrackerToEdge(ZI)V

    .line 393
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    neg-float v2, v2

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    .line 402
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 403
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 404
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 405
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 406
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 407
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    float-to-int v2, v2

    invoke-virtual {v1, v5, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->moveTrackerToEdge(ZI)V

    .line 398
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    neg-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    goto :goto_1

    .line 410
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/android/hwcamera/hwui/PanoramaBar;->showOneArrow(Z)V

    .line 413
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    float-to-int v2, v2

    invoke-virtual {v1, v6, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->moveTrackerToEdge(ZI)V

    .line 417
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    .line 426
    :goto_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 427
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 428
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 429
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 430
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 431
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 421
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    float-to-int v2, v2

    invoke-virtual {v1, v6, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->moveTrackerToEdge(ZI)V

    .line 422
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    goto :goto_2

    .line 436
    :pswitch_6
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->showTwoArrows(Z)V

    goto/16 :goto_0

    .line 440
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopGetJointPictures()V

    .line 441
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopPanoramaTracker()V

    .line 442
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->restoreUi()V

    .line 443
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mListeners:Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;

    if-eqz v1, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, bshot:Z
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 446
    const/4 v0, 0x1

    .line 448
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mListeners:Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;

    invoke-interface {v1, v0}, Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;->onPanroamaStop(Z)V

    goto/16 :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private setAlignBase(Z)V
    .locals 7
    .parameter "top_left"

    .prologue
    const/4 v6, 0x0

    .line 459
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 461
    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v4, 0x5

    :goto_0
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 462
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 463
    .local v3, width:I
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v1, v3, v4

    .line 464
    .local v1, marginleft:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingLeft:F

    float-to-int v4, v4

    sub-int v3, v4, v1

    .line 468
    add-int/lit8 v3, v3, 0x1

    .line 469
    if-eqz p1, :cond_1

    .line 470
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 471
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 494
    .end local v1           #marginleft:I
    .end local v3           #width:I
    :goto_1
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    const-string v4, "PanoramaBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Move picture to top="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->requestLayout()V

    .line 499
    return-void

    .line 461
    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    .line 473
    .restart local v1       #marginleft:I
    .restart local v3       #width:I
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 474
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 478
    .end local v1           #marginleft:I
    .end local v3           #width:I
    :cond_2
    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_3

    const/16 v4, 0x50

    :goto_2
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 479
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 480
    .local v0, hegiht:I
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int v2, v0, v4

    .line 481
    .local v2, margintop:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingTop:F

    float-to-int v4, v4

    sub-int v0, v4, v2

    .line 485
    add-int/lit8 v0, v0, 0x1

    .line 486
    if-eqz p1, :cond_4

    .line 487
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 488
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 478
    .end local v0           #hegiht:I
    .end local v2           #margintop:I
    :cond_3
    const/16 v4, 0x30

    goto :goto_2

    .line 490
    .restart local v0       #hegiht:I
    .restart local v2       #margintop:I
    :cond_4
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 491
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method public static setPanoramaState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 325
    sput p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    .line 326
    return-void
.end method

.method private showOneArrow(Z)V
    .locals 3
    .parameter "bShowLeft"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 345
    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method beginGetJointPictures()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopGetJointPictures()V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->setMiniPanorama(Z)Z

    .line 183
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 185
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 548
    invoke-static {}, Lcom/android/hwcamera/Util;->cancelPanorama()V

    .line 549
    return-void
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    return v0
.end method

.method public getImagePaddingLeft()F
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingLeft:F

    return v0
.end method

.method public getImagePaddingTop()F
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingTop:F

    return v0
.end method

.method public getMiniPanoramaLenghth()I
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 529
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 540
    :goto_0
    return v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewMinishot()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->setMiniPanorama(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    const/4 v0, 0x0

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    .line 205
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyBeforeCaputre()V

    .line 206
    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    if-ne v1, v0, :cond_0

    .line 207
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    goto :goto_0
.end method

.method public getPanoramaControlAble()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    return v0
.end method

.method public movePanoramaToEdge(I)V
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 619
    const-string v0, "PanoramaBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movePanoramaToEdge direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v5, v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v4, v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-nez v0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-ne v3, v0, :cond_2

    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v3, v0, :cond_3

    .line 626
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 627
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 630
    :cond_3
    if-nez p1, :cond_4

    .line 633
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/hwcamera/Util;->lockPanoramaDirection(I)V

    .line 634
    invoke-direct {p0, v5}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    goto :goto_0

    .line 636
    :cond_4
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/hwcamera/Util;->lockPanoramaDirection(I)V

    .line 637
    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    goto :goto_0
.end method

.method public notifyBeforeCaputre()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    .line 215
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopGetJointPictures()V

    .line 219
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 220
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMaskAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/PanoramaBar;->drawDashBackGround(Landroid/graphics/Canvas;)V

    .line 195
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 123
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 125
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    .line 126
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    .line 127
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    .line 129
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/PanoramaTracker;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    .line 130
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setTrackerparent(Lcom/android/hwcamera/hwui/PanoramaBar;)V

    .line 131
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 132
    return-void
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mListeners:Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;

    .line 557
    return-void
.end method

.method public restoreUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopGetJointPictures()V

    .line 229
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 230
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 233
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 234
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 235
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 237
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setKeepScreenOn(Z)V

    .line 238
    iput-boolean v3, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    .line 239
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    .line 240
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    iput-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    .line 244
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    .line 245
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0, v2, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->restoreTrackerPostion(II)V

    .line 247
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setVisibility(I)V

    .line 250
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 253
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->requestLayout()V

    .line 263
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 257
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public setMiniPanorama(Z)Z
    .locals 4
    .parameter "bShut"

    .prologue
    const/4 v0, 0x1

    .line 502
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-ne v1, v2, :cond_1

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopGetJointPictures()V

    .line 523
    :goto_0
    return v0

    .line 506
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Util;->getMiniPanorama()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    .line 507
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 508
    const-string v0, "PanoramaBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " get mini bitmap is null mPanoramaStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 510
    const/4 v0, 0x0

    goto :goto_0

    .line 514
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 516
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 520
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setOrientationEx(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 645
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setOrientationEx(I)V

    .line 648
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 135
    const-string v2, "PanoramaBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPosition x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDirectionNew="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-nez v2, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getNewMinishot()Z

    move-result v2

    if-nez v2, :cond_4

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v2, 0x7

    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v2, v3, :cond_0

    .line 143
    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v5, v2, :cond_2

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v6, v2, :cond_2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-ne v2, v3, :cond_4

    .line 149
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    move v1, p2

    .line 153
    .local v1, temp:I
    move p2, p1

    .line 154
    move p1, v1

    .line 156
    .end local v1           #temp:I
    :cond_3
    const/4 v2, -0x3

    if-gt p2, v2, :cond_5

    .line 157
    invoke-direct {p0, v5}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    .line 164
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setPosition(II)I

    move-result v0

    .line 165
    .local v0, status:I
    invoke-virtual {p0, p1, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->trialRelativeOffset(II)V

    goto :goto_0

    .line 158
    .end local v0           #status:I
    :cond_5
    if-lt p2, v5, :cond_4

    .line 159
    invoke-direct {p0, v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    goto :goto_1
.end method

.method public showTwoArrows(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 266
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 267
    .local v0, visable:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 269
    return-void

    .line 266
    .end local v0           #visable:I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 0
    .parameter "iscaplast"

    .prologue
    .line 544
    invoke-static {p1}, Lcom/android/hwcamera/Util;->stopPanorama(Z)V

    .line 545
    return-void
.end method

.method stopGetJointPictures()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    return-void
.end method

.method public stopPanoramaTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 319
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setVisibility(I)V

    .line 322
    return-void
.end method

.method trialRelativeOffset(II)V
    .locals 2
    .parameter "x"
    .parameter "status"

    .prologue
    .line 170
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 171
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getMiniPanoramaLenghth()I

    move-result v0

    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    if-le v0, v1, :cond_0

    .line 176
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    goto :goto_0
.end method
