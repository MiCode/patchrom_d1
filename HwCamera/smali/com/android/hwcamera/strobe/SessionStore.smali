.class public final Lcom/android/hwcamera/strobe/SessionStore;
.super Ljava/lang/Object;
.source "SessionStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/strobe/SessionStore$MyStrobeAnalyzerLogger;,
        Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;,
        Lcom/android/hwcamera/strobe/SessionStore$RenderCallback;,
        Lcom/android/hwcamera/strobe/SessionStore$SessionCallback;,
        Lcom/android/hwcamera/strobe/SessionStore$AnalysisObserver;
    }
.end annotation


# static fields
.field public static final BASE_PATH:Ljava/io/File; = null

.field private static final DEFAULT_FOLDER:Ljava/lang/String; = "Camera"

.field public static final JPEG_FILE_FILTER:Ljava/io/FileFilter; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SessionStore"

.field public static final MAX_NUMBER_OF_PICTURES:I = 0xa

.field public static final NO_MEDIA:Ljava/lang/String; = ".nomedia"


# instance fields
.field private final mAllSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scalado/caps/Session;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalysisObserver:Lcom/android/hwcamera/strobe/SessionStore$AnalysisObserver;

.field private final mAnalyzedSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scalado/caps/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnalyzer:Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;

.field private mBackgroundIndex:I

.field private mDisplayDims:Lcom/scalado/base/Size;

.field private mExifSession:Lcom/scalado/caps/exif/Session;

.field private mImagesDumped:Z

.field private mSessionCallback:Lcom/android/hwcamera/strobe/SessionStore$SessionCallback;

.field private final mStrobeObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Camera"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/strobe/SessionStore;->BASE_PATH:Ljava/io/File;

    .line 61
    new-instance v0, Lcom/android/hwcamera/strobe/SessionStore$1;

    invoke-direct {v0}, Lcom/android/hwcamera/strobe/SessionStore$1;-><init>()V

    sput-object v0, Lcom/android/hwcamera/strobe/SessionStore;->JPEG_FILE_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0xa

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;

    new-instance v1, Lcom/android/hwcamera/strobe/SessionStore$MyStrobeAnalyzerLogger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/hwcamera/strobe/SessionStore$MyStrobeAnalyzerLogger;-><init>(Lcom/android/hwcamera/strobe/SessionStore$1;)V

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;-><init>(Lcom/android/hwcamera/strobe/SessionStore;Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer$Logger;)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalyzer:Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mImagesDumped:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mBackgroundIndex:I

    .line 588
    return-void
.end method

