.class Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;
.super Landroid/os/AsyncTask;
.source "StrobeViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadSequenceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "preloaded"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;
    invoke-static {v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Lcom/android/hwcamera/strobe/SessionStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/strobe/SessionStore;->loadPreloadeSequence(Landroid/content/res/AssetManager;)V

    .line 204
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "load"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;
    invoke-static {v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Lcom/android/hwcamera/strobe/SessionStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "load"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/strobe/SessionStore;->loadSequence(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    const-string v1, "StrobeViewerActivity"

    const-string v2, "Exception while loading Sequence images."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Lcom/android/hwcamera/strobe/SessionStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/strobe/SessionStore;->getAllSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    const-string v0, "StrobeViewerActivity"

    const-string v1, "no image found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    const v1, 0x7f0c012e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->hideSpinner()V
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$800(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "startFrame"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFirstFrame:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$902(Lcom/android/hwcamera/strobe/StrobeViewerActivity;I)I

    .line 218
    const-string v0, "StrobeViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFirstFrame = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFirstFrame:I
    invoke-static {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$900(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "endFrame"

    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;
    invoke-static {v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Lcom/android/hwcamera/strobe/SessionStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/strobe/SessionStore;->getAllSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastFrame:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1002(Lcom/android/hwcamera/strobe/StrobeViewerActivity;I)I

    .line 221
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFirstFrame:I
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$900(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFirstFrame:I
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$900(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastFrame:I
    invoke-static {v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1000(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 222
    const-string v0, "StrobeViewerActivity"

    const-string v1, "set state STATE_ANALYZING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    const/4 v1, 0x4

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->setState(I)Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1100(Lcom/android/hwcamera/strobe/StrobeViewerActivity;I)Z

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Z)V

    .line 186
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->showSpinner()V
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$600(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    .line 187
    return-void
.end method
