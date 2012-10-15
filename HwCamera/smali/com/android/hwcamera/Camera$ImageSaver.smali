.class Lcom/android/hwcamera/Camera$ImageSaver;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# static fields
.field private static final QUEUE_LIMIT:I = 0xf


# instance fields
.field private mNeedSavedCnt:I

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/hwcamera/Camera$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedCnt:I

.field private mStop:Z

.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1714
    iput-object p1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1710
    iput v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    .line 1711
    iput v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mNeedSavedCnt:I

    .line 1715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 1716
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera$ImageSaver;->start()V

    .line 1717
    return-void
.end method

.method private storeImage([BLandroid/location/Location;IJI)V
    .locals 21
    .parameter "data"
    .parameter "loc"
    .parameter "width"
    .parameter "dateTaken"
    .parameter "previewWidth"

    .prologue
    .line 1840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1843
    .local v12, t1:J
    const/4 v10, 0x1

    .line 1844
    .local v10, mIsNeedRecord:Z
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v2, v5, :cond_4

    .line 1845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTWIMG_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1846
    .local v4, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getRewindPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1847
    .local v3, dirPath:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1857
    :goto_0
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 1858
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2400(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 1859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v5, 0x0

    #setter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v2, v5}, Lcom/android/hwcamera/Camera;->access$2402(Lcom/android/hwcamera/Camera;I)I

    .line 1862
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v8

    .line 1863
    .local v8, orientation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$8500(Lcom/android/hwcamera/Camera;)Landroid/content/ContentResolver;

    move-result-object v2

    move-wide/from16 v5, p4

    move-object/from16 v7, p2

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v10}, Lcom/android/hwcamera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;I[BZ)Landroid/net/Uri;

    move-result-object v20

    .line 1865
    .local v20, uri:Landroid/net/Uri;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1867
    .local v14, t2:J
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PictureRemaining$Key;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$8700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PictureRemaining;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PictureRemaining$Key;

    move-result-object v5

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-virtual {v2, v5, v6}, Lcom/android/hwcamera/PictureRemaining;->setSizeOfOnePic(Lcom/android/hwcamera/PictureRemaining$Key;I)V

    .line 1871
    :cond_1
    sub-long/2addr v14, v12

    .line 1872
    if-eqz v20, :cond_2

    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/hwcamera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1876
    :cond_2
    const-string v2, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Flow] storeImage, write jpegdata to file time= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->mNeedSavedCnt:I

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_3

    .line 1886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1887
    .local v16, t3:J
    const/16 v2, 0x10

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v8, v2, v1}, Lcom/android/hwcamera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v11

    .line 1889
    .local v11, t:Lcom/android/hwcamera/Thumbnail;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1890
    .local v18, t4:J
    sub-long v18, v18, v16

    .line 1891
    const-string v2, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Flow] storeImage, CreateThumbnail() time ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v2, v11}, Lcom/android/hwcamera/Camera;->access$4002(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->requestUpdateThumbnail(Lcom/android/hwcamera/Thumbnail;)V
    invoke-static {v2, v11}, Lcom/android/hwcamera/Camera;->access$8800(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)V

    .line 1895
    .end local v11           #t:Lcom/android/hwcamera/Thumbnail;
    .end local v16           #t3:J
    .end local v18           #t4:J
    :cond_3
    return-void

    .line 1848
    .end local v3           #dirPath:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v8           #orientation:I
    .end local v14           #t2:J
    .end local v20           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 1849
    const-string v2, "%s_%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ACTION_"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1850
    .restart local v4       #title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getActionPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1851
    .restart local v3       #dirPath:Ljava/lang/String;
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1853
    .end local v3           #dirPath:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_5
    invoke-static/range {p4 .. p5}, Lcom/android/hwcamera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v4

    .line 1854
    .restart local v4       #title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1855
    .restart local v3       #dirPath:Ljava/lang/String;
    const/4 v10, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public addImage([BLandroid/location/Location;I)V
    .locals 3
    .parameter "data"
    .parameter "loc"
    .parameter "width"

    .prologue
    const/4 v1, 0x0

    .line 1721
    new-instance v0, Lcom/android/hwcamera/Camera$SaveRequest;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/Camera$SaveRequest;-><init>(Lcom/android/hwcamera/Camera$1;)V

    .line 1722
    .local v0, r:Lcom/android/hwcamera/Camera$SaveRequest;
    iput-object p1, v0, Lcom/android/hwcamera/Camera$SaveRequest;->data:[B

    .line 1723
    if-nez p2, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/android/hwcamera/Camera$SaveRequest;->loc:Landroid/location/Location;

    .line 1724
    iput p3, v0, Lcom/android/hwcamera/Camera$SaveRequest;->width:I

    .line 1725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/hwcamera/Camera$SaveRequest;->dateTaken:J

    .line 1726
    iget-object v1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$3500(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/hwcamera/Camera$SaveRequest;->previewWidth:I

    .line 1727
    monitor-enter p0

    .line 1728
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_1

    .line 1730
    :try_start_1
    const-string v1, "Camera"

    const-string v2, "ImageSaver warrning! queue is biger than 15!waiting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1732
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1723
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 1736
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1737
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1738
    monitor-exit p0

    .line 1739
    return-void

    .line 1738
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1803
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera$ImageSaver;->waitDone()V

    .line 1804
    monitor-enter p0

    .line 1805
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mStop:Z

    .line 1806
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1807
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1809
    :try_start_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1813
    :goto_0
    return-void

    .line 1807
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1810
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAllImageSaved()Z
    .locals 1

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public resetSavedPictureCnt(I)V
    .locals 2
    .parameter "needSaveCnt"

    .prologue
    const/4 v1, 0x0

    .line 1821
    iput v1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    .line 1822
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$2402(Lcom/android/hwcamera/Camera;I)I

    .line 1823
    iput p1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mNeedSavedCnt:I

    .line 1824
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    .line 1746
    :cond_0
    :goto_0
    monitor-enter p0

    .line 1747
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1748
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1751
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mStop:Z

    if-eqz v0, :cond_1

    .line 1752
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1786
    return-void

    .line 1755
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1759
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1762
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1761
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/hwcamera/Camera$SaveRequest;

    .line 1762
    .local v7, r:Lcom/android/hwcamera/Camera$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1764
    .local v8, t1:J
    iget-object v0, v7, Lcom/android/hwcamera/Camera$SaveRequest;->data:[B

    if-eqz v0, :cond_3

    .line 1765
    iget-object v1, v7, Lcom/android/hwcamera/Camera$SaveRequest;->data:[B

    iget-object v2, v7, Lcom/android/hwcamera/Camera$SaveRequest;->loc:Landroid/location/Location;

    iget v3, v7, Lcom/android/hwcamera/Camera$SaveRequest;->width:I

    iget-wide v4, v7, Lcom/android/hwcamera/Camera$SaveRequest;->dateTaken:J

    iget v6, v7, Lcom/android/hwcamera/Camera$SaveRequest;->previewWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/hwcamera/Camera$ImageSaver;->storeImage([BLandroid/location/Location;IJI)V

    .line 1769
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1770
    .local v10, t2:J
    sub-long/2addr v10, v8

    .line 1771
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] StoreImage total time= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    monitor-enter p0

    .line 1773
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, v7, Lcom/android/hwcamera/Camera$SaveRequest;->data:[B

    .line 1774
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1775
    iget v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    .line 1777
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1778
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1779
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1780
    iget v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    iget v1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mNeedSavedCnt:I

    if-lt v0, v1, :cond_0

    .line 1781
    const-string v0, "Camera"

    const-string v1, "[Flow] All Image saved!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1767
    .end local v10           #t2:J
    :cond_3
    const-string v0, "Camera"

    const-string v1, "storeImage but jpeg data is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1778
    .restart local v10       #t2:J
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 1756
    .end local v7           #r:Lcom/android/hwcamera/Camera$SaveRequest;
    .end local v8           #t1:J
    .end local v10           #t2:J
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public updateThumbnail(Lcom/android/hwcamera/Thumbnail;)V
    .locals 2
    .parameter "thumbnail"

    .prologue
    .line 1829
    if-eqz p1, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1831
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0, p1}, Lcom/android/hwcamera/Camera;->access$4002(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 1832
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$8400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/Review;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/Review;->setUri(Landroid/net/Uri;)V

    .line 1833
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$4400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$4000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1835
    :cond_0
    return-void
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 1790
    monitor-enter p0

    .line 1791
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1793
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1794
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1798
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 1799
    return-void

    .line 1798
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
