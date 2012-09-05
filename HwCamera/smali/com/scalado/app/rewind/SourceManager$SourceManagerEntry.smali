.class public Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;
.super Ljava/lang/Object;
.source "SourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/SourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceManagerEntry"
.end annotation


# instance fields
.field private mAllowedMagnifierPositionsRect:Lcom/scalado/base/Rect;

.field mBackgroundImageZoom:F

.field mCachedBackgroundImage:Lcom/scalado/base/Image;

.field mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

.field mCachedMagnifierImage:Lcom/scalado/base/Image;

.field mCachedMagnifierPosition:Landroid/graphics/Point;

.field mCachedMagnifierRect:Lcom/scalado/base/Rect;

.field mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

.field mCachedMagnifierZoom:F

.field mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

.field private mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

.field mIsCompleted:Z

.field mSession:Lcom/scalado/caps/Session;

.field mSourceBuffer:Lcom/scalado/base/Buffer;

.field mSourceDimensions:Lcom/scalado/base/Size;

.field mSourceStream:Lcom/scalado/stream/BufferStream;

.field mThumbnailImage:Lcom/scalado/base/Image;

.field final synthetic this$0:Lcom/scalado/app/rewind/SourceManager;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/base/Buffer;)V
    .locals 3
    .parameter
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 564
    iput-object p1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-boolean v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mIsCompleted:Z

    .line 565
    iput-object p2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceBuffer:Lcom/scalado/base/Buffer;

    .line 566
    new-instance v0, Lcom/scalado/stream/BufferStream;

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceBuffer:Lcom/scalado/base/Buffer;

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceStream:Lcom/scalado/stream/BufferStream;

    .line 568
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierPosition:Landroid/graphics/Point;

    .line 569
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierZoom:F

    .line 571
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    .line 572
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mAllowedMagnifierPositionsRect:Lcom/scalado/base/Rect;

    .line 573
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/base/Buffer;Lcom/scalado/app/rewind/SourceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 510
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;-><init>(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/base/Buffer;)V

    return-void
.end method

