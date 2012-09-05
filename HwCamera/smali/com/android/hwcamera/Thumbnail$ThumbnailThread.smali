.class public Lcom/android/hwcamera/Thumbnail$ThumbnailThread;
.super Ljava/lang/Thread;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Thumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private isCameraState:Z

.field private mThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V
    .locals 2
    .parameter "resolver"
    .parameter "isCameraState"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 155
    iput-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->resolver:Landroid/content/ContentResolver;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->isCameraState:Z

    .line 157
    iput-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->handler:Landroid/os/Handler;

    .line 158
    iput-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 161
    iput-object p1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->resolver:Landroid/content/ContentResolver;

    .line 162
    iput-boolean p2, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->isCameraState:Z

    .line 163
    iput-object p3, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->handler:Landroid/os/Handler;

    .line 164
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->resolver:Landroid/content/ContentResolver;

    iget-boolean v2, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->isCameraState:Z

    invoke-static {v1, v2}, Lcom/android/hwcamera/Thumbnail;->getLastThumbnail(Landroid/content/ContentResolver;Z)Lcom/android/hwcamera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 169
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->resolver:Landroid/content/ContentResolver;

    .line 173
    return-void
.end method