.method private createExifSession(Lcom/scalado/stream/Stream;)V
    .locals 3
    .parameter "stream"

    .prologue
    .line 574
    if-nez p1, :cond_0

    .line 575
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "stream can not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/strobe/SessionStore;->mExifSession:Lcom/scalado/caps/exif/Session;

    if-nez v1, :cond_1

    .line 580
    :try_start_0
    new-instance v1, Lcom/scalado/caps/exif/Session;

    invoke-direct {v1, p1}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    iput-object v1, p0, Lcom/android/hwcamera/strobe/SessionStore;->mExifSession:Lcom/scalado/caps/exif/Session;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_1
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 583
    const-string v1, "SessionStore"

    const-string v2, "error when create exif session"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpImages(Ljava/lang/String;)V
    .locals 22
    .parameter "baseName"

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/strobe/SessionStore;->mImagesDumped:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 460
    new-instance v3, Ljava/io/File;

    sget-object v18, Lcom/android/hwcamera/strobe/SessionStore;->BASE_PATH:Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 461
    .local v3, basePath:Ljava/io/File;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    .line 462
    const-string v18, "%s/%s_%02d.jpg"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object p1, v19, v20

    const/16 v20, 0x2

    add-int/lit8 v21, v10, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 464
    .local v9, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/scalado/caps/Session;

    .line 465
    .local v16, s:Lcom/scalado/caps/Session;
    invoke-virtual/range {v16 .. v16}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v5

    .line 466
    .local v5, d:Lcom/scalado/caps/Decoder;
    instance-of v0, v5, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object v13, v5

    .line 469
    check-cast v13, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 470
    .local v13, jpegDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-virtual {v13}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v17

    .line 471
    .local v17, stream:Lcom/scalado/stream/Stream;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/scalado/stream/BufferStream;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v4, v17

    .line 472
    check-cast v4, Lcom/scalado/stream/BufferStream;

    .line 474
    .local v4, bufferStream:Lcom/scalado/stream/BufferStream;
    new-instance v11, Lcom/scalado/base/Image;

    invoke-virtual {v4}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v18

    new-instance v19, Lcom/scalado/base/Size;

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v20, Lcom/scalado/base/Image$Config;->GRAY1:Lcom/scalado/base/Image$Config;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v11, v0, v1, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 478
    .local v11, imageWrapperForAccessingByteBuffer:Lcom/scalado/base/Image;
    :try_start_0
    invoke-static {v3}, Lcom/android/hwcamera/strobe/SessionStore;->ensureDirectoryExists(Ljava/io/File;)V

    .line 479
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 480
    .local v14, os:Ljava/io/FileOutputStream;
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 481
    .local v8, fc:Ljava/nio/channels/FileChannel;
    invoke-virtual {v11}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 483
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 484
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 485
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v4           #bufferStream:Lcom/scalado/stream/BufferStream;
    .end local v8           #fc:Ljava/nio/channels/FileChannel;
    .end local v11           #imageWrapperForAccessingByteBuffer:Lcom/scalado/base/Image;
    .end local v13           #jpegDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v17           #stream:Lcom/scalado/stream/Stream;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 486
    .restart local v4       #bufferStream:Lcom/scalado/stream/BufferStream;
    .restart local v11       #imageWrapperForAccessingByteBuffer:Lcom/scalado/base/Image;
    .restart local v13       #jpegDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .restart local v17       #stream:Lcom/scalado/stream/Stream;
    :catch_0
    move-exception v6

    .line 488
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 494
    .end local v4           #bufferStream:Lcom/scalado/stream/BufferStream;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v11           #imageWrapperForAccessingByteBuffer:Lcom/scalado/base/Image;
    .end local v13           #jpegDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v17           #stream:Lcom/scalado/stream/Stream;
    :cond_1
    :try_start_1
    invoke-static {v3}, Lcom/android/hwcamera/strobe/SessionStore;->ensureDirectoryExists(Ljava/io/File;)V

    .line 495
    new-instance v15, Lcom/scalado/stream/FileStream;

    sget-object v18, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    move-object/from16 v0, v18

    invoke-direct {v15, v9, v0}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    .line 497
    .local v15, outStream:Lcom/scalado/stream/FileStream;
    new-instance v7, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-virtual {v5}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v15, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 499
    .local v7, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v12

    .line 500
    .local v12, it:Lcom/scalado/base/Iterator;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 501
    .end local v7           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v12           #it:Lcom/scalado/base/Iterator;
    .end local v15           #outStream:Lcom/scalado/stream/FileStream;
    :catch_1
    move-exception v6

    .line 503
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 507
    .end local v5           #d:Lcom/scalado/caps/Decoder;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #fileName:Ljava/lang/String;
    .end local v16           #s:Lcom/scalado/caps/Session;
    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/strobe/SessionStore;->mImagesDumped:Z

    .line 509
    .end local v3           #basePath:Ljava/io/File;
    .end local v10           #i:I
    :cond_3
    return-void
.end method

