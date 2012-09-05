.class public Lcom/android/hwcamera/hwui/SuperPanel;
.super Lcom/android/hwcamera/hwui/Panel;
.source "SuperPanel.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/Panel$OnPanelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    }
.end annotation


# static fields
.field private static final CLOSE_ALL_SUBMENU_MSG:I = 0x2

.field private static final CLOSE_SUB_MENU_MSG:I = 0x4

.field private static final CLOSE_SUB_MENU_STEP_PX:I = 0x3c

.field public static final COLOR_EFFECT_MENU_INDEX:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFALTNUM:I = -0x1

.field public static final DISTORTION_MENU_INDEX:I = 0x1

.field private static final IDLE_TIME_OUT_MSG:I = 0x3

.field private static final ID_ADVANCESETTINGS:I = 0x0

.field private static final ID_COLOR_EFFECT:I = 0x2

.field private static final ID_FIRSTVIEW:I = 0x0

.field private static final ID_FOURTHVIEW:I = 0x3

.field private static final ID_IMAGEADJUSTMENT:I = 0x2

.field private static final ID_SECONDVIEW:I = 0x1

.field private static final ID_SHOOTINGMODE:I = 0x3

.field private static final ID_THIRDVIEW:I = 0x2

.field private static final ID_VIDEO_DISTORTION:I = 0x1

.field private static final ID_VIDEO_RESOLUTION:I = 0x4

.field private static final ID_VIDEO_WHITEBALANCE:I = 0x2

.field private static final ID_WHITE_BALANCE:I = 0x1

.field public static final IMAGE_ADJUSTMENT_MENU_INDEX:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final MAXIDLETIME:I = 0x0

.field private static final OPEN_SUB_MENU_MSG:I = 0x1

.field private static final PANELNUMER:I = 0x4

.field public static final SETTING_MENU_INDEX:I = 0x0

.field public static final SHOOTIGN_MODE_MENU_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "superpanel"

.field public static final VIDEO_SIZE_MENU_INDEX:I = 0x3

.field public static final WHITE_BALANCE_MENU_INDEX:I = 0x1


# instance fields
.field private m1080P_videosize_Height:I

.field private mCameraId:I

.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mGPSstatus:Z

.field private mHandleTouchEvnt:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsCameraCaptureIntent:Z

.field private mIsInternalStorageExist:Z

.field private mIsLowVideoRecord:Z

.field private mIsSubMenuClosing:Z

.field private mIsVideo:Z

.field private mIsVideoCaptureIntent:Z

.field private mLastDisplayID:I

.field private mLastSubPanel:Landroid/view/View;

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mMessageOffset:I

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mSeekBarView:Landroid/view/View;

.field private mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

.field private mShootMode:Lcom/android/hwcamera/hwui/ListSubSettingView;

.field private mSubAnimLength:I

.field private mSubMenuContent:Landroid/view/View;

.field private mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

.field private mSubMenuContentSub:Landroid/view/View;

.field private mSubMenuState:Z

.field private mSubPanel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSupperPanelLength_Landscape:I

.field private mSupperPanelLength_Portrait:I

.field private mVideoSize:Lcom/android/hwcamera/hwui/ListSubSettingView;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

