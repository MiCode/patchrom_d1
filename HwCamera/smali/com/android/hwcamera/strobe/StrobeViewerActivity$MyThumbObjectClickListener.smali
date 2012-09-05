.class Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyThumbObjectClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 912
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    .line 913
    .local v0, object:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3300(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 914
    .local v1, objectView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 915
    invoke-virtual {v0}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->setVisible(Z)V

    .line 916
    invoke-virtual {v0}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 919
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->applyOpacityGradients()V
    invoke-static {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3400(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    .line 920
    return-void

    :cond_0
    move v2, v3

    .line 915
    goto :goto_0

    .line 916
    :cond_1
    const/4 v3, 0x4

    goto :goto_1
.end method
