.class Lcom/android/hwcamera/strobe/StrobeViewerActivity$5;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/strobe/StrobeViewerActivity;->showControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$5;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 655
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$5;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3000(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$5;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3100(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 657
    return-void
.end method
