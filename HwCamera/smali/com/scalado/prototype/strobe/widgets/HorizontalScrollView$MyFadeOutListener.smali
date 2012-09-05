.class Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeOutListener;
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
    name = "MyFadeOutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;


# direct methods
.method private constructor <init>(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeOutListener;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeOutListener;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeOutListener;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    const/4 v1, 0x3

    #setter for: Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mState:I
    invoke-static {v0, v1}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->access$202(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;I)I

    .line 233
    iget-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeOutListener;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    invoke-virtual {v0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 234
    const-string v0, "BottomBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd FadeOut mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyFadeOutListener;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    #getter for: Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mState:I
    invoke-static {v2}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->access$200(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 238
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 241
    const-string v0, "BottomBar"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method
