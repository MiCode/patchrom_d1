.class Lcom/android/hwcamera/Thumbnail$Media;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Thumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Media"
.end annotation


# instance fields
.field public final dateTaken:J

.field public final id:J

.field public final orientation:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JIJLandroid/net/Uri;)V
    .locals 0
    .parameter "id"
    .parameter "orientation"
    .parameter "dateTaken"
    .parameter "uri"

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-wide p1, p0, Lcom/android/hwcamera/Thumbnail$Media;->id:J

    .line 210
    iput p3, p0, Lcom/android/hwcamera/Thumbnail$Media;->orientation:I

    .line 211
    iput-wide p4, p0, Lcom/android/hwcamera/Thumbnail$Media;->dateTaken:J

    .line 212
    iput-object p6, p0, Lcom/android/hwcamera/Thumbnail$Media;->uri:Landroid/net/Uri;

    .line 213
    return-void
.end method