.field private settingmenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private subViewParam:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x1f40

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getDelayTime(I)I

    move-result v0

    sput v0, Lcom/android/hwcamera/hwui/SuperPanel;->MAXIDLETIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/hwui/Panel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 59
    const/16 v0, 0x438

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->m1080P_videosize_Height:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    .line 96
    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    .line 98
    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    .line 100
    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    .line 103
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsInternalStorageExist:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsLowVideoRecord:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandleTouchEvnt:Z

    .line 281
    new-instance v0, Lcom/android/hwcamera/hwui/SuperPanel$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/SuperPanel$1;-><init>(Lcom/android/hwcamera/hwui/SuperPanel;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->initMenuCommon()V

    .line 119
    invoke-virtual {p0, p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOnPanelListener(Lcom/android/hwcamera/hwui/Panel$OnPanelListener;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/SuperPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/SuperPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/SuperPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/hwcamera/hwui/SuperPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/hwcamera/hwui/SuperPanel;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    return-object p1
.end method

.method private closePanel()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->isPopupWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindow(Z)V

    .line 536
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    goto :goto_0

    .line 539
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0
.end method

.method private initSecondLevelMenu(Z)Z
    .locals 3
    .parameter "isVideo"

    .prologue
    .line 509
    const-string v0, "pref_camera_distortion_key"

    .line 510
    .local v0, key:Ljava/lang/String;
    const-string v1, "pref_camera_whitebalance_key"

    .line 511
    .local v1, whitebalanceKey:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 512
    const-string v1, "pref_video_whitebalance_key"

    .line 513
    const-string v0, "pref_video_distortion_key"

    .line 515
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 516
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setKey(Ljava/lang/String;)V

    .line 517
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    .line 518
    const/4 v2, 0x0

    .line 522
    :goto_0
    return v2

    .line 520
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePanel()V

    .line 521
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v2, v0}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->gallerExEntry(Ljava/lang/String;)V

    .line 522
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z
    .locals 1
    .parameter "listView"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/ListSubSettingView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 528
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setComboPreference(Lcom/android/hwcamera/ComboPreferences;)V

    .line 529
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 530
    invoke-virtual {p1}, Lcom/android/hwcamera/hwui/ListSubSettingView;->initModeView()Z

    move-result v0

    return v0
.end method

.method private initThirdLevelMenu()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 486
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    if-eqz v2, :cond_2

    .line 487
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 488
    invoke-virtual {p0, v4, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 489
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    const-string v2, "pref_video_whitebalance_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setKey(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    .line 504
    :goto_0
    return v0

    .line 493
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v3, "pref_video_distortion_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 494
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePanel()V

    .line 495
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v2, "pref_video_distortion_key"

    invoke-interface {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->gallerExEntry(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 499
    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {p0, v4, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_1

    .line 502
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePanel()V

    .line 503
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v2, "pref_camera_coloreffect_key"

    invoke-interface {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->gallerExEntry(Ljava/lang/String;)V

    move v0, v1

    .line 504
    goto :goto_0
.end method

.method private setCameraStateMenu(ZZ)V
    .locals 3
    .parameter "isOnCameraState"
    .parameter "captureIntent"

    .prologue
    const/4 v2, 0x0

    .line 783
    if-eqz p2, :cond_0

    .line 784
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setCaptureIntentMenu(Z)V

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_distortion_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 787
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->refreshWhitebalanceIcon(Z)V

    .line 789
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hw_front_camera_support_coloreffect"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 791
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 793
    :cond_2
    return-void
.end method

.method private setCaptureIntentMenu(Z)V
    .locals 4
    .parameter "isOnCameraState"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f08003d

    .line 799
    if-eqz p1, :cond_0

    .line 804
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 816
    :goto_0
    return-void

    .line 806
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 807
    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsLowVideoRecord:Z

    if-eqz v1, :cond_1

    .line 808
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 811
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, defalutValue:Ljava/lang/String;
    const-string v1, "pref_video_quality_key"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setSubPanelOriginParam()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    .line 202
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v1, v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    .line 212
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    .line 220
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setVideoStateMeun(ZZ)V
    .locals 6
    .parameter "isOnCameraState"
    .parameter "captureIntent"

    .prologue
    const v5, 0x7f08003d

    const v4, 0x7f08003c

    .line 759
    if-eqz p2, :cond_1

    .line 760
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setCaptureIntentMenu(Z)V

    .line 768
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_video_distortion_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v1

    if-nez v1, :cond_2

    .line 769
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 770
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 776
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->refreshWhitebalanceIcon(Z)V

    .line 777
    return-void

    .line 762
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_quality_key"

    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, vidosizeValue:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 765
    const-string v1, "pref_video_quality_key"

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 772
    .end local v0           #vidosizeValue:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 773
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private startChangePanel(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 376
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 377
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 378
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 379
    return-void
.end method


# virtual methods
.method public closeAllMenu()Z
    .locals 2

    .prologue
    .line 731
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 732
    .local v0, closemenu:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 733
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 735
    const/4 v1, 0x1

    return v1
.end method

.method public closePopWindowNoAni()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindowNoAni()V

    .line 724
    :cond_0
    return-void
.end method

.method public closePopWindowOnly()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindow(Z)V

    .line 717
    :cond_0
    return-void
.end method

.method public closeSubPanelOnly()V
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    .line 711
    return-void
.end method

.method public collapseAllPanelsControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 974
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowNoAni()V

    .line 976
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 977
    invoke-virtual {p0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 979
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 980
    invoke-virtual {p0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 981
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0
.end method

.method public collapsePanelsControls()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 962
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 963
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 971
    :cond_0
    :goto_0
    return v0

    .line 965
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 966
    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOnAnimating()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 971
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->updatePanelIdleState()Z

    .line 554
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandleTouchEvnt:Z

    if-nez v0, :cond_0

    .line 555
    const/4 v0, 0x1

    .line 557
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/hwcamera/hwui/Panel;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public displaySeekbar()V
    .locals 3

    .prologue
    .line 697
    const/4 v0, 0x2

    .line 698
    .local v0, SelectID:I
    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSeekBarView:Landroid/view/View;

    .line 699
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 700
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    .line 701
    return-void
.end method

.method public dissmissPopWindowNoAni()V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindowNoAni()V

    .line 900
    :cond_0
    return-void
.end method

.method public getSeekBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSeekBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSeekBarView:Landroid/view/View;

    .line 706
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingmenu()Lcom/android/hwcamera/hwui/RotateLinearLayout;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->settingmenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    return-object v0
.end method

.method public getSupperPanelHeight(FII)I
    .locals 5
    .parameter "ration"
    .parameter "step"
    .parameter "screenHeight"

    .prologue
    .line 955
    int-to-float v4, p3

    mul-float v3, v4, p1

    .line 956
    .local v3, superPanelHeightTemp:F
    int-to-float v4, p2

    div-float v0, v3, v4

    .line 957
    .local v0, fSupperStepBy:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 958
    .local v1, iSupperStepBy:I
    mul-int v2, v1, p2

    .line 959
    .local v2, superPanelHeight:I
    return v2
.end method

.method public getTouchAble()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandleTouchEvnt:Z

    return v0
.end method

.method public initImageSubPanel()V
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    return-void
.end method

.method public initMenuCommon()V
    .locals 12

    .prologue
    const/16 v11, 0xb4

    const/high16 v10, 0x43a5

    const/high16 v9, 0x4387

    const/16 v8, 0x3c

    .line 124
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 125
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 126
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v5, 0x0

    .line 127
    .local v5, screenWidth:I
    const/4 v4, 0x0

    .line 130
    .local v4, screenHeight:I
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_0

    .line 131
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 132
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 140
    :goto_0
    const/high16 v2, 0x3f10

    .line 141
    .local v2, ratio_portrait:F
    const/high16 v1, 0x3f20

    .line 142
    .local v1, ratio_landscape:F
    invoke-virtual {p0, v2, v8, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->getSupperPanelHeight(FII)I

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    .line 143
    invoke-virtual {p0, v1, v8, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->getSupperPanelHeight(FII)I

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    .line 144
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 147
    invoke-static {v11}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelContentLength(I)V

    .line 148
    invoke-static {v11}, Lcom/android/hwcamera/hwui/MenuCommon;->setMenuCollapseLength(I)V

    .line 149
    const/16 v6, 0x24

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuMarginEdge(I)V

    .line 150
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuHeight(I)V

    .line 151
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuWidth(I)V

    .line 162
    :goto_1
    invoke-static {v5}, Lcom/android/hwcamera/hwui/MenuCommon;->setScreenWidth(I)V

    .line 163
    invoke-static {v4}, Lcom/android/hwcamera/hwui/MenuCommon;->setScreenHeight(I)V

    .line 164
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelSubContentLengthLandscape(I)V

    .line 165
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelSubContentLengthPortrait(I)V

    .line 166
    return-void

    .line 134
    .end local v1           #ratio_landscape:F
    .end local v2           #ratio_portrait:F
    :cond_0
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 135
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    .line 154
    .restart local v1       #ratio_landscape:F
    .restart local v2       #ratio_portrait:F
    :cond_1
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 155
    const/16 v6, 0x5a

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelContentLength(I)V

    .line 156
    invoke-static {v8}, Lcom/android/hwcamera/hwui/MenuCommon;->setMenuCollapseLength(I)V

    .line 157
    const/16 v6, 0xa

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuMarginEdge(I)V

    .line 158
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuHeight(I)V

    .line 159
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuWidth(I)V

    goto :goto_1
.end method

.method public initSettingmenu(Lcom/android/hwcamera/hwui/RotateLinearLayout;)V
    .locals 0
    .parameter "vi"

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->settingmenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 690
    return-void
.end method

.method public initVideoSubPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 871
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isOnVideoState()Z
    .locals 1

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    return v0
.end method

.method public isPopWindowShowing()Z
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->isPopupWindowShowing()Z

    move-result v0

    return v0
.end method

.method public isSuperMenuOpened()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    return v0
.end method

.method public menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "modeValue"
    .parameter "key"
    .parameter "MenuItem"

    .prologue
    .line 822
    if-nez p1, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    const/4 v4, 0x0

    .line 826
    .local v4, restId:I
    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v5, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/IconListPreference;

    .line 828
    .local v2, list:Lcom/android/hwcamera/IconListPreference;
    const-string v5, "pref_video_quality_key"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->m1080P_videosize_Height:I

    const/16 v6, 0x440

    if-ne v5, v6, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    .line 830
    const v4, 0x7f02006d

    .line 838
    :cond_2
    :goto_1
    invoke-virtual {p0, p3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    .line 839
    .local v3, menuItem:Lcom/android/hwcamera/RotateImageView;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 840
    invoke-virtual {v3, v4}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 832
    .end local v3           #menuItem:Lcom/android/hwcamera/RotateImageView;
    :cond_3
    invoke-virtual {v2}, Lcom/android/hwcamera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 833
    .local v0, drawIds:[I
    invoke-virtual {v2, p1}, Lcom/android/hwcamera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 834
    .local v1, index:I
    if-ltz v1, :cond_2

    .line 835
    aget v4, v0, v1

    goto :goto_1
.end method

.method public onChangeToBackCamera(Z)V
    .locals 1
    .parameter "isOnCameraState"

    .prologue
    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    .line 748
    if-eqz p1, :cond_0

    .line 749
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setCameraStateMenu(ZZ)V

    .line 753
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoStateMeun(ZZ)V

    goto :goto_0
.end method

.method public onChangeToFrontCamera(Z)V
    .locals 1
    .parameter "isOnCameraState"

    .prologue
    .line 738
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    .line 739
    if-eqz p1, :cond_0

    .line 740
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setCameraStateMenu(ZZ)V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoStateMeun(ZZ)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const v11, 0x7f0200ad

    const v10, 0x7f0200ac

    const/4 v9, 0x0

    .line 387
    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOnAnimating()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    const/4 v0, -0x1

    .line 392
    .local v0, SelectID:I
    const/4 v4, 0x1

    .line 393
    .local v4, isHasData:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 395
    :pswitch_0
    const/4 v0, 0x0

    .line 396
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 397
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 398
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 399
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->setVidoState(Z)V

    .line 400
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->setCameraID(I)V

    .line 401
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->setImageCaptureIntent(Z)V

    .line 403
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsInternalStorageExist:Z

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->setInternalStorageExist(Z)V

    .line 405
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/SettingsView;->viewInit()Z

    move-result v4

    .line 406
    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    if-eqz v7, :cond_3

    .line 407
    :cond_2
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v7, v9}, Lcom/android/hwcamera/hwui/SettingsView;->setReviewEnable(Z)V

    .line 409
    :cond_3
    if-eqz v4, :cond_0

    .line 452
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v7

    if-nez v7, :cond_9

    .line 453
    invoke-virtual {p1, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 454
    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    .line 455
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 456
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v7, 0x4

    if-ge v1, v7, :cond_7

    .line 457
    iget v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    add-int/2addr v7, v1

    rem-int/lit8 v2, v7, 0x4

    .line 458
    .local v2, index:I
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 459
    .local v6, vie:Landroid/view/View;
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v7, v6, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 415
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v6           #vie:Landroid/view/View;
    :pswitch_1
    const/4 v0, 0x1

    .line 416
    const/4 v3, 0x1

    .line 417
    .local v3, isDistortionState:Z
    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    invoke-direct {p0, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->initSecondLevelMenu(Z)Z

    move-result v3

    .line 418
    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 426
    .end local v3           #isDistortionState:Z
    :pswitch_2
    const/4 v0, 0x2

    .line 427
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->initThirdLevelMenu()Z

    move-result v5

    .line 428
    .local v5, isState:Z
    if-eqz v5, :cond_4

    goto/16 :goto_0

    .line 435
    .end local v5           #isState:Z
    :pswitch_3
    const/4 v0, 0x3

    .line 436
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    if-eqz v7, :cond_6

    .line 437
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mVideoSize:Lcom/android/hwcamera/hwui/ListSubSettingView;

    iget v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->m1080P_videosize_Height:I

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/ListSubSettingView;->set_1080P_height(I)V

    .line 438
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mVideoSize:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    move-result v4

    .line 444
    :cond_5
    :goto_2
    if-nez v4, :cond_4

    goto/16 :goto_0

    .line 440
    :cond_6
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v8, "pref_camera_shootmode_key"

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 441
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mShootMode:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    move-result v4

    goto :goto_2

    .line 461
    .restart local v1       #i:I
    :cond_7
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    .line 462
    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    if-eqz v7, :cond_8

    .line 463
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 465
    :cond_8
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 481
    .end local v1           #i:I
    :goto_3
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v7

    iput v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    goto/16 :goto_0

    .line 467
    :cond_9
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 468
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v7, v9}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindow(Z)V

    .line 470
    :cond_a
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 471
    invoke-virtual {p1, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 472
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 474
    iget v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    iget v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x4

    rem-int/lit8 v8, v8, 0x4

    if-eq v7, v8, :cond_b

    .line 475
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x4

    rem-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_3

    .line 477
    :cond_b
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_3

    .line 393
    :pswitch_data_0
    .packed-switch 0x7f08003a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/hwcamera/hwui/Panel;->onFinishInflate()V

    .line 174
    const v3, 0x7f08003f

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    .line 175
    const v3, 0x7f08003e

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    .line 177
    const v3, 0x7f08003c

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v3, 0x7f08003a

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v3, 0x7f08003b

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v3, 0x7f08003d

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v3, 0x7f0800a5

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 183
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040016

    invoke-virtual {v3, v4, v5}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 184
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040018

    invoke-virtual {v3, v4, v5}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 186
    new-instance v3, Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/android/hwcamera/hwui/SettingsView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/hwui/SuperPanel;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    .line 188
    const v3, 0x7f0800ad

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 189
    .local v0, mShootModeList:Landroid/widget/ListView;
    new-instance v3, Lcom/android/hwcamera/hwui/ListSubSettingView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    const-string v5, "pref_camera_shootmode_key"

    invoke-direct {v3, v4, v0, v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mShootMode:Lcom/android/hwcamera/hwui/ListSubSettingView;

    .line 191
    const v3, 0x7f0800af

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 192
    .local v1, mVideoSizeList:Landroid/widget/ListView;
    new-instance v3, Lcom/android/hwcamera/hwui/ListSubSettingView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    const-string v5, "pref_video_quality_key"

    invoke-direct {v3, v4, v1, v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mVideoSize:Lcom/android/hwcamera/hwui/ListSubSettingView;

    .line 194
    const v3, 0x7f0800a9

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 195
    .local v2, whiteBalanceList:Landroid/widget/ListView;
    new-instance v3, Lcom/android/hwcamera/hwui/ListSubSettingView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    const-string v5, "pref_camera_whitebalance_key"

    invoke-direct {v3, v4, v2, v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    .line 197
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    .line 198
    return-void
.end method

.method public onPanelClosed(Lcom/android/hwcamera/hwui/Panel;)V
    .locals 3
    .parameter "panel"

    .prologue
    const/4 v2, 0x0

    .line 242
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    .line 243
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    .line 247
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onPanelStateChange(Z)V

    .line 254
    :cond_2
    return-void
.end method

.method public onPanelOpened(Lcom/android/hwcamera/hwui/Panel;)V
    .locals 2
    .parameter "panel"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onPanelStateChange(Z)V

    .line 260
    :cond_0
    return-void
.end method

.method public onPanelStartClose()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 263
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SettingsView;->isPopupWindowShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    .line 266
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    .line 277
    :goto_0
    return v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    .line 272
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshWhitebalanceIcon(Z)V
    .locals 7
    .parameter "isOnCameraState"

    .prologue
    .line 844
    const-string v0, "pref_video_whitebalance_key"

    .line 845
    .local v0, key:Ljava/lang/String;
    const/4 v2, 0x2

    .line 846
    .local v2, menuIndex:I
    const v1, 0x7f08003c

    .line 847
    .local v1, menuId:I
    if-eqz p1, :cond_1

    .line 848
    const-string v0, "pref_camera_whitebalance_key"

    .line 849
    const v1, 0x7f08003b

    .line 850
    const/4 v2, 0x1

    .line 857
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v4, v0}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 858
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 860
    .local v3, whitebalanceValue:Ljava/lang/String;
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    .line 861
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 867
    .end local v3           #whitebalanceValue:Ljava/lang/String;
    :goto_1
    return-void

    .line 852
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    .line 853
    const v1, 0x7f08003b

    .line 854
    const/4 v2, 0x1

    goto :goto_0

    .line 863
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/RotateImageView;

    const v5, 0x7f020082

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 865
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_1
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 573
    return-void
.end method

.method public setAnimateHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 586
    iput p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 588
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 590
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    goto :goto_0
.end method

.method public setAnimateWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 599
    iput p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 600
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 602
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    goto :goto_0
.end method

.method public setCameraCaptureIntent(Z)V
    .locals 0
    .parameter "isCameraCaptureIntent"

    .prologue
    .line 907
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    .line 908
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 583
    return-void
.end method

.method public setCurrentState(Z)V
    .locals 0
    .parameter "isvideo"

    .prologue
    .line 890
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    .line 891
    return-void
.end method

.method public setFirstLevelMenuEnableByShoot(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 937
    new-instance v1, Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/hwcamera/hwui/ShootCommon;-><init>(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V

    .line 938
    .local v1, shootCommon:Lcom/android/hwcamera/hwui/ShootCommon;
    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/ShootCommon;->getEffectDistortionEnableByShoot(Ljava/lang/String;)[Z

    move-result-object v0

    .line 939
    .local v0, effectDistortionEnable:[Z
    iget v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hw_front_camera_support_coloreffect"

    invoke-static {v2, v3, v5}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 941
    :cond_0
    const/4 v2, 0x2

    aget-boolean v3, v0, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 943
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v3, "pref_camera_distortion_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    if-nez v2, :cond_2

    .line 944
    aget-boolean v2, v0, v5

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/ShootCommon;->isWhiteBalanceEnable(Z)Z

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 949
    :goto_0
    return-void

    .line 947
    :cond_2
    aget-boolean v2, v0, v4

    invoke-virtual {p0, v4, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_0
.end method

.method public setGPSstatus(Z)V
    .locals 2
    .parameter "status"

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mGPSstatus:Z

    .line 675
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mGPSstatus:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setGPSstatus(Z)V

    .line 678
    :cond_0
    return-void
.end method

.method public setIsInternalStorageExist(Z)V
    .locals 0
    .parameter "exist"

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsInternalStorageExist:Z

    .line 578
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 9
    .parameter "degree"

    .prologue
    const v8, 0x7f02000d

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x7f020006

    .line 612
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v3, :cond_0

    .line 613
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/hwui/SettingsView;->setOrientationEx(I)V

    .line 616
    :cond_0
    const v3, 0x7f08003d

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 618
    const v3, 0x7f08003c

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 620
    const v3, 0x7f08003b

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 622
    const v3, 0x7f08003a

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 624
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 625
    .local v0, mLineLayout:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 629
    .local v2, titleView:Landroid/view/View;
    div-int/lit8 v3, p1, 0x5a

    rem-int/lit8 v1, v3, 0x4

    .line 630
    .local v1, orientation:I
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    .line 632
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 634
    if-nez v1, :cond_2

    .line 635
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 636
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 637
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040017

    const v5, 0x7f040019

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 638
    :cond_2
    if-ne v1, v7, :cond_3

    .line 639
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 640
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v8}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 641
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040014

    const v5, 0x7f040015

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto :goto_0

    .line 642
    :cond_3
    if-ne v1, v5, :cond_4

    .line 643
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 644
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v8}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 645
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040016

    const v5, 0x7f040018

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto :goto_0

    .line 646
    :cond_4
    if-ne v1, v6, :cond_1

    .line 647
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 648
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 649
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f04001a

    const v5, 0x7f04001b

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto :goto_0

    .line 653
    :cond_5
    if-nez v1, :cond_6

    .line 654
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 655
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 656
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040016

    const v5, 0x7f040018

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto :goto_0

    .line 657
    :cond_6
    if-ne v1, v7, :cond_7

    .line 658
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v4, 0x7f020007

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 659
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 660
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040017

    const v5, 0x7f040019

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto/16 :goto_0

    .line 661
    :cond_7
    if-ne v1, v5, :cond_8

    .line 662
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v4, 0x7f020008

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 663
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 664
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f04001a

    const v5, 0x7f04001b

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto/16 :goto_0

    .line 665
    :cond_8
    if-ne v1, v6, :cond_1

    .line 666
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 667
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 668
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040014

    const v5, 0x7f040015

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto/16 :goto_0
.end method

.method public setPanelClosed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 230
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 232
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    .line 235
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 236
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    .line 238
    invoke-virtual {p0, v2, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 239
    return-void
.end method

.method public setPanelItemEnable(IZ)V
    .locals 2
    .parameter "index"
    .parameter "isEnable"

    .prologue
    .line 917
    const/4 v0, 0x0

    .line 918
    .local v0, itemId:I
    packed-switch p1, :pswitch_data_0

    .line 935
    :goto_0
    return-void

    .line 920
    :pswitch_0
    const v0, 0x7f08003a

    .line 934
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p2}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 923
    :pswitch_1
    const v0, 0x7f08003b

    .line 924
    goto :goto_1

    .line 926
    :pswitch_2
    const v0, 0x7f08003c

    .line 927
    goto :goto_1

    .line 929
    :pswitch_3
    const v0, 0x7f08003d

    .line 930
    goto :goto_1

    .line 918
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 561
    return-void
.end method

.method public setTouchAble(Z)V
    .locals 0
    .parameter "touchAble"

    .prologue
    .line 545
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandleTouchEvnt:Z

    .line 546
    return-void
.end method

.method public setVideoCaptureIntent(Z)V
    .locals 0
    .parameter "isVideoCaptureIntent"

    .prologue
    .line 903
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    .line 904
    return-void
.end method

.method public setVideoRecordQuality(Z)V
    .locals 0
    .parameter "lowRecord"

    .prologue
    .line 911
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsLowVideoRecord:Z

    .line 912
    return-void
.end method

.method public set_1080P_videoSize_title(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 914
    iput p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->m1080P_videosize_Height:I

    .line 915
    return-void
.end method

.method public updatePanelIdleState()Z
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 681
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 682
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 683
    .local v0, closemenu:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 684
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/hwcamera/hwui/SuperPanel;->MAXIDLETIME:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 685
    const/4 v1, 0x1

    return v1
.end method

.method public updateSubMenuState(I)V
    .locals 6
    .parameter "mstep"

    .prologue
    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, marginLeft:I
    const/4 v3, 0x0

    .line 359
    .local v3, marginTop:I
    const/4 v2, 0x0

    .line 360
    .local v2, marginRight:I
    const/4 v0, 0x0

    .line 361
    .local v0, marginBottom:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 364
    iget v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v4, v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int v1, v4, v5

    .line 370
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 373
    return-void

    .line 367
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 368
    iget v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v4, v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int v3, v4, v5

    goto :goto_0
.end method
