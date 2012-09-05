.class Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Lcom/android/hwcamera/strobe/SessionStore$RenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRenderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onStrobeRenderCompleted(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "strobeSession"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->doSaveImage(Lcom/scalado/caps/Session;)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$4200(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/caps/Session;)V

    .line 1043
    return-void
.end method
