.class Lcom/android/hwcamera/panorama/PanoramaActivity$6;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;->startCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 6
    .parameter "isFinished"
    .parameter "panningRateX"
    .parameter "panningRateY"
    .parameter "progressX"
    .parameter "progressY"

    .prologue
    const/high16 v5, 0x4320

    .line 555
    iget-object v4, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1300(Lcom/android/hwcamera/panorama/PanoramaActivity;)F

    move-result v4

    mul-float v0, p4, v4

    .line 556
    .local v0, accumulatedHorizontalAngle:F
    iget-object v4, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1400(Lcom/android/hwcamera/panorama/PanoramaActivity;)F

    move-result v4

    mul-float v1, p5, v4

    .line 557
    .local v1, accumulatedVerticalAngle:F
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 560
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    const/4 v5, 0x0

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCapture(Z)V
    invoke-static {v4, v5}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1500(Lcom/android/hwcamera/panorama/PanoramaActivity;Z)V

    .line 567
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1300(Lcom/android/hwcamera/panorama/PanoramaActivity;)F

    move-result v4

    mul-float v2, p2, v4

    .line 563
    .local v2, panningRateXInDegree:F
    iget-object v4, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1400(Lcom/android/hwcamera/panorama/PanoramaActivity;)F

    move-result v4

    mul-float v3, p3, v4

    .line 564
    .local v3, panningRateYInDegree:F
    iget-object v4, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->updateProgress(FFFF)V
    invoke-static {v4, v2, v3, v0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1600(Lcom/android/hwcamera/panorama/PanoramaActivity;FFFF)V

    goto :goto_0
.end method
