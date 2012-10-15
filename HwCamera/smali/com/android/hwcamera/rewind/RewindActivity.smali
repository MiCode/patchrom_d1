.class public Lcom/android/hwcamera/rewind/RewindActivity;
.super Landroid/app/Activity;
.source "RewindActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;,
        Lcom/android/hwcamera/rewind/RewindActivity$MyHandler;,
        Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;,
        Lcom/android/hwcamera/rewind/RewindActivity$MyTopbarListener;,
        Lcom/android/hwcamera/rewind/RewindActivity$MyIndexListener;,
        Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;,
        Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;
    }
.end annotation


# static fields
.field private static final CONFIG_FILENAME:Ljava/lang/String; = "rewindconfig"

.field private static final DEFAULT_JPEG_QUALITY:I = 0x50

.field private static final DEFAULT_JPEG_THUMBNAIL_WIDTH:I = 0xa0

.field public static final DELETE_FOLDER:I = 0x3

.field public static final JPEG_THUMBNAIL_HEIGHT_KEY:Ljava/lang/String; = "jpeg_thumbnail_height_key"

.field public static final JPEG_THUMBNAIL_WIDTH_KEY:Ljava/lang/String; = "jpeg_thumbnail_width_key"

.field public static final MSG_FINISH_APP:I = 0x2

.field public static final MSG_TAKE_PIC:I = 0x1

.field public static final QUALITY_KEY:Ljava/lang/String; = "quality_key"

.field private static final TAG:Ljava/lang/String; = "RewindActivity"

.field private static final mRelPredefPath:Ljava/lang/String; = "/Rewind_preload"


# instance fields
.field private mCancelBtn:Lcom/android/hwcamera/rewind/Button;

.field private mCapturingEnabled:Z

.field private mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

.field private mDidRegister:Z

.field private mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

.field private mIndexSelector:Lcom/android/hwcamera/rewind/IndexSelector;

.field private mIsDeletingFiles:Z

.field private mJpegQuality:I

.field private mJpegThumbnailHeight:I

.field private mJpegThumbnailWidth:I

.field private mMyHandler:Landroid/os/Handler;

.field private mOkBtn:Lcom/android/hwcamera/rewind/Button;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRewindApp:Lcom/scalado/app/rewind/RewindApp;

.field private mRewindSurfaceView:Landroid/view/SurfaceView;

.field private mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

.field private mSaveBtn:Lcom/android/hwcamera/rewind/Button;

.field private mTopbar:Lcom/android/hwcamera/rewind/Topbar;

