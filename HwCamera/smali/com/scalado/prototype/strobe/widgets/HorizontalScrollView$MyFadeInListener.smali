.class Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeInListener;
.super Ljava/lang/Object;
.source "HorizontalScrollView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFadeInListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;


# direct methods
.method private constructor <init>(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeInListener;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeInListener;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    const/4 v1, 0x4

    #setter for: Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mState:I
    invoke-static {v0, v1}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->access$202(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;I)I

    .line 207
    const-string v0, "BottomBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd FadeIn mFadeOutRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeInListener;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    #getter for: Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFadeOutRequest:Z
    invoke-static {v2}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->access$300(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeInListener;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeInListener;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    invoke-virtual {v0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 215
    const-string v0, "BottomBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd FadeIn mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeInListener;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    #getter for: Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mState:I
    invoke-static {v2}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->access$200(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 220
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 223
    const-string v0, "BottomBar"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method