.method private declared-synchronized calculateAllowedMagnifierPositionsRect(F)V
    .locals 10
    .parameter "zoom"

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v8}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v8

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v8}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, p1

    div-float v4, v8, v9

    .line 762
    .local v4, relativeMagnifierSourceWidth:F
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v8}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v8

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v8}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, p1

    div-float v3, v8, v9

    .line 767
    .local v3, relativeMagnifierSourceHeight:F
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v8}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v8

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v8}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v8

    sget-object v9, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v8}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v8

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v8}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v8

    sget-object v9, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    if-ne v8, v9, :cond_1

    .line 769
    :cond_0
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    iget v9, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    mul-float/2addr v8, v9

    float-to-int v2, v8

    .line 771
    .local v2, paddingWx2:I
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    iget v9, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 773
    .local v1, paddingHx2:I
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v8

    sub-int v5, v8, v2

    .line 774
    .local v5, w:I
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v8

    sub-int v0, v8, v1

    .line 775
    .local v0, h:I
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getX()I

    move-result v8

    div-int/lit8 v9, v2, 0x2

    add-int v6, v8, v9

    .line 776
    .local v6, x:I
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getY()I

    move-result v8

    div-int/lit8 v9, v1, 0x2

    add-int v7, v8, v9

    .line 789
    .local v7, y:I
    :goto_0
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mAllowedMagnifierPositionsRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8, v5}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 790
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mAllowedMagnifierPositionsRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 791
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mAllowedMagnifierPositionsRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8, v6}, Lcom/scalado/base/Rect;->setX(I)V

    .line 792
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mAllowedMagnifierPositionsRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8, v7}, Lcom/scalado/base/Rect;->setY(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    monitor-exit p0

    return-void

    .line 778
    .end local v0           #h:I
    .end local v1           #paddingHx2:I
    .end local v2           #paddingWx2:I
    .end local v5           #w:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    iget v9, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    mul-float/2addr v8, v9

    float-to-int v2, v8

    .line 780
    .restart local v2       #paddingWx2:I
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    iget v9, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 782
    .restart local v1       #paddingHx2:I
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v8

    sub-int v5, v8, v2

    .line 783
    .restart local v5       #w:I
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v8

    sub-int v0, v8, v1

    .line 784
    .restart local v0       #h:I
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getX()I

    move-result v8

    div-int/lit8 v9, v2, 0x2

    add-int v6, v8, v9

    .line 785
    .restart local v6       #x:I
    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getY()I

    move-result v8

    div-int/lit8 v9, v1, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int v7, v8, v9

    .restart local v7       #y:I
    goto :goto_0

    .line 760
    .end local v0           #h:I
    .end local v1           #paddingHx2:I
    .end local v2           #paddingWx2:I
    .end local v3           #relativeMagnifierSourceHeight:F
    .end local v4           #relativeMagnifierSourceWidth:F
    .end local v5           #w:I
    .end local v6           #x:I
    .end local v7           #y:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private calculateBackgroundImageZoom(Lcom/scalado/base/Size;Lcom/scalado/app/rewind/SourceManager$Configuration;)V
    .locals 3
    .parameter "sourceDimensions"
    .parameter "backGroundImageConfig"

    .prologue
    .line 686
    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v0

    sget-object v1, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    if-eq v0, v1, :cond_0

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v0

    sget-object v1, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    if-ne v0, v1, :cond_1

    .line 688
    :cond_0
    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    .line 700
    :goto_0
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backGroundImageConfig.mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sourceDimensions.getWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backGroundImageConfig.mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBackgroundImageZoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void

    .line 694
    :cond_1
    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    goto/16 :goto_0
.end method

.method private calculateDisplayedBackgroundImageRect()V
    .locals 9

    .prologue
    .line 716
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    .line 717
    .local v2, srcWidth:I
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    .line 719
    .local v1, srcHeight:I
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Source dimensions: ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v6

    sget-object v7, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v6

    sget-object v7, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    if-ne v6, v7, :cond_1

    .line 728
    :cond_0
    iget v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 729
    .local v3, w:I
    iget v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 736
    .local v0, h:I
    :goto_0
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v6

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    .line 737
    .local v4, x:I
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v5, v6, 0x2

    .line 739
    .local v5, y:I
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v3}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 740
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 741
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v4}, Lcom/scalado/base/Rect;->setX(I)V

    .line 742
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v5}, Lcom/scalado/base/Rect;->setY(I)V

    .line 744
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DisplayedBackground Image (x, y):("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getX()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getY()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") (w, h):("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void

    .line 732
    .end local v0           #h:I
    .end local v3           #w:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_1
    iget v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 733
    .restart local v3       #w:I
    iget v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .restart local v0       #h:I
    goto/16 :goto_0
.end method

.method private calculateMagnifierSourceRect(Landroid/graphics/Point;F)V
    .locals 8
    .parameter "position"
    .parameter "zoom"

    .prologue
    const/high16 v6, 0x4000

    const/high16 v7, 0x3f80

    .line 810
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v5}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float v1, v4, p2

    .line 812
    .local v1, relativeW:F
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v5}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float v0, v4, p2

    .line 814
    .local v0, relativeH:F
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v5}, Lcom/scalado/base/Rect;->getX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v5}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float v5, v1, v6

    sub-float v2, v4, v5

    .line 818
    .local v2, relativeX:F
    iget v4, p1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v5}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v5}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float v5, v0, v6

    sub-float v3, v4, v5

    .line 827
    .local v3, relativeY:F
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    if-ne v4, v5, :cond_0

    .line 828
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 831
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 834
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setX(I)V

    .line 836
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setY(I)V

    .line 879
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    if-ne v4, v5, :cond_1

    .line 839
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 842
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 845
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setX(I)V

    .line 847
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    sub-float v5, v7, v1

    sub-float/2addr v5, v2

    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setY(I)V

    goto :goto_0

    .line 850
    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    if-ne v4, v5, :cond_2

    .line 851
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 854
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 857
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    sub-float v5, v7, v1

    sub-float/2addr v5, v2

    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setX(I)V

    .line 860
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    sub-float v5, v7, v0

    sub-float/2addr v5, v3

    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setY(I)V

    goto/16 :goto_0

    .line 864
    :cond_2
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 867
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 870
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    sub-float v5, v7, v0

    sub-float/2addr v5, v3

    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setX(I)V

    .line 873
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->setY(I)V

    goto/16 :goto_0
