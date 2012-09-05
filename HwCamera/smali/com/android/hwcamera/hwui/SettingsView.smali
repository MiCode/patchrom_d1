.class public Lcom/android/hwcamera/hwui/SettingsView;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/SettingsView$1;,
        Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;
    }
.end annotation


# static fields
.field private static final ANIBANDING_ITEM:I = 0x1018

.field private static final AUTO_FOCUSMODE_ITEM:I = 0x1014

.field private static final DEFAULE_ITEM:I = 0x1000

.field private static final FACE_DETECTION_ITEM:I = 0x1010

.field private static final GPS_ITEM:I = 0x100a

.field private static final GRID_ITEM:I = 0x1009

.field private static final HDR_ITEM:I = 0x1007

.field private static final IMAGE_ADJUSTEMTS_ITEM:I = 0x1004

.field private static final ISO_ITEM:I = 0x100c

.field private static final PICTURE_QUALITY_ITEM:I = 0x100e

.field private static final PICTURE_SIZE_ITEM:I = 0x100d

.field private static final RED_EYE_REDUCTION_ITEM:I = 0x1008

.field private static final RESTORE_ITEM:I = 0x100b

.field private static final REVIEW_ITEM:I = 0x1012

.field private static final SAVE_LOCATION_ITEM:I = 0x1013

.field private static final SCENE_MODE_ITEM:I = 0x1015

.field private static final SHUTTER_SOUND_ITEM:I = 0x1016

.field private static final STEADY_PHOTO_ITEM:I = 0x1011

.field private static final TIME_ITEM:I = 0x1006

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"

.field private static final VIDEO_QUALITY_LEVEL_ITEM:I = 0x1017

.field private static final WHITE_BALANCE_ITEM:I = 0x1005

.field private static final WIDE_SCREEN_ITEM:I = 0x100f


