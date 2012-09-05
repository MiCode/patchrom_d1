.class public final Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;
.super Ljava/lang/Object;
.source "StrobeObjectAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer$Logger;
    }
.end annotation


# static fields
.field private static final SOLID_GREEN:Lcom/scalado/base/Color; = null

.field private static final TAG:Ljava/lang/String; = "StrobeObjectAnalyzer"


# instance fields
.field private mAlphaToBitmapPaint:Landroid/graphics/Paint;

.field private mCancelled:Z

.field private mColorToAlphaPaint:Landroid/graphics/Paint;

.field private mLogger:Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer$Logger;

.field private mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

.field private mStrobe:Lcom/scalado/caps/strobe/Strobe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 38
    new-instance v0, Lcom/scalado/base/Color;

    invoke-direct {v0, v2, v1, v2, v1}, Lcom/scalado/base/Color;-><init>(IIII)V

    sput-object v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->SOLID_GREEN:Lcom/scalado/base/Color;

    return-void
.end method

.method public constructor <init>(Lcom/android/hwcamera/strobe/SessionStore;Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer$Logger;)V
    .locals 4
    .parameter "sessionStore"
    .parameter "logger"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mCancelled:Z

    .line 62
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    .line 63
    iput-object p2, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mLogger:Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer$Logger;

    .line 68
    const/16 v1, 0x14

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 70
    .local v0, matrix:[F
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mColorToAlphaPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mColorToAlphaPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mAlphaToBitmapPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mAlphaToBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    return-void

    .line 68
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createStrobeObjectBitmap(Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "strobeObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 168
    invoke-virtual {p1}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getMask()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 169
    .local v6, mask:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    .local v0, alphaBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 174
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    invoke-virtual {v8}, Lcom/android/hwcamera/strobe/SessionStore;->getAnalyzedSessions()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/caps/Session;

    .line 177
    .local v7, session:Lcom/scalado/caps/Session;
    new-instance v3, Lcom/scalado/caps/filter/Crop;

    invoke-direct {v3, v7}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    .line 178
    .local v3, crop:Lcom/scalado/caps/filter/Crop;
    invoke-virtual {p1}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getRect()Lcom/scalado/base/Rect;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/scalado/caps/filter/Crop;->set(Lcom/scalado/base/Rect;)V

    .line 182
    new-instance v4, Lcom/scalado/caps/codec/encoder/BitmapEncoder;

    invoke-direct {v4, v1, v12}, Lcom/scalado/caps/codec/encoder/BitmapEncoder;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 183
    .local v4, encoder:Lcom/scalado/caps/codec/encoder/BitmapEncoder;
    invoke-virtual {v7, v4}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 184
    .local v5, it:Lcom/scalado/base/Iterator;
    invoke-virtual {v5, v12}, Lcom/scalado/base/Iterator;->step(I)F

    .line 186
    invoke-virtual {v3}, Lcom/scalado/caps/filter/Crop;->abort()V

    .line 188
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v2, canvas:Landroid/graphics/Canvas;
    iget-object v8, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mColorToAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    iget-object v8, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mAlphaToBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    :cond_0
    return-object v1
.end method

.method private scaleForDisplay(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)Lcom/scalado/base/Size;
    .locals 8
    .parameter "srcDims"
    .parameter "objDims"

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    .line 219
    .local v0, displayDims:Lcom/scalado/base/Size;
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    invoke-virtual {v6}, Lcom/android/hwcamera/strobe/SessionStore;->getDisplayDims()Lcom/scalado/base/Size;

    move-result-object v4

    .line 220
    .local v4, screenDims:Lcom/scalado/base/Size;
    if-eqz v4, :cond_0

    .line 221
    invoke-virtual {v0, v4}, Lcom/scalado/base/Size;->shrinkToAspect(Lcom/scalado/base/Size;)V

    .line 224
    :cond_0
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 225
    .local v2, scaleX:F
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 226
    .local v3, scaleY:F
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v5, v6

    .line 227
    .local v5, w:I
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v1, v6

    .line 229
    .local v1, h:I
    new-instance v6, Lcom/scalado/base/Size;

    invoke-direct {v6, v5, v1}, Lcom/scalado/base/Size;-><init>(II)V

    return-object v6
.end method


# virtual methods
.method public analyze()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v3, Lcom/scalado/caps/strobe/Strobe;

    invoke-direct {v3}, Lcom/scalado/caps/strobe/Strobe;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    invoke-virtual {v3}, Lcom/android/hwcamera/strobe/SessionStore;->getAnalyzedSessions()Ljava/util/List;

    move-result-object v19

    .line 91
    .local v19, sessions:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/caps/Session;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v15, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/scalado/caps/Session;

    .line 94
    .local v18, session:Lcom/scalado/caps/Session;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/scalado/caps/strobe/Strobe;->addSession(Lcom/scalado/caps/Session;)V

    goto :goto_0

    .line 97
    .end local v18           #session:Lcom/scalado/caps/Session;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 98
    .local v20, t1:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    invoke-virtual {v3}, Lcom/scalado/caps/strobe/Strobe;->analyze()V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 100
    .local v22, t2:J
    const-string v3, "StrobeObjectAnalyzer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "analyze took: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v24, v22, v20

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "ms"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mCancelled:Z

    if-eqz v3, :cond_2

    .line 149
    :cond_1
    :goto_1
    return-void

    .line 106
    :cond_2
    const/4 v6, 0x0

    .line 107
    .local v6, objectIndex:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mCancelled:Z

    if-nez v3, :cond_1

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    invoke-virtual {v3, v5}, Lcom/scalado/caps/strobe/Strobe;->getObjects(I)[Lcom/scalado/base/Rect;

    move-result-object v17

    .line 112
    .local v17, rects:[Lcom/scalado/base/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mLogger:Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer$Logger;

    const-string v4, "\nImage-%02d:\n"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v5, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer$Logger;->append(Ljava/lang/String;)V

    .line 113
    const/4 v14, 0x0

    .local v14, j:I
    :goto_3
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v14, v3, :cond_4

    .line 114
    aget-object v16, v17, v14

    .line 115
    .local v16, rect:Lcom/scalado/base/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mLogger:Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer$Logger;

    const-string v4, "Object id-%d: %d,%d - %dx%d\n"

    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v14, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Rect;->getX()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Rect;->getY()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer$Logger;->append(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v8

    .line 119
    .local v8, objDims:Lcom/scalado/base/Size;
    new-instance v12, Lcom/scalado/base/Image;

    sget-object v3, Lcom/scalado/base/Image$Config;->RGBA8888:Lcom/scalado/base/Image$Config;

    invoke-direct {v12, v8, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 120
    .local v12, image:Lcom/scalado/base/Image;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    sget-object v4, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->SOLID_GREEN:Lcom/scalado/base/Color;

    move-object/from16 v0, v16

    invoke-virtual {v3, v5, v0, v12, v4}, Lcom/scalado/caps/strobe/Strobe;->getObjectImage(ILcom/scalado/base/Rect;Lcom/scalado/base/Image;Lcom/scalado/base/Color;)V

    .line 123
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/caps/Session;

    invoke-virtual {v3}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->scaleForDisplay(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)Lcom/scalado/base/Size;

    move-result-object v9

    .line 125
    .local v9, bmpDims:Lcom/scalado/base/Size;
    invoke-virtual {v9}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v24

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 128
    .local v7, mask:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 130
    invoke-virtual {v12}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 141
    :goto_4
    new-instance v2, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Rect;->getX()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Rect;->getY()I

    move-result v4

    invoke-direct/range {v2 .. v8}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;-><init>(IIIILandroid/graphics/Bitmap;Lcom/scalado/base/Size;)V

    .line 143
    .local v2, strobeObject:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->createStrobeObjectBitmap(Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v6, v6, 0x1

    .line 113
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 133
    .end local v2           #strobeObject:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    :cond_3
    new-instance v18, Lcom/scalado/caps/Session;

    new-instance v3, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v3, v12}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 137
    .restart local v18       #session:Lcom/scalado/caps/Session;
    new-instance v10, Lcom/scalado/caps/codec/encoder/BitmapEncoder;

    const/4 v3, 0x0

    invoke-direct {v10, v7, v3}, Lcom/scalado/caps/codec/encoder/BitmapEncoder;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 138
    .local v10, encoder:Lcom/scalado/caps/codec/encoder/BitmapEncoder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v13

    .line 139
    .local v13, it:Lcom/scalado/base/Iterator;
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/scalado/base/Iterator;->step(I)F

    goto :goto_4

    .line 107
    .end local v7           #mask:Landroid/graphics/Bitmap;
    .end local v8           #objDims:Lcom/scalado/base/Size;
    .end local v9           #bmpDims:Lcom/scalado/base/Size;
    .end local v10           #encoder:Lcom/scalado/caps/codec/encoder/BitmapEncoder;
    .end local v12           #image:Lcom/scalado/base/Image;
    .end local v13           #it:Lcom/scalado/base/Iterator;
    .end local v16           #rect:Lcom/scalado/base/Rect;
    .end local v18           #session:Lcom/scalado/caps/Session;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 148
    .end local v14           #j:I
    .end local v17           #rects:[Lcom/scalado/base/Rect;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;

    invoke-virtual {v3, v15}, Lcom/android/hwcamera/strobe/SessionStore;->addStrobeObjects(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method public cancelAnalyze()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mCancelled:Z

    .line 156
    return-void
.end method

.method public getStrobe()Lcom/scalado/caps/strobe/Strobe;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    return-object v0
.end method
