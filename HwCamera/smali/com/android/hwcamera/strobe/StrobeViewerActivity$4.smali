.class Lcom/android/hwcamera/strobe/StrobeViewerActivity$4;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$4;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    iput-boolean p2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$4;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$4;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2900(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$4;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$4;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3000(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$4;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 646
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$4;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3100(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$4;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 647
    return-void
.end method
