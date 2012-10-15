.class public final Lcom/android/server/LightsService$Light;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Light"
.end annotation


# instance fields
.field private mBrightness:I

.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private mPowerSavingMode:Z

.field private mPowerSavingSelect:Z

.field private mPowerSavingValue:I

.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;I)V
    .locals 5
    .parameter
    .parameter "id"

    .prologue
    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v3, p0, Lcom/android/server/LightsService$Light;->mPowerSavingSelect:Z

    .line 182
    iput-boolean v3, p0, Lcom/android/server/LightsService$Light;->mPowerSavingMode:Z

    .line 183
    iput v4, p0, Lcom/android/server/LightsService$Light;->mPowerSavingValue:I

    .line 66
    iput p2, p0, Lcom/android/server/LightsService$Light;->mId:I

    .line 68
    const-string v0, "true"

    const-string v1, "ro.config.PowerSavingMode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService$Light;->mPowerSavingMode:Z

    .line 70
    const-string v0, "ro.config.PowerSavingVaule"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/LightsService$Light;->mPowerSavingValue:I

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/LightsService$Light;->mPowerSavingMode:Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LightsService$Light;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/LightsService$Light;->stopFlashing()V

    return-void
.end method

.method private getPowerSavingBright(I)I
    .locals 2
    .parameter "bright"

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-boolean v0, p0, Lcom/android/server/LightsService$Light;->mPowerSavingMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/LightsService$Light;->mPowerSavingSelect:Z

    if-ne v0, v1, :cond_0

    .line 137
    const/16 v0, 0x23

    if-ge p1, v0, :cond_1

    .line 151
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 140
    .restart local p1
    :cond_1
    const/16 v0, 0x6e

    if-ge p1, v0, :cond_2

    .line 141
    add-int/lit8 v0, p1, -0x23

    iget v1, p0, Lcom/android/server/LightsService$Light;->mPowerSavingValue:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    sub-int/2addr p1, v0

    goto :goto_0

    .line 143
    :cond_2
    const/16 v0, 0xb9

    if-ge p1, v0, :cond_0

    .line 144
    rsub-int v0, p1, 0xb9

    iget v1, p0, Lcom/android/server/LightsService$Light;->mPowerSavingValue:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    sub-int/2addr p1, v0

    goto :goto_0
.end method

.method private setLightLocked(IIIII)V
    .locals 7
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"
    .parameter "brightnessMode"

    .prologue
    .line 162
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    if-eq p4, v0, :cond_1

    .line 165
    :cond_0
    iput p1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    .line 166
    iput p2, p0, Lcom/android/server/LightsService$Light;->mMode:I

    .line 167
    iput p3, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    .line 168
    iput p4, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    .line 169
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$100(Lcom/android/server/LightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$200(IIIIIII)V

    .line 171
    :cond_1
    return-void
.end method

.method private stopFlashing()V
    .locals 6

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget v1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 158
    monitor-exit p0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .prologue
    .line 112
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/LightsService$Light;->pulse(II)V

    .line 113
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .parameter "color"
    .parameter "onMS"

    .prologue
    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/LightsService$Light;->mFlashing:Z

    if-nez v0, :cond_0

    .line 118
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 119
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$000(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$000(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    :cond_0
    monitor-exit p0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 80
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .parameter "brightness"
    .parameter "brightnessMode"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/LightsService$Light;->mBrightness:I

    .line 85
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-nez v0, :cond_0

    .line 86
    const-string v0, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBrightness brightness1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/LightsService$Light;->getPowerSavingBright(I)I

    move-result p1

    .line 88
    const-string v0, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerSaving brightness2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    monitor-enter p0

    .line 92
    and-int/lit16 v1, p1, 0xff

    .line 93
    .local v1, color:I
    const/high16 v0, -0x100

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 94
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 107
    monitor-exit p0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPowerSaving(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/server/LightsService$Light;->mPowerSavingSelect:Z

    .line 133
    iget v0, p0, Lcom/android/server/LightsService$Light;->mBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 134
    return-void
.end method

.method public turnOff()V
    .locals 6

    .prologue
    .line 125
    monitor-enter p0

    .line 126
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 127
    monitor-exit p0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
