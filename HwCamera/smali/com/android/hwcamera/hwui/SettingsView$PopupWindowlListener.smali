.class Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupWindowlListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/SettingsView;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/hwui/SettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/hwui/SettingsView;Lcom/android/hwcamera/hwui/SettingsView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;-><init>(Lcom/android/hwcamera/hwui/SettingsView;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "KEY"
    .parameter "value"
    .parameter "showValue"

    .prologue
    .line 943
    const-string v0, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$100(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    .line 970
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$1200(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    return-void

    .line 945
    :cond_1
    const-string v0, "pref_camera_iso_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 946
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$200(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 947
    :cond_2
    const-string v0, "pref_camera_picturesize_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 948
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$300(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 949
    :cond_3
    const-string v0, "pref_camera_jpegquality_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 950
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$400(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :cond_4
    const-string v0, "pref_camera_timer_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 952
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$500(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 953
    :cond_5
    const-string v0, "pref_camera_picture_widescreen_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 954
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$300(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 955
    :cond_6
    const-string v0, "pref_camera_save_location_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 956
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$600(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 957
    :cond_7
    const-string v0, "pref_camera_scenemode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 958
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$700(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #calls: Lcom/android/hwcamera/hwui/SettingsView;->sceneChangeedUpdateItems(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/hwcamera/hwui/SettingsView;->access$800(Lcom/android/hwcamera/hwui/SettingsView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 960
    :cond_8
    const-string v0, "pref_camera_review_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_videocamera_review_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 962
    :cond_9
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$900(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 963
    :cond_a
    const-string v0, "pref_video_quality_level_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 964
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$1000(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 965
    :cond_b
    const-string v0, "pref_camera_antibanding_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "pref_video_antibanding_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    :cond_c
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$1100(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPopupWindowDismiss()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    #getter for: Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SettingsView;->access$1300(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->access$1402(Lcom/android/hwcamera/hwui/SettingsView;I)I

    .line 981
    :cond_0
    return-void
.end method
