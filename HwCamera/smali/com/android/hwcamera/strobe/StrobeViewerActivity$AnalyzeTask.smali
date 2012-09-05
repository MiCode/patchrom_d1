.class Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;
.super Landroid/os/AsyncTask;
.source "StrobeViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnalyzeTask"
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
    .line 229
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Lcom/android/hwcamera/strobe/SessionStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/strobe/SessionStore;->canAnalyze()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Lcom/android/hwcamera/strobe/SessionStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFirstFrame:I
    invoke-static {v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$900(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastFrame:I
    invoke-static {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1000(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastFrame:I
    invoke-static {v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1000(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFirstFrame:I
    invoke-static {v4}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$900(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/hwcamera/strobe/SessionStore;->analyze(IIILcom/android/hwcamera/strobe/SessionStore$AnalysisObserver;)V

    .line 245
    :cond_0
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 229
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->analysisCompleted()V
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1400(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    .line 250
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->clearBottomBar()V
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1200(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    .line 233
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->clearStrobeObjects()V
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1300(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    .line 234
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Z)V

    .line 235
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->showSpinner()V
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$600(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    .line 236
    return-void
.end method
