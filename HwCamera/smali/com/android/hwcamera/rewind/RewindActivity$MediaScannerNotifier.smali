.class Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/hwcamera/rewind/RewindActivity;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/rewind/RewindActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p3, p0, Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;->mPath:Ljava/lang/String;

    .line 571
    iput-object p4, p0, Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;->mMimeType:Ljava/lang/String;

    .line 572
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 573
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 574
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 582
    const-string v0, "RewindActivity"

    const-string v1, "MediaStore informed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method