.end method

.method private createSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-nez v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Create decoder"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceStream:Lcom/scalado/stream/BufferStream;

    invoke-static {v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v0

    .line 587
    .local v0, iterator:Lcom/scalado/base/Iterator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 589
    invoke-virtual {v0}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    iput-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 592
    new-instance v1, Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v3}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    .line 595
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoder created for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #calls: Lcom/scalado/app/rewind/SourceManager;->getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    invoke-static {v3, p0}, Lcom/scalado/app/rewind/SourceManager;->access$100(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v0           #iterator:Lcom/scalado/base/Iterator;
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    if-nez v1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Create session"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v1, Lcom/scalado/caps/Session;

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-direct {v1, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    .line 602
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session created for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #calls: Lcom/scalado/app/rewind/SourceManager;->getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    invoke-static {v3, p0}, Lcom/scalado/app/rewind/SourceManager;->access$100(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->calculateBackgroundImageZoom(Lcom/scalado/base/Size;Lcom/scalado/app/rewind/SourceManager$Configuration;)V

    .line 607
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->calculateDisplayedBackgroundImageRect()V

    .line 609
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v2

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$602(Lcom/scalado/app/rewind/SourceManager$Configuration;I)I

    .line 612
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v2

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$702(Lcom/scalado/app/rewind/SourceManager$Configuration;I)I

    .line 616
    :cond_1
    return-void
.end method

.method private magnifiedImageDirty()Z
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1012
    :cond_0
    const/4 v0, 0x1

    .line 1014
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renderBackground()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 655
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    if-nez v1, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->createSession()V

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    if-nez v1, :cond_1

    .line 659
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "mBackgroundImageConfig was null when creating background"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Render background"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v1, Lcom/scalado/base/Image;

    new-instance v2, Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1100(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    .line 668
    new-instance v0, Lcom/scalado/caps/screen/Screen;

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 671
    .local v0, screen:Lcom/scalado/caps/screen/Screen;
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->calculateBackgroundImageZoom(Lcom/scalado/base/Size;Lcom/scalado/app/rewind/SourceManager$Configuration;)V

    .line 673
    iget v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 674
    iget v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    invoke-virtual {v0, v1}, Lcom/scalado/caps/screen/Screen;->setZoom(F)V

    .line 677
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scalado/caps/screen/Screen;->setRotation(Lcom/scalado/caps/Rotation;)V

    .line 678
    invoke-virtual {v0}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 679
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background rendered for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #calls: Lcom/scalado/app/rewind/SourceManager;->getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    invoke-static {v3, p0}, Lcom/scalado/app/rewind/SourceManager;->access$100(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , zoom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void
.end method

.method private renderMagnifiedImage(Landroid/graphics/Point;F)V
    .locals 2
    .parameter "magnifierPosition"
    .parameter "zoom"

    .prologue
    .line 644
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->calculateMagnifierSourceRect(Landroid/graphics/Point;F)V

    .line 645
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$1200(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 646
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v0}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 647
    return-void
.end method

.method private renderMagnifiedImage(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 651
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v0}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 652
    return-void
.end method

.method private renderThumbnail()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 619
    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    if-nez v2, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->createSession()V

    .line 623
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mThumbnailImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager;->access$1000(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v2

    if-nez v2, :cond_1

    .line 624
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "mThumbnailImageConfig was null when creating thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Render thumbnail"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v2, Lcom/scalado/base/Image;

    new-instance v3, Lcom/scalado/base/Size;

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mThumbnailImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1000(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mThumbnailImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v5}, Lcom/scalado/app/rewind/SourceManager;->access$1000(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v5

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v5}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mThumbnailImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$1000(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1100(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mThumbnailImage:Lcom/scalado/base/Image;

    .line 632
    new-instance v0, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mThumbnailImage:Lcom/scalado/base/Image;

    invoke-direct {v0, v2}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 636
    .local v0, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v2, v0}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 637
    .local v1, iterator:Lcom/scalado/base/Iterator;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scalado/base/Iterator;->step(I)F

    .line 639
    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thumbnail rendered for entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #calls: Lcom/scalado/app/rewind/SourceManager;->getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    invoke-static {v4, p0}, Lcom/scalado/app/rewind/SourceManager;->access$100(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void
.end method

.method private updateMagnifiedImage()V
    .locals 8

    .prologue
    .line 1019
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1100(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/PixelFormat;->getBitsPerPixel(Lcom/scalado/base/Image$Config;)I

    move-result v0

    .line 1021
    .local v0, bpp:I
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v3

    mul-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x8

    .line 1022
    .local v2, scanline:I
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v3

    mul-int v1, v2, v3

    .line 1024
    .local v1, necessarySize:I
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    invoke-virtual {v3}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 1028
    :cond_0
    new-instance v3, Lcom/scalado/base/Buffer;

    int-to-float v4, v1

    const v5, 0x3f8ccccd

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/scalado/base/Buffer;-><init>(I)V

    iput-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    .line 1031
    :cond_1
    new-instance v3, Lcom/scalado/base/Image;

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    new-instance v5, Lcom/scalado/base/Size;

    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v6

    iget-object v7, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v7}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v7

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v7}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1100(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    .line 1036
    new-instance v3, Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-direct {v3, v4, v5}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    iput-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    .line 1041
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setRotation(Lcom/scalado/caps/Rotation;)V

    .line 1042
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$400(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/screen/Screen$RenderMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 1044
    return-void
.end method


# virtual methods
.method public getAllowedMagnifierPositionsRect(F)Lcom/scalado/base/Rect;
    .locals 1
    .parameter "zoom"

    .prologue
    .line 894
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->calculateAllowedMagnifierPositionsRect(F)V

    .line 896
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mAllowedMagnifierPositionsRect:Lcom/scalado/base/Rect;

    return-object v0
.end method

.method public getBackgroundImage()Lcom/scalado/base/Image;
    .locals 3

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    if-nez v1, :cond_0

    .line 1049
    :try_start_0
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->renderBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    return-object v1

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBackgroundImageZoom()F
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    return v0
.end method

.method public getDecoder()Lcom/scalado/caps/Decoder;
    .locals 3

    .prologue
    .line 920
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-nez v1, :cond_0

    .line 922
    :try_start_0
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->createSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    return-object v1

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDisplayedBackgroundImageRect()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    return-object v0
.end method

.method public getMagnifiedImage(Landroid/graphics/Point;F)Lcom/scalado/base/Image;
    .locals 9
    .parameter "magnifierPosition"
    .parameter "zoom"

    .prologue
    .line 932
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {p0, p2}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getAllowedMagnifierPositionsRect(F)Lcom/scalado/base/Rect;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/scalado/app/rewind/SourceManager;->restrictPointToRect(Landroid/graphics/Point;Lcom/scalado/base/Rect;)V

    .line 936
    const/4 v2, 0x0

    .line 937
    .local v2, render:Z
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-virtual {v4}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v5}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v5

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v5}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-virtual {v4}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v5}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v5

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v5}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 941
    :cond_0
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1100(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/PixelFormat;->getBitsPerPixel(Lcom/scalado/base/Image$Config;)I

    move-result v0

    .line 943
    .local v0, bpp:I
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v4

    mul-int/2addr v4, v0

    div-int/lit8 v3, v4, 0x8

    .line 944
    .local v3, scanline:I
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v4

    mul-int v1, v3, v4

    .line 946
    .local v1, necessarySize:I
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    invoke-virtual {v4}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v4

    if-ge v4, v1, :cond_2

    .line 950
    :cond_1
    new-instance v4, Lcom/scalado/base/Buffer;

    int-to-float v5, v1

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v4, v5}, Lcom/scalado/base/Buffer;-><init>(I)V

    iput-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    .line 953
    :cond_2
    new-instance v4, Lcom/scalado/base/Image;

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    new-instance v6, Lcom/scalado/base/Size;

    iget-object v7, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v7}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v7

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v7}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v7

    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v8}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v8

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v8}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v7, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v7}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v7

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v7}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1100(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    .line 958
    new-instance v4, Lcom/scalado/caps/screen/Screen;

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-direct {v4, v5, v6}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    iput-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    .line 964
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v5}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v5

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v5}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/scalado/caps/screen/Screen;->setRotation(Lcom/scalado/caps/Rotation;)V

    .line 966
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v5}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v5

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;
    invoke-static {v5}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$400(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/screen/Screen$RenderMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 969
    const/4 v2, 0x1

    .line 971
    .end local v0           #bpp:I
    .end local v1           #necessarySize:I
    .end local v3           #scanline:I
    :cond_3
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierPosition:Landroid/graphics/Point;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->equals(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 973
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierPosition:Landroid/graphics/Point;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 974
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierPosition:Landroid/graphics/Point;

    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 976
    const/4 v2, 0x1

    .line 978
    :cond_4
    iget v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierZoom:F

    cmpl-float v4, v4, p2

    if-eqz v4, :cond_5

    .line 979
    iput p2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierZoom:F

    .line 981
    const/4 v2, 0x1

    .line 984
    :cond_5
    if-eqz v2, :cond_6

    .line 985
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->renderMagnifiedImage(Landroid/graphics/Point;F)V

    .line 987
    :cond_6
    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    return-object v4
.end method

.method public getMagnifiedImage(Lcom/scalado/base/Rect;)Lcom/scalado/base/Image;
    .locals 6
    .parameter "rect"

    .prologue
    .line 991
    const/4 v0, 0x0

    .line 992
    .local v0, render:Z
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->magnifiedImageDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->updateMagnifiedImage()V

    .line 994
    const/4 v0, 0x1

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    invoke-virtual {v1, p1}, Lcom/scalado/base/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 998
    :cond_1
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/scalado/base/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    .line 1000
    const/4 v0, 0x1

    .line 1002
    :cond_2
    if-eqz v0, :cond_3

    .line 1003
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->renderMagnifiedImage(Lcom/scalado/base/Rect;)V

    .line 1005
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    return-object v1
.end method

.method getScreen()Lcom/scalado/caps/screen/Screen;
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    return-object v0
.end method

.method public getSourceBuffer()Lcom/scalado/base/Buffer;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceBuffer:Lcom/scalado/base/Buffer;

    return-object v0
.end method

.method public getSourceBuffer(I)Lcom/scalado/base/Buffer;
    .locals 1
    .parameter "index"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/SourceManager;->access$1400(Lcom/scalado/app/rewind/SourceManager;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getSourceBuffer()Lcom/scalado/base/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()Lcom/scalado/base/Image;
    .locals 3

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mThumbnailImage:Lcom/scalado/base/Image;

    if-nez v1, :cond_0

    .line 1060
    :try_start_0
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->renderThumbnail()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1067
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mThumbnailImage:Lcom/scalado/base/Image;

    return-object v1

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1063
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1064
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
