.class Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyImageViewTouchListener"
.end annotation


# instance fields
.field private mChildRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 923
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->mChildRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 923
    invoke-direct {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v8, 0x4120

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 928
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 929
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    move v4, v5

    .line 1003
    :cond_0
    :goto_0
    return v4

    .line 931
    :pswitch_0
    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    #setter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastX:F
    invoke-static {v5, v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3502(Lcom/android/hwcamera/strobe/StrobeViewerActivity;F)F

    .line 932
    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    #setter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastY:F
    invoke-static {v5, v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3602(Lcom/android/hwcamera/strobe/StrobeViewerActivity;F)F

    goto :goto_0

    .line 935
    :pswitch_1
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastX:F
    invoke-static {v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastY:F
    invoke-static {v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3600(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_0

    .line 939
    :cond_1
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    #setter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastX:F
    invoke-static {v6, v7}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3502(Lcom/android/hwcamera/strobe/StrobeViewerActivity;F)F

    .line 940
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    #setter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mLastY:F
    invoke-static {v6, v7}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3602(Lcom/android/hwcamera/strobe/StrobeViewerActivity;F)F

    .line 944
    :pswitch_2
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I
    invoke-static {v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)[I

    move-result-object v6

    if-nez v6, :cond_2

    move v4, v5

    .line 945
    goto :goto_0

    .line 947
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;
    invoke-static {v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3800(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 948
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I
    invoke-static {v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)[I

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 952
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;
    invoke-static {v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3800(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I
    invoke-static {v7}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)[I

    move-result-object v7

    aget v7, v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 954
    .local v0, ds:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 955
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->mChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 956
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->mChildRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 958
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    .line 959
    .local v3, tag:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v7}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2200(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 960
    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v7}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v8}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2200(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 965
    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v5, v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2202(Lcom/android/hwcamera/strobe/StrobeViewerActivity;I)I

    .line 967
    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;
    invoke-static {v5}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Lcom/android/hwcamera/strobe/SessionStore;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2200(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/strobe/SessionStore;->setBackgroundIndex(I)V

    .line 969
    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v7}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2200(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 975
    :try_start_0
    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v6

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->loadBackgroundImage(I)V
    invoke-static {v5, v6}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3900(Lcom/android/hwcamera/strobe/StrobeViewerActivity;I)V

    .line 976
    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->focusSortStrobeObjects()V
    invoke-static {v5}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$4000(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    .line 977
    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->setUpOpacityGradients()V
    invoke-static {v5}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$4100(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    .line 978
    iget-object v5, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->applyOpacityGradients()V
    invoke-static {v5}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$3400(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 979
    :catch_0
    move-exception v1

    .line 981
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 947
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #tag:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v0           #ds:Landroid/view/View;
    .end local v2           #i:I
    :cond_4
    move v4, v5

    .line 1003
    goto/16 :goto_0

    .line 929
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
