.class Lcom/android/hwcamera/VideoCamera$7;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->restorePreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 3099
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$7;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3101
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$7;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$7;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$5600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$7;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$3800(Lcom/android/hwcamera/VideoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 3103
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$7;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->restoreParameterToDefault()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$5700(Lcom/android/hwcamera/VideoCamera;)V

    .line 3104
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$7;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->onSharedPreferencesChanged()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$5800(Lcom/android/hwcamera/VideoCamera;)V

    .line 3105
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$7;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$5900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3106
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$7;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updatesuperpanel()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$6000(Lcom/android/hwcamera/VideoCamera;)V

    .line 3108
    :cond_0
    return-void
.end method
