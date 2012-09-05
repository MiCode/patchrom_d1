.class public Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
.super Ljava/lang/Object;
.source "SessionStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/strobe/SessionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrobeObject"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mMask:Landroid/graphics/Bitmap;

.field private mObjectIndex:I

.field private mOpacity:F

.field private mSrcDims:Lcom/scalado/base/Size;

.field private mSrcIndex:I

.field private mVisible:Z

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(IIIILandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "srcIndex"
    .parameter "objectIndex"
    .parameter "mask"

    .prologue
    .line 117
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;-><init>(IIIILandroid/graphics/Bitmap;Lcom/scalado/base/Size;)V

    .line 118
    return-void
.end method

.method public constructor <init>(IIIILandroid/graphics/Bitmap;Lcom/scalado/base/Size;)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "srcIndex"
    .parameter "objectIndex"
    .parameter "mask"
    .parameter "srcDims"

    .prologue
    const/4 v0, -0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mSrcIndex:I

    .line 109
    iput v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mObjectIndex:I

    .line 122
    iput p1, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mX:I

    .line 123
    iput p2, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mY:I

    .line 124
    iput p3, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mSrcIndex:I

    .line 125
    iput p4, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mObjectIndex:I

    .line 126
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mOpacity:F

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mVisible:Z

    .line 128
    iput-object p5, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    .line 129
    if-eqz p6, :cond_0

    .line 130
    invoke-virtual {p6}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mSrcDims:Lcom/scalado/base/Size;

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMask()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getObjectIndex()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mObjectIndex:I

    return v0
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mVisible:Z

    if-eqz v0, :cond_0

    .line 190
    iget v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mOpacity:F

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRect()Lcom/scalado/base/Rect;
    .locals 5

    .prologue
    .line 149
    new-instance v0, Lcom/scalado/base/Rect;

    iget v1, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mX:I

    iget v2, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mY:I

    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/base/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getSrcHeight()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mSrcDims:Lcom/scalado/base/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getSrcIndex()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mSrcIndex:I

    return v0
.end method

.method public getSrcWidth()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mSrcDims:Lcom/scalado/base/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mY:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mVisible:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    .line 225
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mBitmap:Landroid/graphics/Bitmap;

    .line 171
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .parameter "opacity"

    .prologue
    .line 182
    iput p1, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mOpacity:F

    .line 183
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mVisible:Z

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    const-string v0, "%d, %d - %dx%d, src: %d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->mSrcIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
