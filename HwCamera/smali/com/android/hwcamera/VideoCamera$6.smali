.class Lcom/android/hwcamera/VideoCamera$6;
.super Landroid/os/Handler;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V
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
    .line 2763
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$5400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2767
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/hwcamera/Thumbnail;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v1, v0}, Lcom/android/hwcamera/VideoCamera;->access$5502(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 2768
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$5500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2769
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$5400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$5500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2772
    :cond_0
    return-void
.end method
