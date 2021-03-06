.class Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeThumbnailThread"
.end annotation


# static fields
.field private static final QUEUE_LIMIT:I = 0xf


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/hwcamera/Camera$DecodeBurstRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->this$0:Lcom/android/hwcamera/Camera;

    .line 1503
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->mQueue:Ljava/util/ArrayList;

    .line 1505
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->start()V

    .line 1506
    return-void
.end method


# virtual methods
.method public addDecodeThumbnail([BI)V
    .locals 3
    .parameter "data"
    .parameter "width"

    .prologue
    .line 1510
    new-instance v0, Lcom/android/hwcamera/Camera$DecodeBurstRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/hwcamera/Camera$DecodeBurstRequest;-><init>(Lcom/android/hwcamera/Camera$1;)V

    .line 1511
    .local v0, r:Lcom/android/hwcamera/Camera$DecodeBurstRequest;
    iput-object p1, v0, Lcom/android/hwcamera/Camera$DecodeBurstRequest;->data:[B

    .line 1512
    iput p2, v0, Lcom/android/hwcamera/Camera$DecodeBurstRequest;->width:I

    .line 1513
    iget-object v1, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$3500(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/hwcamera/Camera$DecodeBurstRequest;->previewWidth:I

    .line 1514
    monitor-enter p0

    .line 1515
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 1517
    :try_start_1
    const-string v1, "Camera"

    const-string v2, "Decode Thumbnail queue more than QUEUE_LIMIT: waitting!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1519
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1523
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1525
    monitor-exit p0

    .line 1526
    return-void

    .line 1525
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
    .line 1597
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->waitDone()V

    .line 1598
    monitor-enter p0

    .line 1599
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->mStop:Z

    .line 1600
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1601
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1603
    :try_start_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1607
    :goto_0
    return-void

    .line 1601
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1604
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1532
    :goto_0
    monitor-enter p0

    .line 1533
    :try_start_0
    iget-object v8, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1534
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1535
    iget-boolean v8, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->mStop:Z

    if-eqz v8, :cond_0

    .line 1536
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    return-void

    .line 1540
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1544
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1547
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 1546
    :cond_1
    :try_start_3
    iget-object v8, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->mQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/Camera$DecodeBurstRequest;

    .line 1547
    .local v4, r:Lcom/android/hwcamera/Camera$DecodeBurstRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1549
    .local v6, t1:Ljava/lang/Long;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1550
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    iget v8, v4, Lcom/android/hwcamera/Camera$DecodeBurstRequest;->width:I

    int-to-double v8, v8

    iget v10, v4, Lcom/android/hwcamera/Camera$DecodeBurstRequest;->previewWidth:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 1551
    .local v5, ratio:I
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 1553
    .local v1, inSampleSize:I
    const/4 v8, 0x3

    if-le v1, v8, :cond_4

    .line 1556
    const/16 v8, 0x8

    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1560
    :goto_2
    const/4 v0, 0x0

    .line 1561
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v8, v4, Lcom/android/hwcamera/Camera$DecodeBurstRequest;->data:[B

    if-eqz v8, :cond_2

    .line 1562
    iget-object v8, v4, Lcom/android/hwcamera/Camera$DecodeBurstRequest;->data:[B

    iget-object v9, v4, Lcom/android/hwcamera/Camera$DecodeBurstRequest;->data:[B

    array-length v9, v9

    invoke-static {v8, v12, v9, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1564
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1565
    .local v7, t2:Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1566
    const-string v8, "Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DecodeThumbnail create bitmap time ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bitmap="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    if-eqz v0, :cond_3

    .line 1568
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1569
    .local v2, msg:Landroid/os/Message;
    const/16 v8, 0xd

    iput v8, v2, Landroid/os/Message;->what:I

    .line 1570
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1571
    iget-object v8, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1574
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    monitor-enter p0

    .line 1575
    const/4 v8, 0x0

    :try_start_4
    iput-object v8, v4, Lcom/android/hwcamera/Camera$DecodeBurstRequest;->data:[B

    .line 1576
    iget-object v8, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->mQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1577
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1578
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 1558
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #t2:Ljava/lang/Long;
    :cond_4
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    .line 1541
    .end local v1           #inSampleSize:I
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #r:Lcom/android/hwcamera/Camera$DecodeBurstRequest;
    .end local v5           #ratio:I
    .end local v6           #t1:Ljava/lang/Long;
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

.method public updateBGAndThumbnailUI(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 1610
    if-eqz p1, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1614
    iget-object v0, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$4400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1615
    iget-object v0, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$4400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setPressed(Z)V

    .line 1616
    iget-object v0, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$4400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$7700(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1618
    :cond_0
    return-void
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 1584
    monitor-enter p0

    .line 1585
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1587
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1588
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1592
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 1593
    return-void

    .line 1592
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
