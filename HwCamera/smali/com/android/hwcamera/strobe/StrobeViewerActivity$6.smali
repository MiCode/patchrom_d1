.class Lcom/android/hwcamera/strobe/StrobeViewerActivity$6;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/strobe/StrobeViewerActivity;->deleteFolderSilently()V
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
    .line 1060
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$6;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$6;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mIsDeletingFiles:Z
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$4300(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$6;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mIsDeletingFiles:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$4302(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Z)Z

    .line 1065
    invoke-static {}, Lcom/android/hwcamera/Storage;->getActionPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Storage;->delAllFile(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$6;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mIsDeletingFiles:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$4302(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Z)Z

    .line 1068
    :cond_0
    return-void
.end method
