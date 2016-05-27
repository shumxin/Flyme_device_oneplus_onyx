.class Lcom/oppo/widget/OppoMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "OppoMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemVisible:Z = true

.field private static final defaultItemWeight:F = 1.0f


# instance fields
.field private groupEnabled:Z

.field private groupVisible:Z

.field private itemActionProvider:Landroid/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemCheckable:I

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemScrollDownType:I

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private itemWeight:F

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/oppo/widget/OppoMenuInflater;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoMenuInflater;Landroid/view/Menu;)V
    .locals 0
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 300
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMenuInflater$MenuState;->resetGroup()V

    .line 301
    return-void
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 415
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    # getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 416
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 417
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 421
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 418
    :catch_0
    move-exception v2

    .line 419
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OppoMenuInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot instantiate class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItem()Lcom/oppo/widget/OppoMenuItem;
    .locals 6

    .prologue
    .line 351
    new-instance v2, Lcom/oppo/widget/OppoMenuItemImpl;

    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    # getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oppo/widget/OppoMenuItemImpl;-><init>(Landroid/content/Context;)V

    .line 353
    .local v2, "item":Lcom/oppo/widget/OppoMenuItem;
    iget v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemId:I

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setItemId(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 356
    iget v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemWeight:F

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setWeight(F)Lcom/oppo/widget/OppoMenuItem;

    .line 357
    iget v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemScrollDownType:I

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setScrollDownType(I)Lcom/oppo/widget/OppoMenuItem;

    .line 359
    iget v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v3, :cond_0

    .line 360
    iget v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setShowAsAction(I)V

    .line 363
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 364
    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    # getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 368
    :cond_1
    new-instance v3, Lcom/oppo/widget/OppoMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    # getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/oppo/widget/OppoMenuInflater$InflatedOnMenuItemClickListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 388
    :cond_2
    const/4 v1, 0x0

    .line 389
    .local v1, "actionViewSpecified":Z
    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 390
    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    # getter for: Lcom/oppo/widget/OppoMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    invoke-static {}, Lcom/oppo/widget/OppoMenuInflater;->access$300()[Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    # getter for: Lcom/oppo/widget/OppoMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;
    invoke-static {v5}, Lcom/oppo/widget/OppoMenuInflater;->access$400(Lcom/oppo/widget/OppoMenuInflater;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/oppo/widget/OppoMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 392
    .local v0, "actionView":Landroid/view/View;
    invoke-interface {v2, v0}, Lcom/oppo/widget/OppoMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 393
    const/4 v1, 0x1

    .line 395
    .end local v0    # "actionView":Landroid/view/View;
    :cond_3
    iget v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v3, :cond_4

    .line 396
    if-nez v1, :cond_6

    .line 397
    iget v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 398
    const/4 v1, 0x1

    .line 404
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    if-eqz v3, :cond_5

    .line 405
    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 408
    :cond_5
    return-object v2

    .line 400
    :cond_6
    const-string v3, "OppoMenuInflater"

    const-string v4, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 312
    iget-object v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    # getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/R$styleable;->MenuItem:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 314
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    # getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/R$styleable;->LinearLayout_Layout:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 317
    .local v1, "b":Landroid/content/res/TypedArray;
    iget-object v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    # getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Loppo/R$styleable;->OppoOptionMenuBar:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 319
    .local v2, "c":Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemId:I

    .line 320
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 321
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemIconResId:I

    .line 322
    const/4 v5, 0x4

    iget-boolean v6, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemVisible:Z

    .line 323
    iget-boolean v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemEnabled:Z

    .line 325
    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemWeight:F

    .line 327
    const/4 v5, 0x6

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemScrollDownType:I

    .line 330
    const/16 v5, 0xd

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemShowAsAction:I

    .line 332
    iget-object v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 333
    .local v3, "hasActionProvider":Z
    :goto_0
    if-eqz v3, :cond_1

    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 334
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    # getter for: Lcom/oppo/widget/OppoMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    invoke-static {}, Lcom/oppo/widget/OppoMenuInflater;->access$100()[Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    # getter for: Lcom/oppo/widget/OppoMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;
    invoke-static {v6}, Lcom/oppo/widget/OppoMenuInflater;->access$200(Lcom/oppo/widget/OppoMenuInflater;)[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/oppo/widget/OppoMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ActionProvider;

    iput-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    .line 344
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 346
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 347
    return-void

    .end local v3    # "hasActionProvider":Z
    :cond_0
    move v3, v4

    .line 332
    goto :goto_0

    .line 337
    .restart local v3    # "hasActionProvider":Z
    :cond_1
    if-eqz v3, :cond_2

    .line 338
    const-string v4, "OppoMenuInflater"

    const-string v5, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    goto :goto_1
.end method

.method public resetGroup()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupVisible:Z

    .line 305
    iput-boolean v0, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupEnabled:Z

    .line 306
    return-void
.end method
