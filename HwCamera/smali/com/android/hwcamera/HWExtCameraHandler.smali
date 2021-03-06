.class public Lcom/android/hwcamera/HWExtCameraHandler;
.super Landroid/os/Handler;
.source "HWExtCameraHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/HWExtCameraHandler$Listener;
    }
.end annotation


# static fields
.field private static final MAX_FACES:I = 0x14

.field private static final MSG_F2A_JPEG_PROCESS_BEGIN:I = 0x107

.field private static final MSG_FACES_DETECTED_DATA:I = 0x101

.field private static final MSG_PANORAMA_CAPTURE_DONE:I = 0x104

.field private static final MSG_PANORAMA_DIRECTION:I = 0x103

.field private static final MSG_PANORAMA_DONE:I = 0x105

.field private static final MSG_PANORAMA_INTERMEDIATE_CAPTURE:I = 0x106

.field private static final MSG_PANORAMA_TRACKER:I = 0x102

.field private static final NO_FACE_DETECTED:I


# instance fields
.field private mBiggestSmileScore:I

.field private mBlinkState:Z

.field private mFaceCount:I

.field private mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

.field private mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

.field private mIsNeedToHideFace:Z

.field private mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

.field private mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

.field private mPreviousTraceFaceId:I

.field private mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/HWExtCameraHandler$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 26
    iput v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    .line 27
    iput-boolean v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBlinkState:Z

    .line 28
    iput-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 29
    iput-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 30
    new-instance v0, Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-direct {v0}, Lcom/android/hwcamera/hwui/FaceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 31
    iput-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    .line 32
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/hwcamera/hwui/FaceInfo;

    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousTraceFaceId:I

    .line 34
    iput v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBiggestSmileScore:I

    .line 35
    iput-boolean v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mIsNeedToHideFace:Z

    .line 53
    iput-object p1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    .line 54
    return-void
.end method

.method private clearPreviousFocusFaceInfo()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceInfo;->initFace()V

    .line 278
    return-void
.end method

.method private clearTraceFace()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 130
    return-void
.end method

.method private findBiggestFace()Lcom/android/hwcamera/hwui/FaceInfo;
    .locals 6

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, biggestFaceArea:I
    const/4 v2, 0x0

    .line 184
    .local v2, currentFaceArea:I
    const/4 v1, 0x0

    .line 186
    .local v1, biggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;
    const/4 v4, 0x0

    .line 187
    .local v4, index:I
    const/4 v3, 0x0

    .line 188
    .local v3, faceInfo:Lcom/android/hwcamera/hwui/FaceInfo;
    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-ge v4, v5, :cond_1

    .line 189
    iget-object v5, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v3, v5, v4

    .line 190
    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceArea()I

    move-result v2

    .line 191
    if-le v2, v0, :cond_0

    .line 192
    move v0, v2

    .line 193
    move-object v1, v3

    .line 188
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_1
    return-object v1
.end method

.method private findFocusFace()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->isPreviousFocusFaceExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->findBiggestFace()Lcom/android/hwcamera/hwui/FaceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    goto :goto_0
.end method

.method private findTraceFace()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 223
    iget v3, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousTraceFaceId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v2

    .line 226
    :cond_1
    const/4 v0, 0x0

    .line 227
    .local v0, face:Lcom/android/hwcamera/hwui/FaceInfo;
    const/4 v1, 0x0

    .line 228
    .local v1, index:I
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-ge v1, v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v0, v3, v1

    .line 230
    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v3

    iget v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousTraceFaceId:I

    if-ne v3, v4, :cond_2

    .line 232
    monitor-enter p0

    .line 233
    :try_start_0
    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 234
    monitor-exit p0

    .line 235
    const/4 v2, 0x1

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 228
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initFaceList()V
    .locals 2

    .prologue
    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceInfo;->initFace()V

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method