.field private mViewer:Lcom/scalado/app/rewind/RewindViewer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-boolean v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mCapturingEnabled:Z

    .line 68
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mPreviewWidth:I

    .line 69
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mPreviewHeight:I

    .line 90
    new-instance v0, Lcom/android/hwcamera/rewind/RewindActivity$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/hwcamera/rewind/RewindActivity$MyHandler;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;Lcom/android/hwcamera/rewind/RewindActivity$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mMyHandler:Landroid/os/Handler;

    .line 93
    iput-object v2, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 98
    iput-boolean v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mDidRegister:Z

    .line 671
    new-instance v0, Lcom/android/hwcamera/rewind/RewindActivity$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/rewind/RewindActivity$2;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 684
    return-void
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/android/hwcamera/rewind/IndexSelector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/android/hwcamera/rewind/IndexSelector;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/android/hwcamera/rewind/Topbar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/android/hwcamera/rewind/Topbar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/android/hwcamera/rewind/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/android/hwcamera/rewind/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/android/hwcamera/rewind/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/android/hwcamera/rewind/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/rewind/RewindActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/hwcamera/rewind/RewindActivity;->addToMediaStore(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/rewind/RewindActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mMyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindViewer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->loadImages()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/rewind/RewindActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->saveRewind()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/android/hwcamera/rewind/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/android/hwcamera/rewind/Button;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/rewind/RewindActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/hwcamera/rewind/RewindActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->deleteFolderSilently()V

    return-void
.end method

.method private addToMediaStore(Ljava/lang/String;)V
    .locals 13
    .parameter "filePath"

    .prologue
    .line 511
    const/4 v6, 0x0

    .line 512
    .local v6, orientation:I
    const/4 v4, 0x0

    .line 514
    .local v4, newFile:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v4           #newFile:Ljava/io/File;
    .local v5, newFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 516
    .local v8, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 517
    const/4 v1, 0x0

    .line 518
    .local v1, exifInterface:Landroid/media/ExifInterface;
    new-instance v1, Landroid/media/ExifInterface;

    .end local v1           #exifInterface:Landroid/media/ExifInterface;
    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 519
    .restart local v1       #exifInterface:Landroid/media/ExifInterface;
    if-eqz v1, :cond_0

    .line 520
    const-string v10, "Orientation"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    .line 523
    :cond_0
    const/4 v10, 0x1

    if-ne v10, v6, :cond_2

    .line 524
    const/4 v6, 0x0

    .line 543
    .end local v1           #exifInterface:Landroid/media/ExifInterface;
    :cond_1
    :goto_0
    const/4 v10, 0x0

    const-string v11, "."

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 544
    .local v3, name:Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    const/4 v10, 0x7

    invoke-direct {v9, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 545
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "title"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v10, "_display_name"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v10, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    const-string v10, "mime_type"

    const-string v11, "image/jpeg"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v10, "orientation"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    const-string v10, "_data"

    invoke-virtual {v9, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v10, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 552
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 558
    const/4 v4, 0x0

    .line 561
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #newFile:Ljava/io/File;
    .end local v8           #title:Ljava/lang/String;
    .end local v9           #values:Landroid/content/ContentValues;
    .restart local v4       #newFile:Ljava/io/File;
    :goto_1
    return-void

    .line 525
    .end local v4           #newFile:Ljava/io/File;
    .restart local v1       #exifInterface:Landroid/media/ExifInterface;
    .restart local v5       #newFile:Ljava/io/File;
    .restart local v8       #title:Ljava/lang/String;
    :cond_2
    const/4 v10, 0x6

    if-ne v10, v6, :cond_3

    .line 526
    const/16 v6, 0x5a

    goto :goto_0

    .line 527
    :cond_3
    const/4 v10, 0x3

    if-ne v10, v6, :cond_4

    .line 528
    const/16 v6, 0xb4

    goto :goto_0

    .line 529
    :cond_4
    const/16 v10, 0x8

    if-ne v10, v6, :cond_1

    .line 530
    const/16 v6, 0x10e

    goto :goto_0

    .line 534
    .end local v1           #exifInterface:Landroid/media/ExifInterface;
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v7, v10

    .line 535
    .local v7, size:I
    const/4 v2, 0x0

    .line 536
    .local v2, jpegData:[B
    new-array v2, v7, [B

    .line 537
    if-eqz v2, :cond_1

    .line 538
    invoke-static {v2}, Lcom/android/hwcamera/Exif;->getOrientation([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    goto :goto_0

    .line 554
    .end local v2           #jpegData:[B
    .end local v5           #newFile:Ljava/io/File;
    .end local v7           #size:I
    .end local v8           #title:Ljava/lang/String;
    .restart local v4       #newFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 556
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 558
    const/4 v4, 0x0

    .line 559
    goto :goto_1

    .line 558
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_3
    const/4 v4, 0x0

    throw v10

    .end local v4           #newFile:Ljava/io/File;
    .restart local v5       #newFile:Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #newFile:Ljava/io/File;
    .restart local v4       #newFile:Ljava/io/File;
    goto :goto_3

    .line 554
    .end local v4           #newFile:Ljava/io/File;
    .restart local v5       #newFile:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5           #newFile:Ljava/io/File;
    .restart local v4       #newFile:Ljava/io/File;
    goto :goto_2
.end method

.method private createViewerConfig()Lcom/scalado/app/rewind/RewindViewerConfig;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f00

    .line 300
    new-instance v2, Lcom/scalado/app/rewind/RewindViewerConfig;

    invoke-direct {v2}, Lcom/scalado/app/rewind/RewindViewerConfig;-><init>()V

    .line 301
    .local v2, viewerCfg:Lcom/scalado/app/rewind/RewindViewerConfig;
    iget-object v5, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/android/hwcamera/rewind/Topbar;

    iput-object v5, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    .line 302
    iget-object v5, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/android/hwcamera/rewind/IndexSelector;

    iput-object v5, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->indexSelector:Lcom/scalado/app/rewind/ExtIndexSelector;

    .line 303
    iget-object v5, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/android/hwcamera/rewind/Button;

    iput-object v5, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->commitButton:Lcom/scalado/app/rewind/ExtWidget;

    .line 304
    iget-object v5, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/android/hwcamera/rewind/Button;

    iput-object v5, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    .line 305
    sget-boolean v5, Lcom/android/hwcamera/Config;->saveEnabled:Z

    if-eqz v5, :cond_0

    .line 306
    iget-object v5, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/android/hwcamera/rewind/Button;

    iput-object v5, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b9

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 312
    .local v3, wheelBitmap:Landroid/graphics/Bitmap;
    const-string v5, "RewindActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020034

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 315
    .local v4, wheelIndic:Landroid/graphics/Bitmap;
    const-string v5, "RewindActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iput-object v3, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelBitmap:Landroid/graphics/Bitmap;

    .line 318
    iput-object v4, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 322
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->relCenter:Landroid/graphics/PointF;

    .line 323
    const v5, 0x3ed70a3d

    iput v5, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->relR:F

    .line 324
    const v5, 0x3d80bb3f

    iput v5, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->relRimW:F

    .line 325
    const v5, 0x3f57a91d

    iput v5, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->indicatorY:F

    .line 326
    const v5, 0x3d6a0ea1

    iput v5, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->indicatorExtraY:F

    .line 328
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 329
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput v9, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 330
    iput v9, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 331
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b8

    invoke-static {v5, v6, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    .local v0, jobbing:Landroid/graphics/Bitmap;
    iput-object v0, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->jobbingBitmap:Landroid/graphics/Bitmap;

    .line 335
    invoke-direct {p0, v2}, Lcom/android/hwcamera/rewind/RewindActivity;->setPredefinedImages(Lcom/scalado/app/rewind/RewindViewerConfig;)V

    .line 337
    sget v5, Lcom/android/hwcamera/Config;->rewindMode:I

    iput v5, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    .line 338
    return-object v2
.end method

.method private deleteFolderSilently()V
    .locals 2

    .prologue
    .line 633
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/hwcamera/rewind/RewindActivity$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/rewind/RewindActivity$1;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 644
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 218
    const v4, 0x7f030017

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/rewind/RewindActivity;->setContentView(I)V

    .line 220
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "quality_key"

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mJpegQuality:I

    .line 222
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "jpeg_thumbnail_width_key"

    const/16 v6, 0xa0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mJpegThumbnailWidth:I

    .line 224
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "jpeg_thumbnail_height_key"

    const/16 v6, 0x78

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mJpegThumbnailHeight:I

    .line 228
    const v4, 0x7f08007d

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    iput-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindSurfaceView:Landroid/view/SurfaceView;

    .line 230
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 231
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 233
    const v4, 0x7f08007f

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/rewind/Topbar;

    iput-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/android/hwcamera/rewind/Topbar;

    .line 234
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/android/hwcamera/rewind/Topbar;

    new-instance v5, Lcom/android/hwcamera/rewind/RewindActivity$MyTopbarListener;

    invoke-direct {v5, p0, v7}, Lcom/android/hwcamera/rewind/RewindActivity$MyTopbarListener;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;Lcom/android/hwcamera/rewind/RewindActivity$1;)V

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/rewind/Topbar;->setListener(Lcom/android/hwcamera/rewind/Topbar$TopbarListener;)V

    .line 235
    const v4, 0x7f080034

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/rewind/IndexSelector;

    iput-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/android/hwcamera/rewind/IndexSelector;

    .line 236
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/android/hwcamera/rewind/IndexSelector;

    iget-object v5, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/android/hwcamera/rewind/Topbar;

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/rewind/IndexSelector;->setTopbar(Lcom/android/hwcamera/rewind/Timeoutable;)V

    .line 237
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/android/hwcamera/rewind/IndexSelector;

    new-instance v5, Lcom/android/hwcamera/rewind/RewindActivity$MyIndexListener;

    invoke-direct {v5, p0, v7}, Lcom/android/hwcamera/rewind/RewindActivity$MyIndexListener;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;Lcom/android/hwcamera/rewind/RewindActivity$1;)V

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/rewind/IndexSelector;->setIndexListener(Lcom/android/hwcamera/rewind/IndexSelector$IndexListener;)V

    .line 238
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/android/hwcamera/rewind/IndexSelector;

    sget v5, Lcom/android/hwcamera/Config;->burstSize:I

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/rewind/IndexSelector;->setNumberOfItems(I)V

    .line 239
    sget-boolean v4, Lcom/android/hwcamera/Config;->backgroundSelectionEnabled:Z

    if-nez v4, :cond_0

    .line 240
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/android/hwcamera/rewind/IndexSelector;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/rewind/IndexSelector;->setVisibility(I)V

    .line 243
    :cond_0
    new-instance v3, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;

    invoke-direct {v3, p0, v7}, Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;Lcom/android/hwcamera/rewind/RewindActivity$1;)V

    .line 244
    .local v3, onClickListener:Lcom/android/hwcamera/rewind/RewindActivity$MyOnClickListener;
    const v4, 0x7f080080

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/rewind/Button;

    iput-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/android/hwcamera/rewind/Button;

    .line 245
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/android/hwcamera/rewind/Button;

    invoke-virtual {v4, v3}, Lcom/android/hwcamera/rewind/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/android/hwcamera/rewind/Button;

    invoke-virtual {v4}, Lcom/android/hwcamera/rewind/Button;->hide()V

    .line 247
    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/rewind/Button;

    iput-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/android/hwcamera/rewind/Button;

    .line 248
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/android/hwcamera/rewind/Button;

    invoke-virtual {v4, v3}, Lcom/android/hwcamera/rewind/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/android/hwcamera/rewind/Button;

    invoke-virtual {v4}, Lcom/android/hwcamera/rewind/Button;->hide()V

    .line 250
    const v4, 0x7f080023

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/rewind/Button;

    iput-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/android/hwcamera/rewind/Button;

    .line 251
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/android/hwcamera/rewind/Button;

    invoke-virtual {v4, v3}, Lcom/android/hwcamera/rewind/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/android/hwcamera/rewind/Button;

    invoke-virtual {v4}, Lcom/android/hwcamera/rewind/Button;->hide()V

    .line 254
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->initRewind()V

    .line 256
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02008d

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 258
    .local v1, diodOn:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02008c

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    .local v0, diodOff:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/android/hwcamera/rewind/IndexSelector;

    invoke-virtual {v4, v0, v1}, Lcom/android/hwcamera/rewind/IndexSelector;->setCheckBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 262
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/android/hwcamera/rewind/Topbar;

    invoke-virtual {v4, p0}, Lcom/android/hwcamera/rewind/Topbar;->setActivity(Landroid/app/Activity;)V

    .line 264
    return-void
.end method

.method private initRewind()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 267
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->createViewerConfig()Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    .line 269
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_0
    new-instance v0, Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/ManualRewindViewer;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    .line 281
    :goto_0
    new-instance v0, Lcom/scalado/app/rewind/RewindApp;

    sget-boolean v3, Lcom/android/hwcamera/Config;->previewEnabled:Z

    sget v4, Lcom/android/hwcamera/Config;->burstSize:I

    iget-object v5, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RewindApp;-><init>(Landroid/content/Context;Lcom/scalado/app/rewind/RewindApp$CameraInterface;ZILcom/scalado/app/rewind/RewindViewerConfig;)V

    iput-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    .line 283
    iget-object v3, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindSurfaceView:Landroid/view/SurfaceView;

    iget-object v8, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    move-object v5, p0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/scalado/app/rewind/RewindApp;->init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/SurfaceView;Landroid/view/SurfaceView;Lcom/scalado/app/rewind/RewindViewer;)V

    .line 286
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    new-instance v1, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;Lcom/android/hwcamera/rewind/RewindActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->setCallback(Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;)V

    .line 287
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->setRewindActivityHandler(Landroid/os/Handler;)V

    .line 288
    sget-boolean v0, Lcom/android/hwcamera/Config;->previewEnabled:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    iget v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mPreviewHeight:I

    iget v3, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mPreviewFormat:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RewindApp;->setPreviewConfig(III)V

    .line 292
    :cond_0
    return-void

    .line 274
    :pswitch_1
    new-instance v0, Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoFixViewer;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    .line 275
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/android/hwcamera/rewind/IndexSelector;

    sget v1, Lcom/android/hwcamera/Config;->burstSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/rewind/IndexSelector;->setNumberOfItems(I)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/rewind/RewindActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mDidRegister:Z

    .line 154
    return-void
.end method

.method private loadImages()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V

    .line 437
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp;->loadImages()V

    .line 438
    return-void
.end method

.method private predefPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getDcimPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Rewind_preload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveRewind()V
    .locals 10

    .prologue
    .line 441
    sget-boolean v6, Lcom/android/hwcamera/Config;->saveEnabled:Z

    if-nez v6, :cond_0

    .line 467
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 446
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 448
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 449
    .local v1, dateTaken:J
    const/4 v0, 0x0

    .line 450
    .local v0, base:Ljava/lang/String;
    sget v6, Lcom/android/hwcamera/Config;->rewindMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 451
    const-string v0, "AUTO_REW"

    .line 455
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DCIM_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "yyyy-MM-dd_kk.mm.ss"

    invoke-static {v7, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, path:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    iget v7, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mJpegQuality:I

    iget v8, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mJpegThumbnailWidth:I

    iget v9, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mJpegThumbnailHeight:I

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/scalado/app/rewind/RewindApp;->saveRewind(Ljava/lang/String;III)V

    goto :goto_0

    .line 453
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    :cond_2
    const-string v0, "REW"

    goto :goto_1
.end method

.method private setPredefinedImages(Lcom/scalado/app/rewind/RewindViewerConfig;)V
    .locals 13
    .parameter "viewerCfg"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x5

    .line 342
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "setPredefinedImages E"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/android/hwcamera/Storage;->getRewindPath()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, directory:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "LTWIMG_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, filename:Ljava/lang/String;
    const-string v1, ".jpg"

    .line 346
    .local v1, ext:Ljava/lang/String;
    sget v6, Lcom/android/hwcamera/Config;->sampleNumn:I

    if-nez v6, :cond_2

    .line 347
    new-array v3, v8, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v12

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 350
    .local v3, imgs:[Ljava/lang/String;
    iput-object v3, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    .line 351
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    .line 352
    array-length v6, v3

    sput v6, Lcom/android/hwcamera/Config;->burstSize:I

    .line 370
    .end local v3           #imgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->access$1200(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->access$1200(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_1

    .line 372
    iget-object v6, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->access$1200(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    .line 373
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    .line 374
    iget-object v6, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->access$1200(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    sput v6, Lcom/android/hwcamera/Config;->burstSize:I

    .line 376
    :cond_1
    sget v6, Lcom/android/hwcamera/Config;->burstSize:I

    iget-object v7, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    array-length v7, v7

    if-eq v6, v7, :cond_4

    .line 377
    const-string v6, "RewindActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config.burstSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/hwcamera/Config;->burstSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v6, "RewindActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "predefinedImages.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "burst size != # images"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 353
    :cond_2
    sget v6, Lcom/android/hwcamera/Config;->sampleNumn:I

    if-ne v6, v9, :cond_3

    .line 355
    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "LTWIMG_640x480_00.jpg"

    aput-object v6, v4, v11

    const-string v6, "LTWIMG_640x480_01.jpg"

    aput-object v6, v4, v9

    const-string v6, "LTWIMG_640x480_02.jpg"

    aput-object v6, v4, v10

    const-string v6, "LTWIMG_640x480_03.jpg"

    aput-object v6, v4, v12

    const/4 v6, 0x4

    const-string v7, "LTWIMG_640x480_04.jpg"

    aput-object v7, v4, v6

    .line 358
    .local v4, tmpImgs:[Ljava/lang/String;
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 359
    .local v5, tmpSizes:[I
    iput-object v4, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    .line 360
    iput-object v5, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    goto/16 :goto_0

    .line 361
    .end local v4           #tmpImgs:[Ljava/lang/String;
    .end local v5           #tmpSizes:[I
    :cond_3
    sget v6, Lcom/android/hwcamera/Config;->sampleNumn:I

    if-ne v6, v10, :cond_0

    .line 362
    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "LTWIMG_P_2796x1864_00.jpg"

    aput-object v6, v4, v11

    const-string v6, "LTWIMG_P_2796x1864_01.jpg"

    aput-object v6, v4, v9

    const-string v6, "LTWIMG_P_2796x1864_02.jpg"

    aput-object v6, v4, v10

    const-string v6, "LTWIMG_P_2796x1864_03.jpg"

    aput-object v6, v4, v12

    const/4 v6, 0x4

    const-string v7, "LTWIMG_P_2796x1864_04.jpg"

    aput-object v7, v4, v6

    .line 365
    .restart local v4       #tmpImgs:[Ljava/lang/String;
    new-array v5, v8, [I

    fill-array-data v5, :array_1

    .line 366
    .restart local v5       #tmpSizes:[I
    iput-object v4, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    .line 367
    iput-object v5, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    goto/16 :goto_0

    .line 382
    .end local v4           #tmpImgs:[Ljava/lang/String;
    .end local v5           #tmpSizes:[I
    :cond_4
    return-void

    .line 358
    nop

    :array_0
    .array-data 0x4
        0x38t 0x14t 0x1t 0x0t
        0x48t 0x14t 0x1t 0x0t
        0xe7t 0x13t 0x1t 0x0t
        0x6dt 0x13t 0x1t 0x0t
        0x19t 0x18t 0x1t 0x0t
    .end array-data

    .line 365
    :array_1
    .array-data 0x4
        0x10t 0xeet 0xct 0x0t
        0x18t 0xb6t 0xct 0x0t
        0x72t 0x9ft 0xct 0x0t
        0xb8t 0xf7t 0xct 0x0t
        0xc1t 0xe4t 0xct 0x0t
    .end array-data
.end method

.method private setProgressBarVisible(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 157
    if-eqz p1, :cond_1

    .line 158
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f0d000c

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 160
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 162
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f030012

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->deleteFolderSilently()V

    .line 629
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 630
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/16 v7, 0x400

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const-string v4, "RewindActivity"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v4, "RewindActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "model = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0, v8}, Lcom/android/hwcamera/rewind/RewindActivity;->requestWindowFeature(I)Z

    .line 107
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 110
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/rewind/RewindActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 111
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 112
    .local v2, w:I
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 113
    .local v0, h:I
    const-string v4, "RewindActivity"

    const-string v5, "Window = %dx%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :try_start_0
    new-instance v4, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->predefPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rewindconfig"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/hwcamera/rewind/RewindActivity$1;)V

    iput-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    .line 119
    const-string v4, "RewindActivity"

    const-string v5, "Read config from \'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    #calls: Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->filename()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->access$200(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPreviewEnabledSet:Z
    invoke-static {v4}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->access$300(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPreviewEnabled:Z
    invoke-static {v4}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->access$400(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)Z

    move-result v4

    sput-boolean v4, Lcom/android/hwcamera/Config;->previewEnabled:Z

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mRewindModeSet:Z
    invoke-static {v4}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->access$500(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mRewindMode:I
    invoke-static {v4}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->access$600(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)I

    move-result v4

    sput v4, Lcom/android/hwcamera/Config;->rewindMode:I

    .line 128
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    #calls: Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->numImages()I
    invoke-static {v4}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->access$700(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)I

    move-result v4

    sput v4, Lcom/android/hwcamera/Config;->burstSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->init()V

    .line 135
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    if-eqz v4, :cond_2

    .line 136
    iget-object v4, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v4, p1}, Lcom/scalado/app/rewind/RewindApp;->onCreate(Landroid/os/Bundle;)V

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->loadImages()V

    .line 139
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->installIntentFilter()V

    .line 141
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, ioe:Ljava/io/IOException;
    const-string v4, "RewindActivity"

    const-string v5, "Failed to read config file. No worries, ignoring."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object v10, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "RewindActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 209
    iget-boolean v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mDidRegister:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/rewind/RewindActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mDidRegister:Z

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp;->destroy()V

    .line 214
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 215
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/rewind/RewindApp;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 396
    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v1, p1, p2}, Lcom/scalado/app/rewind/RewindApp;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 399
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 421
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 407
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mCapturingEnabled:Z

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RewindApp;->capture()V

    goto :goto_0

    .line 412
    :sswitch_2
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity;->saveRewind()V

    goto :goto_0

    .line 399
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0x1d -> :sswitch_0
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V

    .line 198
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 200
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 184
    const-string v0, "RewindActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 189
    const-string v0, "RewindActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp;->resume()V

    .line 191
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/RewindApp;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 298
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 175
    const-string v0, "RewindActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 203
    const-string v0, "RewindActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 425
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v1, p1}, Lcom/scalado/app/rewind/RewindApp;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    const/4 v0, 0x0

    goto :goto_0
.end method
