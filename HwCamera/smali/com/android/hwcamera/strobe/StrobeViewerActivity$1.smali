.class Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/strobe/StrobeViewerActivity;->resetSessionStoreSilently()V
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
    .line 378
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Lcom/android/hwcamera/strobe/SessionStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/strobe/SessionStore;->reset()V

    .line 382
    return-void
.end method