.method private isPreviousFocusFaceExist()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 201
    iget-object v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v3

    .line 205
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v2

    .line 206
    .local v2, previousFocusFaceId:I
    const/4 v0, 0x0

    .line 207
    .local v0, face:Lcom/android/hwcamera/hwui/FaceInfo;
    const/4 v1, 0x0

    .line 208
    .local v1, index:I
    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-ge v1, v4, :cond_0

    .line 209
    iget-object v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v0, v4, v1

    .line 210
    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v3, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/FaceInfo;->getFocusStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/FaceInfo;->setFocusStatus(I)V

    .line 214
    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 215
    monitor-exit p0

    .line 216
    const/4 v3, 0x1

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 208
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private parseFaceData([Landroid/os/Bundle;)V
    .locals 9
    .parameter "faceData"

    .prologue
    .line 251
    const/4 v5, 0x0

    .line 252
    .local v5, index:I
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBiggestSmileScore:I

    .line 253
    move-object v0, p1

    .local v0, arr$:[Landroid/os/Bundle;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v2, v0, v4

    .line 254
    .local v2, face:Landroid/os/Bundle;
    new-instance v3, Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-direct {v3}, Lcom/android/hwcamera/hwui/FaceInfo;-><init>()V

    .line 255
    .local v3, faceinfo:Lcom/android/hwcamera/hwui/FaceInfo;
    const-string v7, "id"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/hwui/FaceInfo;->setFaceId(I)V

    .line 256
    const-string v7, "blinkScore"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/hwui/FaceInfo;->setBlinkPercent(I)V

    .line 257
    const-string v7, "smileScore"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/hwui/FaceInfo;->setSmilePercent(I)V

    .line 258
    const-string v7, "rect"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/hwui/FaceInfo;->setFaceRect(Landroid/graphics/Rect;)V

    .line 264
    const-string v7, "blinkScore"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 265
    .local v1, blink:I
    const/16 v7, 0x46

    if-le v1, v7, :cond_0

    .line 266
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBlinkState:Z

    .line 268
    :cond_0
    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/FaceInfo;->getSmilePercent()I

    move-result v7

    iget v8, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBiggestSmileScore:I

    if-le v7, v8, :cond_1

    .line 269
    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/FaceInfo;->getSmilePercent()I

    move-result v7

    iput v7, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBiggestSmileScore:I

    .line 271
    :cond_1
    iget-object v7, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aput-object v3, v7, v5

    .line 272
    add-int/lit8 v5, v5, 0x1

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    .end local v1           #blink:I
    .end local v2           #face:Landroid/os/Bundle;
    .end local v3           #faceinfo:Lcom/android/hwcamera/hwui/FaceInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method public clearFocusState()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FaceInfo;->setFocusStatus(I)V

    goto :goto_0
.end method

.method public clearPanoramaMessage()V
    .locals 1

    .prologue
    .line 282
    const/16 v0, 0x102

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 283
    const/16 v0, 0x103

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 284
    const/16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 285
    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 286
    const/16 v0, 0x106

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 287
    return-void
.end method

.method public doFaceFocus()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-interface {v0, v1, v2}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->doFaceFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)V

    .line 165
    return-void
.end method

.method public getBlinkState()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBlinkState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 58
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    :pswitch_0
    return-void

    .line 61
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/os/Bundle;

    move-object v0, v1

    check-cast v0, [Landroid/os/Bundle;

    .line 62
    .local v0, faceData:[Landroid/os/Bundle;
    array-length v1, v0

    iput v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    .line 65
    iget v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->canDoFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearPreviousFocusFaceInfo()V

    .line 67
    iget-boolean v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mIsNeedToHideFace:Z

    if-eqz v1, :cond_1

    .line 68
    iput-boolean v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mIsNeedToHideFace:Z

    .line 69
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->hideFace()V

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->resetFaceCount()V

    .line 72
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1, v2}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->smileCapture(I)V

    .line 73
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearTraceFace()V

    goto :goto_0

    .line 77
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-le v1, v3, :cond_3

    .line 78
    iput v3, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    .line 80
    :cond_3
    iput-boolean v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBlinkState:Z

    .line 81
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->initFaceList()V

    .line 82
    invoke-direct {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->parseFaceData([Landroid/os/Bundle;)V

    .line 83
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->findFocusFace()V

    .line 84
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    iget-object v3, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-interface {v1, v2, v3}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->doFaceFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)V

    .line 85
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->findTraceFace()Z

    .line 86
    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBiggestSmileScore:I

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->smileCapture(I)V

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mIsNeedToHideFace:Z

    .line 89
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-interface {v1, v2}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->displayFace([Lcom/android/hwcamera/hwui/FaceInfo;)V

    goto :goto_0

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceInfo;->getSmilePercent()I

    move-result v1

    goto :goto_1

    .line 94
    .end local v0           #faceData:[Landroid/os/Bundle;
    :pswitch_2
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1, p1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->panoramaTracker(Landroid/os/Message;)V

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1, p1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->panoramaDirection(Landroid/os/Message;)V

    goto :goto_0

    .line 114
    :pswitch_4
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->panormaIntermediateCaptureStart()V

    goto :goto_0

    .line 119
    :pswitch_5
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->showProgress()V

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isPointOnFace(Lcom/android/hwcamera/hwui/FaceView;II)Z
    .locals 4
    .parameter "faceView"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-ge v0, v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/hwcamera/hwui/FaceView;->transformFaceCoordinateICS(Lcom/android/hwcamera/hwui/FaceInfo;)Landroid/graphics/RectF;

    move-result-object v1

    .line 154
    .local v1, rect:Landroid/graphics/RectF;
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 156
    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v2

    iput v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousTraceFaceId:I

    .line 157
    const/4 v2, 0x1

    .line 160
    .end local v1           #rect:Landroid/graphics/RectF;
    :goto_1
    return v2

    .line 152
    .restart local v1       #rect:Landroid/graphics/RectF;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v1           #rect:Landroid/graphics/RectF;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeMessage()V
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 138
    return-void
.end method

.method public resetFaceCount()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    .line 149
    return-void
.end method

.method public declared-synchronized setFocusState()V
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 145
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FaceInfo;->setFocusStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