.method private static ensureDirectoryExists(Ljava/io/File;)V
    .locals 5
    .parameter "basePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    new-instance v1, Ljava/io/File;

    const-string v4, ".nomedia"

    invoke-direct {v1, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 513
    .local v1, noMediaFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 515
    const/4 v2, 0x0

    .line 517
    .local v2, noMediaFileStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v2           #noMediaFileStream:Ljava/io/FileOutputStream;
    .local v3, noMediaFileStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 522
    if-eqz v3, :cond_0

    .line 523
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 527
    .end local v3           #noMediaFileStream:Ljava/io/FileOutputStream;
    :cond_0
    return-void

    .line 519
    .restart local v2       #noMediaFileStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Ljava/io/IOException;
    :goto_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v2, :cond_1

    .line 523
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v4

    .line 522
    .end local v2           #noMediaFileStream:Ljava/io/FileOutputStream;
    .restart local v3       #noMediaFileStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #noMediaFileStream:Ljava/io/FileOutputStream;
    .restart local v2       #noMediaFileStream:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 519
    .end local v2           #noMediaFileStream:Ljava/io/FileOutputStream;
    .restart local v3       #noMediaFileStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #noMediaFileStream:Ljava/io/FileOutputStream;
    .restart local v2       #noMediaFileStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static getDateAndTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 558
    .local v0, calendar:Ljava/util/Calendar;
    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private privateAnalyze(III)V
    .locals 14
    .parameter "start"
    .parameter "end"
    .parameter "numberOfImages"

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/SessionStore;->resetAnalysis()V

    .line 426
    new-instance v8, Ljava/lang/StringBuilder;

    mul-int/lit8 v10, p3, 0x3

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 427
    .local v8, usedSessions:Ljava/lang/StringBuilder;
    const/high16 v10, 0x3f80

    sub-int v11, p2, p1

    int-to-float v11, v11

    move/from16 v0, p3

    int-to-float v12, v0

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 429
    .local v3, step:F
    int-to-float v9, p1

    .local v9, v:F
    :goto_0
    move/from16 v0, p2

    int-to-float v10, v0

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_0

    .line 430
    float-to-int v2, v9

    .line 431
    .local v2, index:I
    iget-object v10, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;

    iget-object v11, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    add-float/2addr v9, v3

    goto :goto_0

    .line 434
    .end local v2           #index:I
    :cond_0
    const-string v10, "SessionStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Used sessions: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 438
    .local v4, t1:J
    iget-object v10, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalyzer:Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;

    invoke-virtual {v10}, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->analyze()V

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 440
    .local v6, t2:J
    const-string v10, "SessionStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Analysis took: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v6, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v10, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalysisObserver:Lcom/android/hwcamera/strobe/SessionStore$AnalysisObserver;

    if-eqz v10, :cond_1

    .line 442
    iget-object v10, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalysisObserver:Lcom/android/hwcamera/strobe/SessionStore$AnalysisObserver;

    invoke-interface {v10}, Lcom/android/hwcamera/strobe/SessionStore$AnalysisObserver;->analysisComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v4           #t1:J
    .end local v6           #t2:J
    :cond_1
    :goto_1
    return-void

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addStrobeObjects(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized analyze(IIILcom/android/hwcamera/strobe/SessionStore$AnalysisObserver;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "numberOfImages"
    .parameter "observer"

    .prologue
    .line 389
    monitor-enter p0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 390
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start and end value must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 394
    :cond_1
    if-le p1, p2, :cond_2

    .line 395
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start value must less than end value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_2
    if-gtz p3, :cond_3

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numberOfImages must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_3
    invoke-virtual {p0, p4}, Lcom/android/hwcamera/strobe/SessionStore;->setAnalysisObserver(Lcom/android/hwcamera/strobe/SessionStore$AnalysisObserver;)V

    .line 405
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/strobe/SessionStore;->privateAnalyze(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized canAnalyze()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelAnalyze()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalyzer:Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;

    invoke-virtual {v0}, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->cancelAnalyze()V

    .line 422
    return-void
.end method

.method public declared-synchronized doRender(Lcom/android/hwcamera/strobe/SessionStore$RenderCallback;)V
    .locals 9
    .parameter "callback"

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/android/hwcamera/strobe/SessionStore;->mBackgroundIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 554
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 540
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/SessionStore;->getStrobe()Lcom/scalado/caps/strobe/Strobe;

    move-result-object v3

    .line 541
    .local v3, strobe:Lcom/scalado/caps/strobe/Strobe;
    iget-object v4, p0, Lcom/android/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    .line 542
    .local v2, object:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    invoke-virtual {v2}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getOpacity()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/scalado/caps/strobe/Strobe;->setBlendValue(ID)V

    .line 543
    const-string v4, "SessionStore"

    const-string v5, "\tsetBlendValue(%d, %f)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getOpacity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 537
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #object:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v3           #strobe:Lcom/scalado/caps/strobe/Strobe;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 548
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #strobe:Lcom/scalado/caps/strobe/Strobe;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    iget v5, p0, Lcom/android/hwcamera/strobe/SessionStore;->mBackgroundIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual {v4}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v1

    .line 549
    .local v1, index:I
    const-string v4, "SessionStore"

    const-string v5, "\tblend(%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {v3, v1}, Lcom/scalado/caps/strobe/Strobe;->blend(I)V

    .line 551
    if-eqz p1, :cond_0

    .line 552
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-virtual {v3}, Lcom/scalado/caps/strobe/Strobe;->getDecoder()Lcom/scalado/caps/strobe/StrobeDecoder;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    invoke-interface {p1, v4}, Lcom/android/hwcamera/strobe/SessionStore$RenderCallback;->onStrobeRenderCompleted(Lcom/scalado/caps/Session;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public dumpImages()V
    .locals 1

    .prologue
    .line 455
    invoke-static {}, Lcom/android/hwcamera/strobe/SessionStore;->getDateAndTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/strobe/SessionStore;->dumpImages(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public declared-synchronized getAllSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/caps/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAnalyzedSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/caps/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBackgroundIndex()I
    .locals 1

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mBackgroundIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayDims()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mDisplayDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public getExifSession()Lcom/scalado/caps/exif/Session;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mExifSession:Lcom/scalado/caps/exif/Session;

    return-object v0
.end method

.method public declared-synchronized getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStrobe()Lcom/scalado/caps/strobe/Strobe;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalyzer:Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;

    invoke-virtual {v0}, Lcom/android/hwcamera/strobe/StrobeObjectAnalyzer;->getStrobe()Lcom/scalado/caps/strobe/Strobe;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getVisibleObject()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v2, visibleList:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;>;"
    iget-object v3, p0, Lcom/android/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    .line 244
    .local v1, obj:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    invoke-virtual {v1}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 242
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #obj:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v2           #visibleList:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 248
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #visibleList:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;>;"
    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized loadPreloadeSequence(Landroid/content/res/AssetManager;)V
    .locals 14
    .parameter "assetManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/SessionStore;->reset()V

    .line 313
    const-string v12, "sequence"

    invoke-virtual {p1, v12}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v11, v0

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v8, v0, v9

    .line 314
    .local v8, file:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sequence/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 315
    .local v7, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 317
    .local v3, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 318
    .local v6, fc:Ljava/nio/channels/FileChannel;
    invoke-virtual {v6, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 319
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 320
    invoke-static {v3}, Lcom/scalado/base/Buffer;->createDirect(Ljava/nio/ByteBuffer;)Lcom/scalado/base/Buffer;

    move-result-object v1

    .line 321
    .local v1, buffer:Lcom/scalado/base/Buffer;
    new-instance v2, Lcom/scalado/stream/BufferStream;

    invoke-virtual {v1}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v12

    invoke-direct {v2, v1, v12}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 323
    .local v2, bufferStream:Lcom/scalado/stream/BufferStream;
    new-instance v5, Lcom/scalado/caps/codec/decoder/DecoderFactory;

    invoke-direct {v5}, Lcom/scalado/caps/codec/decoder/DecoderFactory;-><init>()V

    .line 324
    .local v5, factory:Lcom/scalado/caps/codec/decoder/DecoderFactory;
    new-instance v12, Lcom/scalado/caps/codec/decoder/JpegDecoderProvider;

    invoke-direct {v12}, Lcom/scalado/caps/codec/decoder/JpegDecoderProvider;-><init>()V

    invoke-virtual {v5, v12}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->registerProvider(Lcom/scalado/caps/codec/decoder/DecoderProvider;)V

    .line 325
    new-instance v12, Lcom/scalado/caps/codec/decoder/PngDecoderProvider;

    invoke-direct {v12}, Lcom/scalado/caps/codec/decoder/PngDecoderProvider;-><init>()V

    invoke-virtual {v5, v12}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->registerProvider(Lcom/scalado/caps/codec/decoder/DecoderProvider;)V

    .line 327
    invoke-virtual {v5, v2}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->createDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v10

    .line 328
    .local v10, it:Lcom/scalado/base/Iterator;
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/scalado/base/Iterator;->step(I)F

    .line 329
    invoke-virtual {v10}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/caps/Decoder;

    .line 330
    .local v4, decoder:Lcom/scalado/caps/Decoder;
    iget-object v12, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    new-instance v13, Lcom/scalado/caps/Session;

    invoke-direct {v13, v4}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 332
    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #bufferStream:Lcom/scalado/stream/BufferStream;
    .end local v3           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v4           #decoder:Lcom/scalado/caps/Decoder;
    .end local v5           #factory:Lcom/scalado/caps/codec/decoder/DecoderFactory;
    .end local v6           #fc:Ljava/nio/channels/FileChannel;
    .end local v7           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v8           #file:Ljava/lang/String;
    .end local v10           #it:Lcom/scalado/base/Iterator;
    :cond_0
    monitor-exit p0

    return-void

    .line 312
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12
.end method

.method public declared-synchronized loadSequence(Ljava/lang/String;)V
    .locals 11
    .parameter "dirPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/strobe/SessionStore;->reset()V

    .line 343
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .local v2, dir:Ljava/io/File;
    sget-object v9, Lcom/android/hwcamera/strobe/SessionStore;->JPEG_FILE_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v2, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 345
    .local v4, files:[Ljava/io/File;
    if-nez v4, :cond_1

    .line 365
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_1
    :try_start_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 349
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v3, v0, v5

    .line 350
    .local v3, file:Ljava/io/File;
    new-instance v8, Lcom/scalado/stream/FileStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v8, v9, v10}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    .line 352
    .local v8, stream:Lcom/scalado/stream/FileStream;
    iget-object v9, p0, Lcom/android/hwcamera/strobe/SessionStore;->mExifSession:Lcom/scalado/caps/exif/Session;

    if-nez v9, :cond_2

    .line 353
    invoke-direct {p0, v8}, Lcom/android/hwcamera/strobe/SessionStore;->createExifSession(Lcom/scalado/stream/Stream;)V

    .line 357
    :cond_2
    invoke-static {v8}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v6

    .line 358
    .local v6, it:Lcom/scalado/base/Iterator;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/scalado/base/Iterator;->step(I)F

    .line 359
    invoke-virtual {v6}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/Decoder;

    .line 360
    .local v1, decoder:Lcom/scalado/caps/Decoder;
    iget-object v9, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    new-instance v10, Lcom/scalado/caps/Session;

    invoke-direct {v10, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 362
    .end local v1           #decoder:Lcom/scalado/caps/Decoder;
    .end local v3           #file:Ljava/io/File;
    .end local v6           #it:Lcom/scalado/base/Iterator;
    .end local v8           #stream:Lcom/scalado/stream/FileStream;
    :cond_3
    iget-object v9, p0, Lcom/android/hwcamera/strobe/SessionStore;->mSessionCallback:Lcom/android/hwcamera/strobe/SessionStore$SessionCallback;

    if-eqz v9, :cond_0

    .line 363
    iget-object v9, p0, Lcom/android/hwcamera/strobe/SessionStore;->mSessionCallback:Lcom/android/hwcamera/strobe/SessionStore$SessionCallback;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/android/hwcamera/strobe/SessionStore$SessionCallback;->onSessionCreated(Lcom/scalado/caps/Session;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized reset()V
    .locals 3

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    .line 272
    .local v1, obj:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #obj:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 276
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 277
    iget-object v2, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 278
    iget-object v2, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 279
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/strobe/SessionStore;->mExifSession:Lcom/scalado/caps/exif/Session;

    .line 280
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/hwcamera/strobe/SessionStore;->mImagesDumped:Z

    .line 281
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/strobe/SessionStore;->mSessionCallback:Lcom/android/hwcamera/strobe/SessionStore$SessionCallback;

    .line 282
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalysisObserver:Lcom/android/hwcamera/strobe/SessionStore$AnalysisObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized resetAnalysis()V
    .locals 6

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    .line 287
    .local v2, obj:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v2}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 286
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #obj:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 291
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 293
    iget-object v4, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/caps/Session;

    .line 295
    .local v3, session:Lcom/scalado/caps/Session;
    new-instance v0, Lcom/scalado/caps/filter/Flip;

    invoke-direct {v0, v3}, Lcom/scalado/caps/filter/Flip;-><init>(Lcom/scalado/caps/Session;)V

    .line 296
    .local v0, f:Lcom/scalado/caps/filter/Flip;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/scalado/caps/filter/Flip;->set(ZZ)V

    .line 297
    invoke-virtual {v0}, Lcom/scalado/caps/filter/Flip;->commit()V

    .line 299
    invoke-virtual {v3}, Lcom/scalado/caps/Session;->removeAllFilters()V

    goto :goto_1

    .line 301
    .end local v0           #f:Lcom/scalado/caps/filter/Flip;
    .end local v3           #session:Lcom/scalado/caps/Session;
    :cond_2
    iget-object v4, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    monitor-exit p0

    return-void
.end method

.method public setAnalysisObserver(Lcom/android/hwcamera/strobe/SessionStore$AnalysisObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAnalysisObserver:Lcom/android/hwcamera/strobe/SessionStore$AnalysisObserver;

    .line 369
    return-void
.end method

.method public declared-synchronized setBackgroundIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 257
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must between 0 and the number ofimages added in SessionStore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 263
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/android/hwcamera/strobe/SessionStore;->mBackgroundIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    monitor-exit p0

    return-void
.end method

.method public setDisplayDims(Lcom/scalado/base/Size;)V
    .locals 0
    .parameter "dims"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/hwcamera/strobe/SessionStore;->mDisplayDims:Lcom/scalado/base/Size;

    .line 563
    return-void
.end method

.method public setSessionCallback(Lcom/android/hwcamera/strobe/SessionStore$SessionCallback;)V
    .locals 0
    .parameter "sessioncb"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/hwcamera/strobe/SessionStore;->mSessionCallback:Lcom/android/hwcamera/strobe/SessionStore$SessionCallback;

    .line 373
    return-void
.end method
