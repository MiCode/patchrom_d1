.class public Lcom/android/hwcamera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Util$ImageFileNamer;,
        Lcom/android/hwcamera/Util$Coordinate;
    }
.end annotation


# static fields
.field public static final BLINK_TAG:Ljava/lang/String; = "BlinkDetection"

.field public static final BRIGHTNESS_VALUE_ERR:I = -0x64

.field public static final CONTRAST_VALUE_ERR:I = -0x64

.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.7f

.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field public static final FIRSTQUARTER:I = 0x5a

.field public static final FORTHQUARTER:I = 0x0

.field private static HwExtCameraClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static HwExtCameraFieldList:[Ljava/lang/reflect/Field; = null

.field private static HwExtCameraInstance:Ljava/lang/Object; = null

.field private static HwExtCameraMethodList:[Ljava/lang/reflect/Method; = null

.field private static final KEY_HDR_MODE:Ljava/lang/String; = "exhdr"

.field private static final KEY_HDR_SAVING_MODE:Ljava/lang/String; = "exhdrsetting"

.field public static final KEY_HUAWEI_BRIGHTNESS:Ljava/lang/String; = "KEY_HUAWEI_BRIGHTNESS"

.field public static final KEY_HUAWEI_CONTRAST:Ljava/lang/String; = "KEY_HUAWEI_CONTRAST"

.field public static final KEY_HUAWEI_ISO:Ljava/lang/String; = "KEY_HUAWEI_ISO"

.field public static final KEY_HUAWEI_SATURATION:Ljava/lang/String; = "KEY_HUAWEI_SATURATION"

.field private static ParameterClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_HIGH:I = 0x1

.field private static final QUALITY_LIST_END:I = 0x7

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.cooliris.media.action.REVIEW"

.field public static final REVIEW_ACTION_ICS:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final SATURATION_VALUE_ERR:I = -0x64

.field public static final SECONDQUARTER:I = 0xb4

.field public static final SHOOTING_MODE_ACTION:I = 0x7

.field public static final SHOOTING_MODE_BEAUTY:I = 0x6

.field public static final SHOOTING_MODE_BURST:I = 0x3

.field public static final SHOOTING_MODE_HDR:I = 0x4

.field public static final SHOOTING_MODE_LOWLIGHT:I = 0x9

.field public static final SHOOTING_MODE_NORMAL:I = 0x0

.field public static final SHOOTING_MODE_PANORAMA:I = 0x1

.field public static final SHOOTING_MODE_REWIND:I = 0x2

.field public static final SHOOTING_MODE_SMILE:I = 0x5

.field public static final SHOOTING_MODE_ZSL:I = 0x8

.field public static final STR_SHOOTING_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final STR_SHOOTING_MODE_BEAUTY:Ljava/lang/String; = "beauty"

.field public static final STR_SHOOTING_MODE_BURST:Ljava/lang/String; = "burst"

.field public static final STR_SHOOTING_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final STR_SHOOTING_MODE_LOWLIGHT:Ljava/lang/String; = "lowlight"

.field public static final STR_SHOOTING_MODE_NORMAL:Ljava/lang/String; = "single"

.field public static final STR_SHOOTING_MODE_PANORAMA:Ljava/lang/String; = "panorama"

.field public static final STR_SHOOTING_MODE_REWIND:Ljava/lang/String; = "group"

.field public static final STR_SHOOTING_MODE_SMILE:Ljava/lang/String; = "smile"

.field public static final STR_SHOOTING_MODE_ZSL:Ljava/lang/String; = "zsl"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final THIRDQUARTER:I = 0x10e

.field public static final TOUCH_AF_OFF:Ljava/lang/String; = "touch-off"

.field public static final TOUCH_AF_ON:Ljava/lang/String; = "touch-on"

.field public static final UPDATE_REWIND_THUMBNAIL:I = 0x26

.field private static mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private static mMediaRecorder:Landroid/media/MediaRecorder;

.field private static sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

.field private static sIsTabletUI:Z

.field private static sPixelDensity:F

.field public static touchPostion:Lcom/android/hwcamera/Util$Coordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/hwcamera/Util;->sPixelDensity:F

    .line 580
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    .line 581
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    .line 582
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    .line 583
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraFieldList:[Ljava/lang/reflect/Field;

    .line 585
    sput-object v1, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    .line 587
    sput-object v1, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 588
    sput-object v1, Lcom/android/hwcamera/Util;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getHwExtCameraInstance(I)Lcom/android/hwcamera/HwCamera;

    .line 222
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 223
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 405
    if-nez p0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 408
    :cond_0
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2229
    return-void
.end method

.method public static cancelPanorama()V
    .locals 5

    .prologue
    .line 1551
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1552
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "cancelPanorama"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1553
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1554
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1556
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "Util"

    const-string v3, "stopPanorama HwExtCameraClass can\'t find stopPanorama()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1563
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1564
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1559
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "Util"

    const-string v3, "stopPanorama HwExtCameraClass is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static cancelTakePictureEx()Z
    .locals 6

    .prologue
    .line 1696
    const/4 v0, 0x0

    .line 1698
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1699
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "cancelTakePictureEx"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1700
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1701
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    const/4 v0, 0x1

    .line 1713
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v0

    .line 1704
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "cancelTakePictureEx interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1709
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1710
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1711
    const/4 v0, 0x0

    goto :goto_0

    .line 1707
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "not support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 477
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 505
    if-le p0, p2, :cond_0

    .line 507
    .end local p2
    :goto_0
    return p2

    .line 506
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 507
    goto :goto_0
.end method

.method public static clearShootMode()V
    .locals 5

    .prologue
    .line 1991
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1992
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "clearShotMode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1993
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1994
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2000
    :cond_0
    :goto_0
    return-void

    .line 1997
    :catch_0
    move-exception v0

    .line 1998
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 374
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 338
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 339
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 341
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 343
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 347
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 358
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 341
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 343
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 352
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 354
    goto :goto_2

    .line 355
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 358
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 311
    invoke-static {p0, p1, p2}, Lcom/android/hwcamera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 315
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 316
    const/4 v1, 0x1

    .line 317
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 318
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 324
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"

    .prologue
    .line 2220
    sget-object v1, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    monitor-enter v1

    .line 2221
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/android/hwcamera/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static distance(FFFF)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 499
    sub-float v0, p0, p2

    .line 500
    .local v0, dx:F
    sub-float v1, p1, p3

    .line 501
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 246
    sget v0, Lcom/android/hwcamera/Util;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 3
    .parameter "rect"
    .parameter "msg"

    .prologue
    .line 2185
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    return-void
.end method

.method public static enterLightsOutMode(Landroid/view/Window;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 2359
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2360
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2361
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2362
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 481
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2251
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2257
    :goto_0
    return-void

    .line 2253
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2254
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2255
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2256
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2260
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2266
    :goto_0
    return-void

    .line 2262
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2263
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2264
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2265
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter "method"

    .prologue
    const/4 v1, 0x0

    .line 656
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 657
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    aget-object v1, v1, v0

    .line 663
    :cond_0
    return-object v1
.end method

.method public static getBrightnessStep()I
    .locals 5

    .prologue
    .line 1878
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessValues()Ljava/util/List;

    move-result-object v0

    .line 1879
    .local v0, BrightnessValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1880
    const/4 v1, 0x0

    .line 1881
    .local v1, firstValueIndex:I
    const/4 v2, 0x1

    .line 1882
    .local v2, secondValueIndex:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int v3, v4, v3

    .line 1885
    .end local v1           #firstValueIndex:I
    .end local v2           #secondValueIndex:I
    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x64

    goto :goto_0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 328
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 329
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 330
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method public static getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 4
    .parameter "cr"
    .parameter "value"
    .parameter "defaultvalue"

    .prologue
    const/4 v3, 0x1

    .line 1977
    const/4 v0, 0x1

    .line 1979
    .local v0, bReturnValue:Z
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1980
    .local v1, configValue:I
    if-ne v1, v3, :cond_0

    move v0, v3

    .line 1986
    .end local v1           #configValue:I
    :goto_0
    return v0

    .line 1980
    .restart local v1       #configValue:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1981
    .end local v1           #configValue:I
    :catch_0
    move-exception v2

    .line 1982
    .local v2, error:Ljava/lang/NoClassDefFoundError;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1983
    const/4 v0, 0x0

    goto :goto_0

    .line 1984
    .end local v2           #error:Ljava/lang/NoClassDefFoundError;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public static getContrastStep()I
    .locals 5

    .prologue
    .line 1742
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastValues()Ljava/util/List;

    move-result-object v0

    .line 1743
    .local v0, contrastValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1744
    const/4 v1, 0x0

    .line 1745
    .local v1, firstValueIndex:I
    const/4 v2, 0x1

    .line 1746
    .local v2, secondValueIndex:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int v3, v4, v3

    .line 1749
    .end local v1           #firstValueIndex:I
    .end local v2           #secondValueIndex:I
    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x64

    goto :goto_0
.end method

.method public static getDelayTime(I)I
    .locals 3
    .parameter "time"

    .prologue
    .line 2379
    const-string v1, "ro.autotest.delaytimes"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2380
    .local v0, times:I
    mul-int v1, p0, v0

    return v1
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 541
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 542
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 544
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 545
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 546
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 550
    :goto_0
    return v1

    .line 548
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 511
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 513
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 519
    :goto_0
    :pswitch_0
    return v1

    .line 515
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 516
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 517
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDistortionValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1265
    const/4 v1, 0x0

    .line 1266
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1267
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "getFaceDistortion"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1268
    .local v0, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 1269
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1274
    .end local v0           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v1           #result:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1278
    :goto_0
    return-object v2

    .line 1275
    :catch_0
    move-exception v2

    .line 1278
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getExposureCompensationStep()F
    .locals 1

    .prologue
    .line 2067
    sget-object v0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    return v0
.end method

.method public static getFaceDetectionMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1118
    const/4 v2, 0x0

    .line 1119
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 1120
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getFaceDetectionMode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1121
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1122
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1126
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1130
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-object v3

    .line 1127
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1128
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1130
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getHdrMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 787
    const/4 v2, 0x0

    .line 788
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 789
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getHdrMode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 791
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 792
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 813
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 817
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_1
    return-object v3

    .line 795
    .restart local v2       #result:Ljava/lang/Object;
    :cond_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 796
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :cond_2
    const/4 v1, 0x0

    .line 801
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :try_start_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v4, "getHdrMode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 806
    :goto_2
    if-eqz v1, :cond_3

    .line 807
    :try_start_2
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 809
    :cond_3
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "exhdr"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .local v2, result:Ljava/lang/String;
    goto :goto_0

    .line 814
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .local v2, result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 815
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 817
    const/4 v3, 0x0

    goto :goto_1

    .line 803
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static getHdrSaveMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 877
    const/4 v2, 0x0

    .line 878
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 879
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getHdrSetting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 880
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 881
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 902
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 906
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_1
    return-object v3

    .line 885
    .restart local v2       #result:Ljava/lang/Object;
    :cond_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 886
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :cond_2
    const/4 v1, 0x0

    .line 890
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :try_start_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v4, "getHdrSetting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 895
    :goto_2
    if-eqz v1, :cond_3

    .line 896
    :try_start_2
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 898
    :cond_3
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "exhdrsetting"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .local v2, result:Ljava/lang/String;
    goto :goto_0

    .line 903
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .local v2, result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 904
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 906
    const/4 v3, 0x0

    goto :goto_1

    .line 892
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static getHwExtCameraInstance(I)Lcom/android/hwcamera/HwCamera;
    .locals 7
    .parameter "cameraId"

    .prologue
    const/4 v2, 0x0

    .line 601
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "U8860"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    :goto_0
    return-object v2

    .line 605
    :cond_0
    :try_start_0
    const-string v3, "com.huawei.hwextcamera.HwExtCamera"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    .line 606
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 607
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    .line 620
    new-instance v3, Lcom/android/hwcamera/HwCamera;

    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lcom/android/hwcamera/HwCamera;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 621
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v1

    .line 622
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 1947
    const-string v0, "KEY_HUAWEI_BRIGHTNESS"

    if-ne p0, v0, :cond_0

    .line 1948
    const-string v0, "getBrightnessKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1956
    :goto_0
    return-object v0

    .line 1949
    :cond_0
    const-string v0, "KEY_HUAWEI_CONTRAST"

    if-ne p0, v0, :cond_1

    .line 1950
    const-string v0, "getContrastKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1951
    :cond_1
    const-string v0, "KEY_HUAWEI_ISO"

    if-ne p0, v0, :cond_2

    .line 1952
    const-string v0, "getIsoKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1953
    :cond_2
    const-string v0, "KEY_HUAWEI_SATURATION"

    if-ne p0, v0, :cond_3

    .line 1954
    const-string v0, "getSaturationKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1956
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private static getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "methodStr"

    .prologue
    .line 1960
    const-string v2, ""

    .line 1962
    .local v2, keyValue:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 1963
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1964
    .local v4, method:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 1965
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 1972
    .end local v2           #keyValue:Ljava/lang/String;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .local v3, keyValue:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1969
    .end local v3           #keyValue:Ljava/lang/String;
    .restart local v2       #keyValue:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1970
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    move-object v3, v2

    .line 1972
    .end local v2           #keyValue:Ljava/lang/String;
    .restart local v3       #keyValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getMaxBrightness()I
    .locals 2

    .prologue
    .line 1892
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessValues()Ljava/util/List;

    move-result-object v0

    .line 1893
    .local v0, BrightnessValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1894
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1896
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMaxContrast()I
    .locals 2

    .prologue
    .line 1756
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastValues()Ljava/util/List;

    move-result-object v0

    .line 1757
    .local v0, contrastValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1758
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1760
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMaxExposureCompensation()I
    .locals 1

    .prologue
    .line 2058
    sget-object v0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    return v0
.end method

.method public static getMaxSaturation()I
    .locals 2

    .prologue
    .line 2021
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationValues()Ljava/util/List;

    move-result-object v0

    .line 2022
    .local v0, SaturationValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2023
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2025
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMinBrightness()I
    .locals 2

    .prologue
    .line 1903
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessValues()Ljava/util/List;

    move-result-object v0

    .line 1904
    .local v0, BrightnessValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1905
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1907
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMinContrast()I
    .locals 2

    .prologue
    .line 1767
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastValues()Ljava/util/List;

    move-result-object v0

    .line 1768
    .local v0, contrastValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1769
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1771
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMinExposureCompensation()I
    .locals 1

    .prologue
    .line 2063
    sget-object v0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    return v0
.end method

.method public static getMinSaturation()I
    .locals 2

    .prologue
    .line 2032
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationValues()Ljava/util/List;

    move-result-object v0

    .line 2033
    .local v0, SaturationValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2034
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2036
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMiniPanorama()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 1502
    const/4 v2, 0x0

    .line 1503
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1504
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getMiniPanorama"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1505
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1506
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1518
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 1508
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "startPanorama HwExtCameraClass can\'t find startPanorama()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1512
    :cond_1
    const-string v3, "Util"

    const-string v4, "startPanorama HwExtCameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getParameterInstance()V
    .locals 3

    .prologue
    .line 637
    :try_start_0
    sget-object v1, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    .line 640
    sget-object v1, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 644
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 645
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "Util"

    const-string v2, "Got getParameterInstance exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRedEyeReductionSupported()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1098
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 1099
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "setRedEyeReduction"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1100
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1109
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 1109
    goto :goto_0
.end method

.method public static getSaturationStep()I
    .locals 5

    .prologue
    .line 2007
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationValues()Ljava/util/List;

    move-result-object v0

    .line 2008
    .local v0, SaturationValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2009
    const/4 v1, 0x0

    .line 2010
    .local v1, firstValueIndex:I
    const/4 v2, 0x1

    .line 2011
    .local v2, secondValueIndex:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int v3, v4, v3

    .line 2014
    .end local v1           #firstValueIndex:I
    .end local v2           #secondValueIndex:I
    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x64

    goto :goto_0
.end method

.method public static getSupportedBrightnessDegrees()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1914
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v5

    div-int v3, v4, v5

    .line 1915
    .local v3, startIndex:I
    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxBrightness()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v5

    div-int v1, v4, v5

    .line 1917
    .local v1, endIndex:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1918
    .local v0, BrightnessValue:Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .local v2, i:I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 1919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1918
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1921
    :cond_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public static getSupportedBrightnessValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1856
    const/4 v1, 0x0

    .line 1858
    .local v1, BrightnessValue:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1859
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "getSupportedBrightnessValues"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1860
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 1861
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 1863
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    const-string v4, "Util"

    const-string v5, "getSupportedBrightnessValues interface not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1868
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 1869
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1866
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v4, "Util"

    const-string v5, "HwExtCameraClass not support"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static getSupportedContrastDegrees()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1778
    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v4

    const/16 v5, -0x64

    if-ne v4, v5, :cond_0

    .line 1779
    const/4 v4, 0x0

    .line 1788
    .local v0, contrastValue:Ljava/lang/String;
    .local v1, endIndex:I
    .local v2, i:I
    .local v3, startIndex:I
    :goto_0
    return-object v4

    .line 1781
    .end local v0           #contrastValue:Ljava/lang/String;
    .end local v1           #endIndex:I
    .end local v2           #i:I
    .end local v3           #startIndex:I
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinContrast()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v5

    div-int v3, v4, v5

    .line 1782
    .restart local v3       #startIndex:I
    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxContrast()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v5

    div-int v1, v4, v5

    .line 1784
    .restart local v1       #endIndex:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1785
    .restart local v0       #contrastValue:Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .restart local v2       #i:I
    :goto_1
    if-gt v2, v1, :cond_1

    .line 1786
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1785
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1788
    :cond_1
    invoke-static {v0}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0
.end method

.method public static getSupportedContrastValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1720
    const/4 v1, 0x0

    .line 1722
    .local v1, contrastValue:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1723
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "getSupportedContrastValues"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1724
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 1725
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1735
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 1727
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    const-string v4, "Util"

    const-string v5, "getSupportedContrastValues interface not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1732
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 1733
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1730
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v4, "Util"

    const-string v5, "HwExtCameraClass not support"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static getSupportedDistortionValues()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    const/4 v2, 0x0

    .line 1235
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 1236
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getSupportFaceDistortions"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1237
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1238
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1242
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 1243
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1244
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1246
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSupportedFaceDetectionModes()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    const/4 v3, 0x0

    .line 1044
    .local v3, isSupported:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1045
    .local v4, result:Ljava/lang/String;
    :try_start_0
    const-string v1, "FaceTracking"

    .line 1046
    .local v1, faceTag:Ljava/lang/String;
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 1047
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v6, "isFeatureSupported"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1048
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1049
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1050
    const-string v4, "on,off"

    .line 1055
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v3           #isSupported:Ljava/lang/Object;
    :cond_0
    invoke-static {v4}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1058
    .end local v1           #faceTag:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1058
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getSupportedHdrMode()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 696
    const/4 v3, 0x0

    .line 697
    .local v3, result:Ljava/lang/Object;
    :try_start_0
    sget-object v7, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v7, :cond_1

    .line 698
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v5, supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "on"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    const-string v7, "off"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedShootModeValues()Ljava/util/List;

    move-result-object v4

    .line 702
    .local v4, shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "hdr"

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 703
    .local v0, bRetVal:Z
    if-eqz v0, :cond_0

    .line 734
    .end local v0           #bRetVal:Z
    .end local v3           #result:Ljava/lang/Object;
    .end local v4           #shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v5

    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .restart local v0       #bRetVal:Z
    .restart local v3       #result:Ljava/lang/Object;
    .restart local v4       #shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object v5, v6

    .line 706
    goto :goto_0

    .line 708
    .end local v0           #bRetVal:Z
    .end local v4           #shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v7, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v7, :cond_2

    .line 709
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :cond_2
    const/4 v2, 0x0

    .line 714
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    :try_start_1
    sget-object v7, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v8, "getSupportedHdrMode"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 719
    :goto_1
    if-eqz v2, :cond_4

    .line 720
    :try_start_2
    sget-object v7, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v7}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Object;
    :cond_3
    :goto_2
    move-object v5, v6

    .line 734
    goto :goto_0

    .line 722
    .restart local v3       #result:Ljava/lang/Object;
    :cond_4
    sget-object v7, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v7}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    const-string v8, "exhdr-values"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, result:Ljava/lang/String;
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSupportedHdrMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 726
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_0

    .line 731
    :catch_0
    move-exception v1

    .line 732
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 716
    .end local v1           #ex:Ljava/lang/Exception;
    .local v3, result:Ljava/lang/Object;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public static getSupportedIsoValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1286
    const/4 v2, 0x0

    .line 1287
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1288
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "getSupportedIsoValues"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1289
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1290
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1303
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 1309
    :goto_1
    return-object v3

    .line 1295
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .restart local v2       #result:Ljava/lang/Object;
    :cond_1
    sget-object v4, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 1296
    sget-object v4, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v5, "getSupportedIsoValues"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1297
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1298
    sget-object v4, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v4}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1306
    .end local v2           #result:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 1307
    :catch_0
    move-exception v0

    .line 1308
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSupportedSaturationDegrees()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2043
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v5

    div-int v3, v4, v5

    .line 2044
    .local v3, startIndex:I
    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxSaturation()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v5

    div-int v1, v4, v5

    .line 2046
    .local v1, endIndex:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2047
    .local v0, SaturationValue:Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .local v2, i:I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 2048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2047
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2050
    :cond_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public static getSupportedSaturationValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1928
    const/4 v1, 0x0

    .line 1930
    .local v1, SaturationValue:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1931
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "getSupportedSaturationValues"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1932
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 1933
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1943
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 1935
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    const-string v4, "Util"

    const-string v5, "getSupportedSaturationValues interface not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1940
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 1941
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1938
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v4, "Util"

    const-string v5, "HwExtCameraClass not support"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static getSupportedShootModeValues()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 1340
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    .local v5, shootmode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1342
    .local v3, result:Ljava/lang/Object;
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v6, :cond_3

    .line 1343
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v7, "getSupportedShootingModes"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1344
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1345
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1347
    .end local v3           #result:Ljava/lang/Object;
    :cond_0
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 1348
    .local v4, resultList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1349
    const-string v6, "panorama"

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1350
    const-string v6, "panorama"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v4           #resultList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    const-string v6, "action"

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 1362
    const-string v6, "action"

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1368
    .end local v5           #shootmode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-object v5

    .line 1353
    .restart local v3       #result:Ljava/lang/Object;
    .restart local v5       #shootmode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v6, "single"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedHdrMode()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1355
    const-string v6, "hdr"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    :cond_4
    const-string v6, "panorama"

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1358
    const-string v6, "panorama"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1365
    .end local v3           #result:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1366
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1368
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getSupportedTouchAfMode()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 916
    const/4 v2, 0x0

    .line 917
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 918
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getSupportedTouchAfMode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 919
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 920
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 931
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 935
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_1
    return-object v3

    .line 923
    .restart local v2       #result:Ljava/lang/Object;
    :cond_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 924
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 926
    :cond_2
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v4, "getSupportedTouchAfAec"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 927
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 928
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 932
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 933
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 935
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getTouchAfMode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 967
    const/4 v1, 0x0

    .line 968
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 969
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "getTouchAfMode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 970
    .local v0, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 971
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 983
    .end local v1           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 987
    .end local v0           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_1
    return-object v2

    .line 975
    .restart local v1       #result:Ljava/lang/Object;
    :cond_1
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 976
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 978
    :cond_2
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v3, "getTouchAfAec"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 979
    .restart local v0       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 980
    sget-object v2, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 984
    .end local v0           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 987
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getTouchPosition()Lcom/android/hwcamera/Util$Coordinate;
    .locals 9

    .prologue
    .line 1015
    const/4 v3, 0x0

    .line 1016
    .local v3, result:Ljava/lang/Object;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1017
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "getTouchPosition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1018
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1019
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Object;
    :cond_0
    move-object v4, v3

    .line 1029
    :goto_0
    check-cast v4, Lcom/android/hwcamera/Util$Coordinate;

    .line 1033
    :goto_1
    return-object v4

    .line 1023
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .restart local v3       #result:Ljava/lang/Object;
    :cond_1
    sget-object v4, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v5, "getTouchIndexAf"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1024
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 1025
    sget-object v4, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v4}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1027
    .end local v3           #result:Ljava/lang/Object;
    :cond_2
    const-string v5, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTouchIndexAf = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v3

    check-cast v0, Lcom/android/hwcamera/Util$Coordinate;

    move-object v4, v0

    iget v4, v4, Lcom/android/hwcamera/Util$Coordinate;->xCoordinate:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    goto :goto_0

    .line 1030
    :catch_0
    move-exception v1

    .line 1031
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1033
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static hasHwExtCamera()Z
    .locals 1

    .prologue
    .line 632
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, s:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 364
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    .end local v0           #i:I
    :goto_1
    return v0

    .line 363
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v3, 0x320

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/hwcamera/Util;->sIsTabletUI:Z

    .line 231
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 232
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 234
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 235
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/hwcamera/Util;->sPixelDensity:F

    .line 237
    new-instance v2, Lcom/android/hwcamera/Util$ImageFileNamer;

    const v3, 0x7f0c009a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/hwcamera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    .line 239
    return-void

    .line 228
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "win"
    .parameter "resolver"

    .prologue
    .line 2366
    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2368
    .local v0, mode:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2369
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2370
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3f333333

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2371
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2373
    .end local v1           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static isBuildVersionAboveICS()Z
    .locals 2

    .prologue
    .line 2375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFeatureSupported(Ljava/lang/String;)Z
    .locals 9
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 674
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 675
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "isFeatureSupported"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 676
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 677
    .local v2, result:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 684
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHdrSupported()Z
    .locals 9

    .prologue
    .line 1375
    const/4 v0, 0x0

    .line 1377
    .local v0, bSupported:Z
    const/4 v3, 0x0

    .line 1378
    .local v3, result:Ljava/lang/Object;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 1379
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "isFeatureSupported"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1380
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    .line 1381
    const/4 v0, 0x0

    .line 1383
    :cond_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "hdr"

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1384
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1385
    const/4 v0, 0x1

    .line 1415
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Object;
    :cond_1
    :goto_0
    return v0

    .line 1388
    .restart local v3       #result:Ljava/lang/Object;
    :cond_2
    sget-boolean v4, Lcom/android/hwcamera/Camera;->HAS_HDR_FEATURE:Z

    if-eqz v4, :cond_1

    .line 1389
    sget-object v4, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v4, :cond_3

    .line 1390
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :cond_3
    const/4 v2, 0x0

    .line 1395
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    :try_start_1
    sget-object v4, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v5, "getSupportedHdrMode"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1400
    :goto_1
    if-eqz v2, :cond_4

    .line 1401
    :try_start_2
    sget-object v4, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v4}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1406
    .end local v3           #result:Ljava/lang/Object;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1407
    const/4 v0, 0x1

    goto :goto_0

    .line 1403
    .restart local v3       #result:Ljava/lang/Object;
    :cond_4
    sget-object v4, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v4}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "exhdr-values"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .local v3, result:Ljava/lang/String;
    goto :goto_2

    .line 1411
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1412
    .local v1, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0

    .line 1413
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4

    .line 1397
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    .local v3, result:Ljava/lang/Object;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static isPanoramaSupported()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1420
    const/4 v2, 0x0

    .line 1421
    .local v2, isSupported:Ljava/lang/Object;
    :try_start_0
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 1422
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v6, "isFeatureSupported"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1423
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return v3

    .line 1426
    :cond_1
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Panorama"

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1427
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 1428
    goto :goto_0

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPanoramaSupported(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1462
    .local p0, shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "panorama"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPanoramaSupportedByScalado()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1443
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    .local v4, shootmode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1445
    .local v3, result:Ljava/lang/Object;
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 1446
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v7, "getSupportedShootingModes"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1447
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1448
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1450
    .end local v3           #result:Ljava/lang/Object;
    :cond_0
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 1451
    invoke-static {v4}, Lcom/android/hwcamera/Util;->isPanoramaSupported(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1458
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return v5

    .line 1455
    :catch_0
    move-exception v1

    .line 1456
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPowerOf2(I)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 485
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedLocation()Z
    .locals 8

    .prologue
    .line 1679
    const/4 v3, 0x0

    .line 1681
    .local v3, isSupportedSetLocation:Z
    :try_start_0
    const-string v4, "android.media.MediaRecorder"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1682
    .local v0, cls:Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 1683
    const-string v4, "setLocation"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1684
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1685
    const/4 v3, 0x1

    .line 1691
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v3

    .line 1688
    :catch_0
    move-exception v1

    .line 1689
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isTabletUI()Z
    .locals 1

    .prologue
    .line 242
    sget-boolean v0, Lcom/android/hwcamera/Util;->sIsTabletUI:Z

    return v0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "uri"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 2169
    if-nez p0, :cond_0

    .line 2181
    :goto_0
    return v2

    .line 2172
    :cond_0
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2173
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 2174
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to open URI. URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2178
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 2179
    .local v0, ex:Ljava/io/IOException;
    goto :goto_0

    .line 2177
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2181
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static lockPanoramaDirection(I)V
    .locals 7
    .parameter "direction"

    .prologue
    .line 1576
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1577
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "lockPanoramaDirection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1578
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1579
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1581
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "Util"

    const-string v3, "stopPanorama HwExtCameraClass can\'t find lockDirection()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1588
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1589
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1584
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "Util"

    const-string v3, "lockDirection HwExtCameraClass is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 382
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 383
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 384
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 386
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 400
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 390
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/android/hwcamera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 392
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 394
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 395
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 396
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 398
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 399
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 489
    add-int/lit8 p0, p0, -0x1

    .line 490
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 491
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 492
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 493
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 494
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 495
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static optmizeFocusAreaRect(Landroid/graphics/Rect;Landroid/graphics/Point;F)Landroid/graphics/Rect;
    .locals 9
    .parameter "rect"
    .parameter "point"
    .parameter "screenRatio"

    .prologue
    .line 2427
    const/4 v3, 0x0

    .line 2429
    .local v3, result:Landroid/graphics/Rect;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 2430
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "optmizeFocusAreaRect"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Rect;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/graphics/Point;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2433
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2434
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/Rect;

    move-object v3, v0

    .line 2445
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 2437
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v4, "Util"

    const-string v5, "optmizeFocusAreaRect interface not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2442
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 2443
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2440
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v4, "Util"

    const-string v5, "HwExtCameraClass not support"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static pauseAudioPlayback(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2241
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2242
    .local v0, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2243
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2246
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mediacenter.mediaplayerservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2247
    .local v1, toHWmusic:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2248
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2249
    return-void
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 2199
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2201
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2204
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2205
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2206
    return-void

    :cond_0
    move v0, v1

    .line 2199
    goto :goto_0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V
    .locals 3
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 2211
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2213
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2215
    div-int v0, p3, p5

    int-to-float v0, v0

    div-int v1, p4, p6

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2216
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2217
    return-void

    :cond_0
    move v0, v1

    .line 2211
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 2190
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2191
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2192
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2193
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2194
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/hwcamera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"
    .parameter "mirror"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 258
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 259
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 260
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 261
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 262
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 263
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 264
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 271
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 273
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 277
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 279
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 280
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    move-object p0, v7

    .line 287
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 265
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 266
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 268
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 334
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static setBlinkDetection(Z)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1195
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1196
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setBlinkDetection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1197
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1198
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setBrightnessValue(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    .line 1835
    const/4 v0, 0x0

    .line 1837
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1838
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setBrightnessValue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1839
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1840
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1842
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setBrightnessValue interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1847
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1848
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1845
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass not support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setBurstShootingInterval(I)Z
    .locals 8
    .parameter "millisecond"

    .prologue
    .line 1621
    const/4 v0, 0x0

    .line 1623
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1624
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setBurstShotInterval"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1625
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1626
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    const/4 v0, 0x1

    .line 1638
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v0

    .line 1629
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setBurstShootingInterval interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1634
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1635
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1636
    const/4 v0, 0x0

    goto :goto_0

    .line 1632
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setBurstTotalCaptures(I)V
    .locals 7
    .parameter "num"

    .prologue
    .line 1645
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1646
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setBurstTotalCaptures"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1647
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1648
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1650
    .restart local v1       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "Util"

    const-string v3, "setBurstShootingInterval interface not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1655
    .end local v1           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1656
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1653
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "Util"

    const-string v3, "HwExtCameraClass is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setCameraDevice(Lcom/android/hwcamera/HwCamera;)V
    .locals 0
    .parameter "cameraDevice"

    .prologue
    .line 591
    sput-object p0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 592
    return-void
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILcom/android/hwcamera/HwCamera;)V
    .locals 5
    .parameter "activity"
    .parameter "cameraId"
    .parameter "camera"

    .prologue
    .line 561
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 562
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 563
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 565
    .local v0, degrees:I
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 566
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v2, v3, 0x168

    .line 567
    .local v2, result:I
    rsub-int v3, v2, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 571
    :goto_0
    invoke-virtual {p2, v2}, Lcom/android/hwcamera/HwCamera;->setDisplayOrientation(I)V

    .line 572
    return-void

    .line 569
    .end local v2           #result:I
    :cond_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public static setContrastValue(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    .line 1794
    const/4 v0, 0x0

    .line 1796
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1797
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setContrastValue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1798
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1799
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1801
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setContrastValue interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1806
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1807
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1804
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass not support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setDistortionValue(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1251
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1252
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setFaceDistortion"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1253
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1254
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setFaceDetectionMode(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1068
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1069
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setFaceDetectionMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1070
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1071
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setFaceOrientation(I)Z
    .locals 8
    .parameter "degree"

    .prologue
    .line 1208
    const/4 v0, 0x0

    .line 1210
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1211
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setFaceOrientation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1212
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1213
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    const/4 v0, 0x1

    .line 1225
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v0

    .line 1216
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setFaceOrientation interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1221
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1222
    .local v1, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1223
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1219
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 13
    .parameter "parameters"
    .parameter "loc"

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    .line 2322
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 2325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v11

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 2328
    if-eqz p1, :cond_1

    .line 2329
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 2330
    .local v1, lat:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 2331
    .local v3, lon:D
    cmpl-double v7, v1, v9

    if-nez v7, :cond_0

    cmpl-double v7, v3, v9

    if-eqz v7, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 2333
    .local v0, hasLatLon:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 2334
    const-string v7, "Util"

    const-string v8, "Set gps location"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 2336
    invoke-virtual {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 2337
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2339
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 2346
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 2349
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    div-long v5, v7, v11

    .line 2350
    .local v5, utcTimeSeconds:J
    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 2356
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    .end local v5           #utcTimeSeconds:J
    :cond_1
    :goto_2
    return-void

    .line 2331
    .restart local v1       #lat:D
    .restart local v3       #lon:D
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2344
    .restart local v0       #hasLatLon:Z
    :cond_3
    invoke-virtual {p0, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 2353
    :cond_4
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static setHWExtCameraHandler(Landroid/os/Handler;)V
    .locals 7
    .parameter "handler"

    .prologue
    .line 1139
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1140
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setHandler"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1141
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1142
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setHdrMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .parameter "value"
    .parameter "params"

    .prologue
    .line 746
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 747
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setHdrMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 748
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 749
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 754
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :cond_2
    const/4 v1, 0x0

    .line 759
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :try_start_1
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v3, "setHdrMode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 764
    :goto_1
    if-eqz v1, :cond_3

    .line 765
    :try_start_2
    sget-object v2, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 775
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 776
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 767
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_3
    if-eqz p1, :cond_4

    .line 768
    :try_start_3
    const-string v2, "exhdr"

    invoke-virtual {p1, v2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :cond_4
    sget-object v2, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "exhdr"

    invoke-virtual {v2, v3, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 761
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static setHdrSaveMode(ZLandroid/hardware/Camera$Parameters;)V
    .locals 8
    .parameter "value"
    .parameter "params"

    .prologue
    .line 829
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 830
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setHdrSaveMode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 832
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 833
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 838
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 840
    :cond_2
    const/4 v2, 0x0

    .line 841
    .local v2, tmpVal:Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 842
    const-string v2, "true"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_1
    const/4 v1, 0x0

    .line 849
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :try_start_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v4, "setHdrSetting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 854
    :goto_2
    if-eqz v1, :cond_4

    .line 855
    :try_start_2
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 865
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #tmpVal:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 866
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 844
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #tmpVal:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v2, "false"

    goto :goto_1

    .line 857
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_4
    if-eqz p1, :cond_5

    .line 858
    const-string v3, "exhdrsetting"

    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :cond_5
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "exhdrsetting"

    invoke-virtual {v3, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 851
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static setISOValue(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1315
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1316
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setISOValue"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1317
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1318
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1323
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v3, "setISOValue"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1324
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1325
    sget-object v2, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1329
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1330
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLocation(FF)V
    .locals 7
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 1664
    :try_start_0
    const-string v3, "android.media.MediaRecorder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1665
    .local v0, cls:Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 1666
    const-string v3, "setLocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1667
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1668
    sget-object v3, Lcom/android/hwcamera/Util;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1671
    :catch_0
    move-exception v1

    .line 1672
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setMediaRecord(Landroid/media/MediaRecorder;)V
    .locals 0
    .parameter "mediarecorder"

    .prologue
    .line 595
    sput-object p0, Lcom/android/hwcamera/Util;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 596
    return-void
.end method

.method public static setRedEyeReduction(Z)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1083
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1084
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setRedEyeReduction"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1085
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1086
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setRotationParameter(Landroid/hardware/Camera$Parameters;II)V
    .locals 4
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    .line 2305
    const/4 v1, 0x0

    .line 2306
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 2307
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p1

    .line 2308
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2309
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 2314
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2315
    return-void

    .line 2311
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p2

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static setSaturationValue(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    .line 1814
    const/4 v0, 0x0

    .line 1816
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1817
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setSaturationValue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1818
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1820
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1822
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setSaturationValue interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1827
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1828
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1825
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass not support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setShootingMode(Ljava/lang/String;)Z
    .locals 8
    .parameter "mode"

    .prologue
    .line 1599
    const/4 v0, 0x0

    .line 1601
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1602
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setShotMode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1604
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1605
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    const/4 v0, 0x1

    .line 1617
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v0

    .line 1608
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setShootingMode interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1613
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1614
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1615
    const/4 v0, 0x0

    goto :goto_0

    .line 1611
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setSilentOption(Ljava/lang/Object;Z)V
    .locals 7
    .parameter "instance"
    .parameter "slient"

    .prologue
    .line 2386
    :try_start_0
    const-class v0, Landroid/hardware/Camera;

    .line 2387
    .local v0, cameraClass:Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 2388
    const-string v3, "setSilentOption"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2390
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 2391
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    .end local v0           #cameraClass:Ljava/lang/Class;
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 2393
    .restart local v0       #cameraClass:Ljava/lang/Class;
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "cameraClass can\'t find setSilentOption(boolean silent)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2399
    .end local v0           #cameraClass:Ljava/lang/Class;
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 2400
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2396
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #cameraClass:Ljava/lang/Class;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "cameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setSmileDetection(Z)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1181
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1182
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setSmileDetection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1183
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1184
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTouchAfMode(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 945
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 946
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setTouchAfMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 947
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 948
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 953
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 955
    :cond_2
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v3, "setTouchAfAec"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 956
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 957
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 960
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 961
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTouchPosition(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 992
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 993
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setTouchFocusPosition"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 995
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 996
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v3, "setTouchIndexAf"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1003
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1004
    sget-object v2, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1008
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1009
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "msgId"

    .prologue
    .line 2406
    new-instance v0, Lcom/android/hwcamera/Util$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Util$2;-><init>(Landroid/app/Activity;)V

    .line 2412
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0099

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2419
    return-void
.end method

.method public static showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 412
    new-instance v0, Lcom/android/hwcamera/Util$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Util$1;-><init>(Landroid/app/Activity;)V

    .line 418
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0099

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 425
    return-void
.end method

.method public static slideIn(Landroid/view/View;I)Landroid/view/animation/Animation;
    .locals 3
    .parameter "view"
    .parameter "from"

    .prologue
    const/4 v2, 0x0

    .line 452
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 454
    packed-switch p1, :pswitch_data_0

    .line 468
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 470
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 471
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 472
    return-object v0

    .line 459
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 460
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 462
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 463
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 465
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 466
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static slideOut(Landroid/view/View;I)Landroid/view/animation/Animation;
    .locals 3
    .parameter "view"
    .parameter "to"

    .prologue
    const/4 v2, 0x0

    .line 428
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    packed-switch p1, :pswitch_data_0

    .line 444
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 446
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 447
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 448
    return-object v0

    .line 435
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 436
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 438
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 439
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 441
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 442
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2074
    if-nez p0, :cond_1

    .line 2075
    const/4 v0, 0x0

    .line 2083
    :cond_0
    return-object v0

    .line 2078
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2080
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2081
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private splitCoordinate(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/hwcamera/Util$Coordinate;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2132
    if-nez p1, :cond_1

    move-object v1, v3

    .line 2144
    :cond_0
    :goto_0
    return-object v1

    .line 2135
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2137
    .local v1, coordinateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/hwcamera/Util$Coordinate;>;"
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2138
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->strToCoordinate(Ljava/lang/String;)Lcom/android/hwcamera/Util$Coordinate;

    move-result-object v0

    .line 2139
    .local v0, c:Lcom/android/hwcamera/Util$Coordinate;
    if-eqz v0, :cond_2

    .line 2140
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2142
    .end local v0           #c:Lcom/android/hwcamera/Util$Coordinate;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    .line 2143
    goto :goto_0
.end method

.method public static startFaceDetection()V
    .locals 5

    .prologue
    .line 1153
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1154
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "startFaceDetectionEx"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1155
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1156
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startPanorama(IIFLandroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 8
    .parameter "height"
    .parameter "num"
    .parameter "rate"
    .parameter "thumbnailCallback"
    .parameter "finalJpegCallback"

    .prologue
    .line 1474
    const/4 v2, 0x0

    .line 1475
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1476
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "startPanorama"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/hardware/Camera$PictureCallback;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Landroid/hardware/Camera$PictureCallback;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1478
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1479
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1482
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "startPanorama HwExtCameraClass can\'t find startPanorama()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1489
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1490
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1486
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "startPanorama HwExtCameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static stopFMRadioPlay(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.android.FMRadio.fmradioservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2234
    .local v0, toFM:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2235
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2236
    return-void
.end method

.method public static stopFaceDetection()V
    .locals 5

    .prologue
    .line 1167
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1168
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "stopFaceDetectionEx"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1169
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1170
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static stopPanorama(Z)V
    .locals 7
    .parameter "ShotLast"

    .prologue
    .line 1529
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1530
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "stopPanorama"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1532
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1533
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1535
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "Util"

    const-string v3, "stopPanorama HwExtCameraClass can\'t find stopPanorama()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1542
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1543
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1538
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "Util"

    const-string v3, "stopPanorama HwExtCameraClass is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static strToCoordinate(Ljava/lang/String;)Lcom/android/hwcamera/Util$Coordinate;
    .locals 7
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 2152
    if-nez p0, :cond_0

    .line 2165
    :goto_0
    return-object v3

    .line 2154
    :cond_0
    const/16 v4, 0x78

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2155
    .local v0, pos:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 2156
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2157
    .local v1, x:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2158
    .local v2, y:Ljava/lang/String;
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    sget-object v3, Lcom/android/hwcamera/Util;->touchPostion:Lcom/android/hwcamera/Util$Coordinate;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/hwcamera/Util$Coordinate;->xCoordinate:I

    .line 2161
    sget-object v3, Lcom/android/hwcamera/Util;->touchPostion:Lcom/android/hwcamera/Util$Coordinate;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/hwcamera/Util$Coordinate;->yCoordinate:I

    .line 2162
    sget-object v3, Lcom/android/hwcamera/Util;->touchPostion:Lcom/android/hwcamera/Util$Coordinate;

    goto :goto_0

    .line 2164
    .end local v1           #x:Ljava/lang/String;
    .end local v2           #y:Ljava/lang/String;
    :cond_1
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Coordinate parameter string="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static transformDPtoPX(ILandroid/content/Context;)I
    .locals 4
    .parameter "width"
    .parameter "contex"

    .prologue
    .line 553
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 554
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v2, 0x1

    int-to-float v3, p0

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 555
    .local v1, widthf:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method public static viewUri(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 5
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 523
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri invalid. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_0
    return-void

    .line 529
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.cooliris.media.action.REVIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v1

    .line 532
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 533
    :catch_1
    move-exception v0

    .line 534
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "review image fail. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
