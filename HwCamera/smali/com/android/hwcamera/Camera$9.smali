.class Lcom/android/hwcamera/Camera$9;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/Camera;->restorePreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5167
    iput-object p1, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5169
    iget-object v0, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$11402(Lcom/android/hwcamera/Camera;Z)Z

    .line 5170
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In restore, mRestartPreviewNeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$11400(Lcom/android/hwcamera/Camera;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    iget-object v0, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$6900(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 5172
    iget-object v0, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->restoreParameterToDefault()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$11500(Lcom/android/hwcamera/Camera;)V

    .line 5173
    iget-object v0, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateSuperPanel()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$11600(Lcom/android/hwcamera/Camera;)V

    .line 5174
    iget-object v0, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$6900(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5175
    iget-object v0, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/Camera;->mZoomValue:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$8002(Lcom/android/hwcamera/Camera;I)I

    .line 5176
    iget-object v0, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x2

    #calls: Lcom/android/hwcamera/Camera;->setCameraParametersWhenIdle(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$11700(Lcom/android/hwcamera/Camera;I)V

    .line 5178
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->onSharedPreferenceChanged()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$11800(Lcom/android/hwcamera/Camera;)V

    .line 5179
    return-void
.end method
