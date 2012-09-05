.class Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;
.super Landroid/os/AsyncTask;
.source "StrobeViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadStrobeObjectThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;",
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
    .line 254
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 254
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 20
    .parameter "params"

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 260
    .local v14, res:Landroid/content/res/Resources;
    const v2, 0x7f0a000f

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    .line 261
    .local v16, topMargin:F
    const v2, 0x7f0a000e

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v7, 0x4000

    mul-float v7, v7, v16

    sub-float/2addr v2, v7

    float-to-int v11, v2

    .line 262
    .local v11, height:I
    move/from16 v17, v11

    .line 264
    .local v17, width:I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v7, -0x2

    invoke-direct {v4, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, v16

    float-to-int v2, v0

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 267
    const v2, 0x7f0a0010

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 270
    const/4 v2, 0x2

    new-array v12, v2, [Landroid/graphics/drawable/Drawable;

    .line 272
    .local v12, layers:[Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_1

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    .line 275
    .local v5, object:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v0, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 279
    .local v13, objThumb:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getRect()Lcom/scalado/base/Rect;

    move-result-object v9

    .line 280
    .local v9, cropRect:Lcom/scalado/base/Rect;
    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v7

    if-le v2, v7, :cond_0

    .line 281
    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 286
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/android/hwcamera/strobe/SessionStore;
    invoke-static {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$700(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Lcom/android/hwcamera/strobe/SessionStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/strobe/SessionStore;->getAnalyzedSessions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5}, Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/scalado/caps/Session;

    .line 288
    .local v15, session:Lcom/scalado/caps/Session;
    new-instance v8, Lcom/scalado/caps/filter/Crop;

    invoke-direct {v8, v15}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    .line 289
    .local v8, crop:Lcom/scalado/caps/filter/Crop;
    invoke-virtual {v8, v9}, Lcom/scalado/caps/filter/Crop;->set(Lcom/scalado/base/Rect;)V

    .line 291
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->renderSessionToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V
    invoke-static {v2, v15, v13}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_2
    invoke-virtual {v8}, Lcom/scalado/caps/filter/Crop;->abort()V

    .line 298
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 300
    .local v3, stateList:Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x0

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v14, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v7, v12, v2

    .line 301
    const/4 v2, 0x1

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const v18, 0x7f090010

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v7, v12, v2

    .line 304
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v7, 0x0

    const v18, 0x10100a1

    aput v18, v2, v7

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v7, v12}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v2, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 306
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v7, 0x0

    const v18, 0x10100a7

    aput v18, v2, v7

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v7, v12}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v2, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 309
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    const/4 v7, 0x0

    aget-object v7, v12, v7

    invoke-virtual {v3, v2, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 310
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v2, Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;-><init>(Landroid/graphics/drawable/StateListDrawable;Landroid/widget/LinearLayout$LayoutParams;Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;ILcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V

    aput-object v2, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->publishProgress([Ljava/lang/Object;)V

    .line 272
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 283
    .end local v3           #stateList:Landroid/graphics/drawable/StateListDrawable;
    .end local v8           #crop:Lcom/scalado/caps/filter/Crop;
    .end local v15           #session:Lcom/scalado/caps/Session;
    :cond_0
    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/scalado/base/Rect;->setHeight(I)V

    goto/16 :goto_1

    .line 292
    .restart local v8       #crop:Lcom/scalado/caps/filter/Crop;
    .restart local v15       #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v10

    .line 294
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 312
    .end local v5           #object:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v8           #crop:Lcom/scalado/caps/filter/Crop;
    .end local v9           #cropRect:Lcom/scalado/base/Rect;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v13           #objThumb:Landroid/graphics/Bitmap;
    .end local v15           #session:Lcom/scalado/caps/Session;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 254
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->hideSpinner()V
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$800(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    .line 334
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->showControls()V
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    .line 335
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$500(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Z)V

    .line 336
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)V
    .locals 4
    .parameter "progressObjects"

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 319
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 320
    .local v1, v:Landroid/widget/ImageView;
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 322
    .local v0, progressObject:Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;
    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->access$1800(Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mStrobeObject:Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->access$1900(Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)Lcom/android/hwcamera/strobe/SessionStore$StrobeObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 324
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mThumbObjectClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2000(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mIndex:I
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->access$2100(Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v3}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2200(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 327
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    #getter for: Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->access$2300(Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 254
    check-cast p1, [Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->onProgressUpdate([Lcom/android/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)V

    return-void
.end method