# instance fields
.field private effectDistortionEnable:[Z

.field private mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mCameraID:I

.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mCurTouchX:F

.field private mCurTouchY:F

.field private mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

.field private mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

.field private mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

.field mIsEnableImage:Z

.field mIsEnableIso:Z

.field mIsEnableRed:Z

.field mIsEnableReview:Z

.field mIsEnableSceneMode:Z

.field mIsEnableSteady:Z

.field mIsEnableWhite:Z

.field mIsImageCaptureIntent:Z

.field private mIsInternalStorageExist:Z

.field private mIsVideo:Z

.field private mLastTouchView:Landroid/view/View;

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mListView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewListenerID:I

.field private mListViewPreListenerID:I

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mOrientation:I

.field private mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mResources:Landroid/content/res/Resources;

.field private mRestore_Default:Lcom/android/hwcamera/hwui/SingleTextview;

.field private mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mScenceDefaultValue:Ljava/lang/String;

.field private mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mSettingsRoot:Landroid/widget/LinearLayout;

.field private mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

.field private mShutterSoundStatus:Z

.field private mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

.field private mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

.field private mThreshold:F

.field private mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mWideScreenState:Z

.field private mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/hwui/SuperPanel;)V
    .locals 4
    .parameter "context"
    .parameter "rootLinear"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 54
    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    .line 55
    iput v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 56
    iput v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    .line 57
    iput v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 58
    iput v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    .line 59
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mThreshold:F

    .line 85
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWideScreenState:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 88
    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    .line 90
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSteady:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableReview:Z

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->effectDistortionEnable:[Z

    .line 99
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    .line 101
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    .line 105
    iput-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundStatus:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsInternalStorageExist:Z

    .line 114
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    .line 115
    const v0, 0x7f0800a7

    invoke-virtual {p2, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    .line 117
    iput-object p2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    .line 119
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    .line 120
    return-void

    .line 98
    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/hwcamera/hwui/SettingsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/hwui/SettingsView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->sceneChangeedUpdateItems(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method private addToRootView(Lcom/android/hwcamera/hwui/DoubleLineCheckBox;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 744
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/hwcamera/hwui/ImageLine;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/ImageLine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 745
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 747
    return-void
.end method

.method private addToRootView(Lcom/android/hwcamera/hwui/DoubleLineStyle;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 737
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/hwcamera/hwui/ImageLine;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/ImageLine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 738
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 740
    return-void
.end method

.method private addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 751
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/hwcamera/hwui/ImageLine;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/ImageLine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 752
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 754
    return-void
.end method

.method private addToRootView(Lcom/android/hwcamera/hwui/SingleTextview;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 758
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/hwcamera/hwui/ImageLine;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/ImageLine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 759
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 761
    return-void
.end method

.method private anctionUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1230
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1231
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1232
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1233
    return-void
.end method

.method private beautyUpdatesItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1196
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1197
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1198
    return-void
.end method

.method private burstUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1178
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1179
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1180
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1181
    return-void
.end method

.method private clearTouchXY()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1262
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    .line 1263
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    .line 1264
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 1265
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 1266
    return-void
.end method

.method private dealConflictMenuforCamera()V
    .locals 7

    .prologue
    .line 261
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v4, "pref_camera_coloreffect_key"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_coloreffect_key"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, value:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SettingsView;->effectChangedUpdateItems(Ljava/lang/String;)V

    .line 266
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    const-string v1, "single"

    .line 267
    .local v1, shootValue:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/ShootCommon;->getShootmodeValue()Ljava/lang/String;

    move-result-object v1

    .line 270
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->shootChangeUpdateItems(Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_distortion_key"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c00f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, distortionValue:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->distortionChangedUpdateItems(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method private distortionChangedUpdateItems(Ljava/lang/String;)V
    .locals 6
    .parameter "Value"

    .prologue
    .line 1074
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    if-nez v2, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_shootmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c00d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1080
    .local v1, shootValue:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_2

    .line 1081
    const-string v1, "single"

    .line 1083
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->effectDistortionEnable:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_3

    .line 1084
    const-string v2, "none"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1085
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    goto :goto_0

    .line 1090
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/hwui/ShootCommon;->faceDectectionEnableByShoot(Ljava/lang/String;)Z

    move-result v0

    .line 1092
    .local v0, isFaceEnable:Z
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    goto :goto_0
.end method

.method private effectChangedUpdateItems(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1022
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_shootmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c00d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, shootValue:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 1025
    const-string v1, "single"

    .line 1028
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/ShootCommon;->getScenemodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, scenesModeValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->effectDistortionEnable:[Z

    aget-boolean v2, v2, v6

    if-nez v2, :cond_4

    .line 1031
    const-string v2, "hdr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "panorama"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1032
    :cond_1
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1033
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1034
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1035
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 1045
    :goto_0
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 1059
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1060
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1061
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    if-eqz v2, :cond_6

    .line 1062
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1066
    :goto_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1067
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V

    .line 1068
    return-void

    .line 1036
    :cond_2
    const-string v2, "lowlight"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1037
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1038
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1039
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1040
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    goto :goto_0

    .line 1042
    :cond_3
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1043
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->sceneChangeedUpdateItems(Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_4
    const-string v2, "none"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1048
    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->redSteadyEnableByShoot(Ljava/lang/String;)V

    .line 1049
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->sceneChangeedUpdateItems(Ljava/lang/String;)V

    .line 1050
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    goto :goto_1

    .line 1052
    :cond_5
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1053
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1054
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 1055
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1056
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    goto :goto_1

    .line 1064
    :cond_6
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-virtual {v2, v7, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_2
.end method

.method private getDoubleLineSummary(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "key"
    .parameter "list"

    .prologue
    .line 801
    const-string v4, ""

    .line 802
    .local v4, summary:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, defaultValue:Ljava/lang/String;
    const-string v5, "pref_camera_picturesize_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pref_camera_picture_widescreen_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 805
    :cond_0
    const/4 v0, 0x0

    .line 811
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v5, p1, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 812
    .local v3, mvalue:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 813
    .local v1, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 814
    invoke-virtual {p2, v3}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 815
    .local v2, index:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 816
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 819
    .end local v2           #index:I
    :cond_2
    return-object v4

    .line 807
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v3           #mvalue:Ljava/lang/String;
    :cond_3
    const-string v5, "pref_camera_scenemode_key"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 808
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    goto :goto_0
.end method

.method private getViewCheckBoxState(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Z
    .locals 4
    .parameter "key"
    .parameter "list"

    .prologue
    .line 827
    const/4 v0, 0x0

    .line 828
    .local v0, bCheckboxState:Z
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-eqz v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 831
    .local v1, viewValue:Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 833
    .end local v1           #viewValue:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private getWideScreenState(Lcom/android/hwcamera/ListPreference;)Z
    .locals 6
    .parameter "list"

    .prologue
    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, bCheckboxState:Z
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-eqz v2, :cond_0

    .line 721
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_widescreen_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, widescreenstate:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 724
    const/4 v0, 0x0

    .line 729
    .end local v1           #widescreenstate:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 726
    .restart local v1       #widescreenstate:Ljava/lang/String;
    :cond_1
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private groupUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1206
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1207
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1208
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1209
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1210
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1212
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1214
    return-void
.end method

.method private hdrInit()V
    .locals 4

    .prologue
    .line 295
    new-instance v1, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    .line 296
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_hdr_save_mode"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 297
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setTitle(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setSummary(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    const-string v2, "pref_camera_hdr_save_mode"

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getViewCheckBoxState(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setCheckBoxState(Z)V

    .line 301
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    const/16 v2, 0x1007

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setId(I)V

    .line 302
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/DoubleLineCheckBox;)V

    .line 303
    return-void
.end method

.method private hdrUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1221
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1222
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1223
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1224
    return-void
.end method

.method private initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 2
    .parameter "view"
    .parameter "key"
    .parameter "id"

    .prologue
    .line 777
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 778
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    if-nez v0, :cond_0

    .line 779
    const/4 v1, 0x0

    .line 786
    :goto_0
    return-object v1

    .line 781
    :cond_0
    new-instance p1, Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .end local p1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;-><init>(Landroid/content/Context;)V

    .line 782
    .restart local p1
    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextTitle(Ljava/lang/String;)V

    .line 783
    invoke-direct {p0, p2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getDoubleLineSummary(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p1, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setId(I)V

    .line 785
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/DoubleLineStyle;)V

    move-object v1, p1

    .line 786
    goto :goto_0
.end method

.method private initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;
    .locals 2
    .parameter "view"
    .parameter "key"
    .parameter "id"

    .prologue
    .line 764
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 765
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    if-nez v0, :cond_0

    .line 766
    const/4 v1, 0x0

    .line 773
    :goto_0
    return-object v1

    .line 768
    :cond_0
    new-instance p1, Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .end local p1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;-><init>(Landroid/content/Context;)V

    .line 769
    .restart local p1
    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setTextContent(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p1, p3}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setId(I)V

    .line 771
    invoke-direct {p0, p2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getViewCheckBoxState(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 772
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V

    move-object v1, p1

    .line 773
    goto :goto_0
.end method

.method private initSingleLineMenu(Lcom/android/hwcamera/hwui/SingleTextview;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleTextview;
    .locals 1
    .parameter "view"
    .parameter "title"
    .parameter "id"

    .prologue
    .line 791
    new-instance p1, Lcom/android/hwcamera/hwui/SingleTextview;

    .end local p1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;-><init>(Landroid/content/Context;)V

    .line 792
    .restart local p1
    invoke-virtual {p1, p2}, Lcom/android/hwcamera/hwui/SingleTextview;->setContent(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p1, p3}, Lcom/android/hwcamera/hwui/SingleTextview;->setId(I)V

    .line 794
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleTextview;)V

    .line 795
    return-object p1
.end method

.method private initWhitebanlance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "distortionKey"
    .parameter "whitebalanceKey"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v1, 0x1005

    invoke-direct {p0, v0, p2, v1}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 292
    :cond_0
    return-void
.end method

.method private lowlightUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1236
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1237
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1238
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1239
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V

    .line 1240
    return-void
.end method

.method private panoramaUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1164
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1165
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1166
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1167
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1168
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1169
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1170
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1171
    return-void
.end method

.method private pictureSizeInit()V
    .locals 5

    .prologue
    .line 306
    new-instance v2, Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 307
    const-string v1, ""

    .line 308
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v3, "pref_camera_picture_widescreen_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 310
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getWideScreenState(Lcom/android/hwcamera/ListPreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    const-string v2, "pref_camera_picture_widescreen_key"

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getDoubleLineSummary(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Ljava/lang/String;

    move-result-object v1

    .line 316
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextTitle(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v3, 0x100d

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setId(I)V

    .line 319
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/DoubleLineStyle;)V

    .line 320
    return-void

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v3, "pref_camera_picturesize_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 314
    const-string v2, "pref_camera_picturesize_key"

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getDoubleLineSummary(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private redSteadyEnableByShoot(Ljava/lang/String;)V
    .locals 3
    .parameter "shootValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1097
    const-string v0, "single"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 1099
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSteady:Z

    .line 1104
    :goto_0
    return-void

    .line 1101
    :cond_0
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 1102
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSteady:Z

    goto :goto_0
.end method

.method private sceneChangeedUpdateItems(Ljava/lang/String;)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 992
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 993
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 994
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 995
    const/4 v0, 0x0

    .line 997
    .local v0, autoFocusEnable:Z
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 999
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 1000
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1001
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1002
    const-string v1, "single"

    .line 1003
    .local v1, shootValue:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_0

    .line 1004
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/ShootCommon;->getShootmodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1006
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/hwui/ShootCommon;->getAutoFocusEnable(Ljava/lang/String;)Z

    move-result v0

    .line 1008
    .end local v1           #shootValue:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1009
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    if-eqz v2, :cond_2

    .line 1010
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1014
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1015
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V

    .line 1016
    return-void

    .line 1012
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-virtual {v2, v4, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_0
.end method

.method private screenchange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "priKey"
    .parameter "curKey"

    .prologue
    .line 854
    iget-object v11, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v11, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 855
    .local v0, curScreenList:Lcom/android/hwcamera/ListPreference;
    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 856
    .local v5, keyentries:[Ljava/lang/CharSequence;
    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 857
    .local v4, keyValues:[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 858
    .local v7, picturesizetext:Ljava/lang/String;
    const/4 v6, 0x0

    .line 859
    .local v6, picturesizesummary:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v12, ""

    invoke-virtual {v11, p1, v12}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 860
    .local v9, textvalue:Ljava/lang/String;
    const/4 v3, -0x1

    .line 861
    .local v3, index:I
    const/4 v11, 0x0

    const-string v12, "x"

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 862
    .local v8, priWidth:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v11, v4

    if-ge v2, v11, :cond_0

    .line 863
    aget-object v11, v4, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 864
    .local v10, value:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "x"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 865
    .local v1, curWidth:I
    if-ne v8, v1, :cond_1

    .line 866
    move v3, v2

    .line 870
    .end local v1           #curWidth:I
    .end local v10           #value:Ljava/lang/String;
    :cond_0
    const/4 v11, -0x1

    if-eq v3, v11, :cond_2

    .line 871
    aget-object v11, v5, v3

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 872
    aget-object v11, v4, v3

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 877
    :goto_1
    iget-object v11, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-virtual {v11, v6}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    .line 878
    iget-object v11, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v11, p2, v7}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    return-void

    .line 862
    .restart local v1       #curWidth:I
    .restart local v10       #value:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 874
    .end local v1           #curWidth:I
    .end local v10           #value:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 875
    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V
    .locals 1
    .parameter "view"
    .parameter "isEnable"

    .prologue
    .line 897
    if-eqz p1, :cond_0

    .line 898
    if-eqz p2, :cond_1

    .line 899
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setEnableEx(Z)V

    .line 900
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setEnableEx(Z)V

    .line 903
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V
    .locals 1
    .parameter "view"
    .parameter "isEnable"

    .prologue
    .line 884
    if-eqz p1, :cond_0

    .line 885
    if-eqz p2, :cond_1

    .line 886
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setEnableEx(Z)V

    .line 887
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setEnableEx(Z)V

    .line 890
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V
    .locals 1
    .parameter "view"
    .parameter "isEnable"

    .prologue
    .line 910
    if-eqz p1, :cond_0

    .line 911
    if-eqz p2, :cond_1

    .line 912
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;->setEnableEx(Z)V

    .line 913
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/hwui/SingleTextview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;->setEnableEx(Z)V

    .line 916
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setViewSelected(Landroid/view/View;Z)V
    .locals 3
    .parameter "selectView"
    .parameter "isNeedHighlight"

    .prologue
    const/4 v2, 0x0

    .line 334
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 334
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_2
    if-eqz p2, :cond_3

    .line 343
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 345
    :cond_3
    return-void
.end method

.method private shootChangeUpdateItems(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1111
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/ShootCommon;->transformVauletoInt(Ljava/lang/String;)I

    move-result v0

    .line 1112
    .local v0, index:I
    packed-switch v0, :pswitch_data_0

    .line 1156
    :goto_0
    :pswitch_0
    return-void

    .line 1118
    :pswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->hdrUpdateItems()V

    goto :goto_0

    .line 1122
    :pswitch_2
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->groupUpdateItems()V

    goto :goto_0

    .line 1126
    :pswitch_3
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->burstUpdateItems()V

    goto :goto_0

    .line 1130
    :pswitch_4
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->smileUpdateItems()V

    goto :goto_0

    .line 1134
    :pswitch_5
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->beautyUpdatesItems()V

    goto :goto_0

    .line 1138
    :pswitch_6
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->panoramaUpdateItems()V

    goto :goto_0

    .line 1142
    :pswitch_7
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->anctionUpdateItems()V

    goto :goto_0

    .line 1146
    :pswitch_8
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->zslUpdateItems()V

    goto :goto_0

    .line 1150
    :pswitch_9
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->lowlightUpdateItems()V

    goto :goto_0

    .line 1112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private shutterSoundInit(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 279
    new-instance v1, Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 280
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setTextContent(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/16 v2, 0x1016

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setId(I)V

    .line 282
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "on"

    invoke-virtual {v1, p1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, statevale:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundStatus:Z

    .line 284
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundStatus:Z

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V

    .line 286
    return-void
.end method

.method private smileUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1188
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1189
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1190
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1191
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1192
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1193
    return-void
.end method

.method private updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 840
    invoke-virtual {p1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setSelected(Z)V

    .line 841
    const-string v0, "off"

    .line 842
    .local v0, strState:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    invoke-virtual {p1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 848
    :goto_0
    return-object v0

    .line 845
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 846
    const-string v0, "on"

    goto :goto_0
.end method

.method private wideScreenInit()V
    .locals 5

    .prologue
    .line 323
    new-instance v1, Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 324
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setTextContent(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/16 v2, 0x100f

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setId(I)V

    .line 326
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_widescreen_key"

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, viewValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 329
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V

    .line 330
    return-void
.end method

.method private zslUpdateItems()V
    .locals 0

    .prologue
    .line 1227
    return-void
.end method


# virtual methods
.method public dismissPopupWindow(Z)V
    .locals 1
    .parameter "isCloseAll"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    .line 351
    :cond_0
    return-void
.end method

.method public dismissPopupWindowNoAni()V
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindowNoAni()V

    .line 1245
    :cond_0
    return-void
.end method

.method public isPopupWindowShowing()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionUp(Landroid/view/View;)Z
    .locals 15
    .parameter "view"

    .prologue
    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v14

    .line 420
    .local v14, viewId:I
    const-string v5, ""

    .line 421
    .local v5, KEY:Ljava/lang/String;
    packed-switch v14, :pswitch_data_0

    .line 685
    :cond_0
    :goto_0
    const-string v0, ""

    if-eq v5, v0, :cond_13

    .line 686
    iget v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    if-eq v0, v1, :cond_12

    .line 687
    new-instance v0, Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/hwcamera/hwui/SubPopupWindows;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/hwcamera/hwui/SuperPanel;Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    .line 689
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-nez v0, :cond_10

    .line 690
    const/4 v0, 0x0

    .line 715
    :goto_1
    return v0

    .line 423
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->displaySeekbar()V

    .line 425
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->getSeekBarView()Landroid/view/View;

    move-result-object v11

    .line 426
    .local v11, mImageview:Landroid/view/View;
    new-instance v0, Lcom/android/hwcamera/hwui/ImagejustmentView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-direct {v0, v11, v1}, Lcom/android/hwcamera/hwui/ImagejustmentView;-><init>(Landroid/view/View;Lcom/android/hwcamera/PreferenceGroup;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

    .line 427
    const/4 v10, 0x0

    .line 428
    .local v10, mExpouse:Ljava/lang/String;
    const/4 v12, 0x0

    .line 429
    .local v12, mSaturation:Ljava/lang/String;
    const/4 v9, 0x0

    .line 430
    .local v9, mContrast:Ljava/lang/String;
    const/4 v8, 0x0

    .line 431
    .local v8, mBrightness:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_exposure_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_exposure_key"

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 434
    const-string v0, "enter mexpouse"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_saturation_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_saturation_key"

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 439
    const-string v0, "enter mSaturation"

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_contrast_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 443
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_contrast_key"

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_brightness_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 447
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_brightness_key"

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

    invoke-virtual {v0, v10, v12, v9, v8}, Lcom/android/hwcamera/hwui/ImagejustmentView;->initImagejustment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ImagejustmentView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 452
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    .line 456
    :cond_5
    const/16 v0, 0x1004

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 463
    .end local v8           #mBrightness:Ljava/lang/String;
    .end local v9           #mContrast:Ljava/lang/String;
    .end local v10           #mExpouse:Ljava/lang/String;
    .end local v11           #mImageview:Landroid/view/View;
    .end local v12           #mSaturation:Ljava/lang/String;
    :pswitch_1
    const-string v5, "pref_camera_whitebalance_key"

    .line 464
    const/16 v0, 0x1005

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 469
    :pswitch_2
    const-string v5, "pref_camera_timer_key"

    .line 470
    const/16 v0, 0x1006

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 476
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setSelected(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->getCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 478
    const-string v6, "off"

    .line 479
    .local v6, hdrModevalue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setCheckBoxState(Z)V

    .line 484
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_hdr_save_mode"

    invoke-interface {v0, v1, v6}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/16 v0, 0x1007

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 487
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 481
    .end local v6           #hdrModevalue:Ljava/lang/String;
    :cond_6
    const-string v6, "on"

    .line 482
    .restart local v6       #hdrModevalue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setCheckBoxState(Z)V

    goto :goto_2

    .line 494
    .end local v6           #hdrModevalue:Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 495
    .local v13, stateValue:Ljava/lang/String;
    const/4 v7, 0x0

    .line 496
    .local v7, key:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v0, :cond_7

    .line 497
    const-string v7, "pref_camera_gps_key"

    .line 501
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0, v7, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/16 v0, 0x100a

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 503
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 499
    :cond_7
    const-string v7, "pref_video_gps_key"

    goto :goto_3

    .line 511
    .end local v7           #key:Ljava/lang/String;
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_5
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 512
    .restart local v13       #stateValue:Ljava/lang/String;
    const/4 v7, 0x0

    .line 513
    .restart local v7       #key:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v0, :cond_8

    .line 514
    const-string v7, "pref_camera_shutter_sound_key"

    .line 518
    :goto_4
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0, v7, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/16 v0, 0x1016

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 520
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 516
    :cond_8
    const-string v7, "pref_video_shutter_sound_key"

    goto :goto_4

    .line 527
    .end local v7           #key:Ljava/lang/String;
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_6
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onRestorePreferencesClicked()V

    .line 528
    const/16 v0, 0x100b

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 529
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 536
    :pswitch_7
    const-string v5, "pref_camera_iso_key"

    .line 537
    const/16 v0, 0x100c

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 542
    :pswitch_8
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    if-nez v0, :cond_9

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWideScreenState:Z

    .line 547
    :goto_5
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWideScreenState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 548
    const-string v5, "pref_camera_picture_widescreen_key"

    .line 552
    :goto_6
    const/16 v0, 0x100d

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 545
    :cond_9
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getCheckBoxState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWideScreenState:Z

    goto :goto_5

    .line 550
    :cond_a
    const-string v5, "pref_camera_picturesize_key"

    goto :goto_6

    .line 557
    :pswitch_9
    const-string v5, "pref_camera_jpegquality_key"

    .line 558
    const/16 v0, 0x100e

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 563
    :pswitch_a
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 564
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_widescreen_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 566
    const-string v0, "pref_camera_picturesize_key"

    const-string v1, "pref_camera_picture_widescreen_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->screenchange(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_7
    const/16 v0, 0x100f

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 573
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 569
    :cond_b
    const-string v0, "pref_camera_picture_widescreen_key"

    const-string v1, "pref_camera_picturesize_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->screenchange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 580
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_b
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setSelected(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 582
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 583
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    if-eqz v0, :cond_c

    .line 584
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 585
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_auto_focusmode_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_c
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_facedetection_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/16 v0, 0x1010

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 591
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 598
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_c
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 599
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_steady_video_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/16 v0, 0x1011

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 601
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 608
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_d
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 609
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_redeyedetection_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/16 v0, 0x1008

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 612
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 619
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_e
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 620
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_grid_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/16 v0, 0x1009

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 623
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 630
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_f
    const/16 v0, 0x1013

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 631
    const-string v5, "pref_camera_save_location_key"

    .line 633
    goto/16 :goto_0

    .line 636
    :pswitch_10
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 637
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getCheckBoxState()Z

    move-result v0

    if-nez v0, :cond_d

    .line 638
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    if-eqz v0, :cond_d

    .line 639
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 640
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_facedetection_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_d
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_auto_focusmode_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/16 v0, 0x1014

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 647
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 654
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_11
    const/16 v0, 0x1015

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 655
    const-string v5, "pref_camera_scenemode_key"

    .line 657
    goto/16 :goto_0

    .line 659
    :pswitch_12
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v0, :cond_e

    .line 660
    const-string v5, "pref_videocamera_review_key"

    .line 664
    :goto_8
    const/16 v0, 0x1012

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 662
    :cond_e
    const-string v5, "pref_camera_review_key"

    goto :goto_8

    .line 668
    :pswitch_13
    const/16 v0, 0x1017

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 669
    const-string v5, "pref_video_quality_level_key"

    .line 671
    goto/16 :goto_0

    .line 673
    :pswitch_14
    const/16 v0, 0x1018

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 674
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v0, :cond_f

    .line 675
    const-string v5, "pref_video_antibanding_key"

    goto/16 :goto_0

    .line 677
    :cond_f
    const-string v5, "pref_camera_antibanding_key"

    .line 680
    goto/16 :goto_0

    .line 693
    :cond_10
    const-string v0, "pref_camera_scenemode_key"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 694
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setSceceDefaultValue(Ljava/lang/String;)V

    .line 697
    :cond_11
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 698
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->initHaveKeySettingView()Z

    .line 699
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setOrientationEx(I)V

    .line 700
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    new-instance v1, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;-><init>(Lcom/android/hwcamera/hwui/SettingsView;Lcom/android/hwcamera/hwui/SettingsView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->registerListeners(Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;)V

    .line 701
    iget v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    .line 715
    :goto_9
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 703
    :cond_12
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    .line 704
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    goto :goto_9

    .line 707
    :cond_13
    iget v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    goto :goto_9

    .line 421
    :pswitch_data_0
    .packed-switch 0x1004
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_d
        :pswitch_e
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_12
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_5
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 365
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 366
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 367
    invoke-direct {p0, p1, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setViewSelected(Landroid/view/View;Z)V

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 369
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    goto :goto_0

    .line 373
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 375
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->clearTouchXY()V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->onActionUp(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 381
    :pswitch_2
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    .line 382
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    .line 383
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 385
    const/16 v1, 0x10e

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    if-eq v1, v2, :cond_1

    const/16 v1, 0x5a

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    if-ne v1, v2, :cond_3

    .line 386
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mThreshold:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 389
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 392
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 395
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mThreshold:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 398
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 401
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 923
    return-void
.end method

.method public setCameraID(I)V
    .locals 0
    .parameter "cameraID"

    .prologue
    .line 1269
    iput p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    .line 1270
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 931
    return-void
.end method

.method public setGPSstatus(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 988
    :cond_0
    return-void
.end method

.method public setImageCaptureIntent(Z)V
    .locals 0
    .parameter "isImageCaptureIntent"

    .prologue
    .line 1252
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    .line 1253
    return-void
.end method

.method public setInternalStorageExist(Z)V
    .locals 0
    .parameter "exist"

    .prologue
    .line 1257
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsInternalStorageExist:Z

    .line 1258
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 934
    iput p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    .line 935
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setOrientationEx(I)V

    .line 938
    :cond_0
    return-void
.end method

.method public setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 927
    return-void
.end method

.method public setReviewEnable(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1274
    return-void
.end method

.method public setVidoState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1248
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    .line 1249
    return-void
.end method

.method public viewInit()Z
    .locals 7

    .prologue
    .line 123
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 124
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_0

    .line 127
    new-instance v4, Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/hwcamera/hwui/ShootCommon;-><init>(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    .line 128
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/hwui/ShootCommon;->setScenemodeDefaultValue(Lcom/android/hwcamera/PreferenceGroup;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    .line 132
    :cond_0
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_1

    .line 133
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_scenemode_key"

    const/16 v6, 0x1015

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 136
    :cond_1
    const-string v4, "pref_camera_distortion_key"

    const-string v5, "pref_camera_whitebalance_key"

    invoke-direct {p0, v4, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initWhitebanlance(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_2

    .line 140
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_iso_key"

    const/16 v6, 0x100c

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 144
    :cond_2
    const-string v0, "pref_camera_antibanding_key"

    .line 145
    .local v0, antiKey:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v4, :cond_3

    .line 146
    const-string v0, "pref_video_antibanding_key"

    .line 148
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v5, 0x1018

    invoke-direct {p0, v4, v0, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 150
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_contrast_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_exposure_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_5

    :cond_4
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_5

    .line 152
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c00c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1004

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleLineMenu(Lcom/android/hwcamera/hwui/SingleTextview;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleTextview;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    .line 157
    :cond_5
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_6

    .line 158
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_timer_key"

    const/16 v6, 0x1006

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 162
    :cond_6
    const-string v2, "pref_camera_review_key"

    .line 163
    .local v2, key:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v4, :cond_7

    .line 164
    const-string v2, "pref_videocamera_review_key"

    .line 166
    :cond_7
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v5, 0x1012

    invoke-direct {p0, v4, v2, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 169
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_video_quality_level_key"

    const/16 v6, 0x1017

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 173
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_jpegquality_key"

    const/16 v6, 0x100e

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 175
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_picturesize_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_8

    .line 177
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->pictureSizeInit()V

    .line 179
    :cond_8
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_picture_widescreen_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_picturesize_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 181
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->wideScreenInit()V

    .line 183
    :cond_9
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_a

    .line 184
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_auto_focusmode_key"

    const/16 v6, 0x1014

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 189
    :cond_a
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_facedetection_key"

    const/16 v6, 0x1010

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 193
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_b

    .line 194
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_redeyedetection_key"

    const/16 v6, 0x1008

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 199
    :cond_b
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_c

    .line 200
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_steady_video_key"

    const/16 v6, 0x1011

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 204
    :cond_c
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_hdr_save_mode"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_d

    .line 206
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->hdrInit()V

    .line 210
    :cond_d
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_grid_key"

    const/16 v6, 0x1009

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 213
    const-string v1, "pref_camera_gps_key"

    .line 214
    .local v1, gpsKey:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v4, :cond_e

    .line 215
    const-string v1, "pref_video_gps_key"

    .line 217
    :cond_e
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/16 v5, 0x100a

    invoke-direct {p0, v4, v1, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 220
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_shutter_sound_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_video_shutter_sound_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 222
    :cond_f
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_12

    .line 223
    const-string v4, "pref_camera_shutter_sound_key"

    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/SettingsView;->shutterSoundInit(Ljava/lang/String;)V

    .line 232
    :cond_10
    :goto_0
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsInternalStorageExist:Z

    if-eqz v4, :cond_11

    .line 233
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_save_location_key"

    const/16 v6, 0x1013

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 239
    :cond_11
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRestore_Default:Lcom/android/hwcamera/hwui/SingleTextview;

    const/16 v5, 0x100b

    invoke-direct {p0, v4, v3, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleLineMenu(Lcom/android/hwcamera/hwui/SingleTextview;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleTextview;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRestore_Default:Lcom/android/hwcamera/hwui/SingleTextview;

    .line 242
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_13

    .line 243
    const/4 v4, 0x0

    .line 253
    :goto_1
    return v4

    .line 225
    .end local v3           #title:Ljava/lang/String;
    :cond_12
    const-string v4, "pref_video_shutter_sound_key"

    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/SettingsView;->shutterSoundInit(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    .restart local v3       #title:Ljava/lang/String;
    :cond_13
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_14

    .line 249
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v5}, Lcom/android/hwcamera/hwui/ShootCommon;->getShootmodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/hwui/ShootCommon;->getEffectDistortionEnableByShoot(Ljava/lang/String;)[Z

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->effectDistortionEnable:[Z

    .line 251
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->dealConflictMenuforCamera()V

    .line 253
    :cond_14
    const/4 v4, 0x1

    goto :goto_1
.end method
