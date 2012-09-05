.class Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/rewind/RewindActivity;Lcom/android/hwcamera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 607
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/android/hwcamera/rewind/Button;
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$1500(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/android/hwcamera/rewind/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #calls: Lcom/android/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2200(Lcom/android/hwcamera/rewind/RewindActivity;Z)V

    .line 609
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #calls: Lcom/android/hwcamera/rewind/RewindActivity;->saveRewind()V
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2300(Lcom/android/hwcamera/rewind/RewindActivity;)V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/android/hwcamera/rewind/Button;
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2400(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/android/hwcamera/rewind/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #calls: Lcom/android/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2200(Lcom/android/hwcamera/rewind/RewindActivity;Z)V

    .line 612
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$1900(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->commit()V

    goto :goto_0

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/android/hwcamera/rewind/Button;
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$1600(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/android/hwcamera/rewind/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 614
    const-string v0, "kangwei"

    const-string v1, "mCancelBtn clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$1900(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->getCancelState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$1900(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->manualBackPressed()V

    .line 617
    const-string v0, "kangwei"

    const-string v1, "manualBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mMyHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$1800(Lcom/android/hwcamera/rewind/RewindActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
