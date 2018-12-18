.class public Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
.super Ljava/lang/Object;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected adapter:Landroid/widget/ListAdapter;

.field protected alwaysCallInputCallback:Z

.field protected alwaysCallMultiChoiceCallback:Z

.field protected alwaysCallSingleChoiceCallback:Z

.field protected autoDismiss:Z

.field protected backgroundColor:I

.field protected btnSelectorNegative:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected btnSelectorNeutral:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected btnSelectorPositive:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected btnSelectorStacked:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected buttonRippleColor:I

.field protected buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

.field protected cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field protected cancelable:Z

.field protected content:Ljava/lang/CharSequence;

.field protected contentColor:I

.field protected contentColorSet:Z

.field protected contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected contentLineSpacingMultiplier:F

.field protected final context:Landroid/content/Context;

.field protected customView:Landroid/view/View;

.field protected dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected dividerColor:I

.field protected dividerColorSet:Z

.field protected forceStacking:Z

.field protected icon:Landroid/graphics/drawable/Drawable;

.field protected indeterminateIsHorizontalProgress:Z

.field protected indeterminateProgress:Z

.field protected inputAllowEmpty:Z

.field protected inputCallback:Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;

.field protected inputHint:Ljava/lang/CharSequence;

.field protected inputMaxLength:I

.field protected inputMinLength:I

.field protected inputPrefill:Ljava/lang/CharSequence;

.field protected inputRangeErrorColor:I

.field protected inputType:I

.field protected itemColor:I

.field protected itemColorSet:Z

.field protected itemIds:[I

.field protected items:[Ljava/lang/CharSequence;

.field protected itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected keyListener:Landroid/content/DialogInterface$OnKeyListener;

.field protected limitIconToDefaultSize:Z

.field protected listCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

.field protected listCallbackCustom:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

.field protected listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

.field protected listCallbackSingleChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;

.field protected listSelector:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected maxIconSize:I

.field protected mediumFont:Landroid/graphics/Typeface;

.field protected negativeColor:Landroid/content/res/ColorStateList;

.field protected negativeColorSet:Z

.field protected negativeText:Ljava/lang/CharSequence;

.field protected neutralColor:Landroid/content/res/ColorStateList;

.field protected neutralColorSet:Z

.field protected neutralText:Ljava/lang/CharSequence;

.field protected onAnyCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

.field protected onNegativeCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

.field protected onNeutralCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

.field protected onPositiveCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

.field protected positiveColor:Landroid/content/res/ColorStateList;

.field protected positiveColorSet:Z

.field protected positiveText:Ljava/lang/CharSequence;

.field protected progress:I

.field protected progressMax:I

.field protected progressNumberFormat:Ljava/lang/String;

.field protected progressPercentFormat:Ljava/text/NumberFormat;

.field protected regularFont:Landroid/graphics/Typeface;

.field protected selectedIndex:I

.field protected selectedIndices:[Ljava/lang/Integer;

.field protected showListener:Landroid/content/DialogInterface$OnShowListener;

.field protected showMinMax:Z

.field protected theme:Lcom/afollestad/materialdialogs/Theme;

.field protected title:Ljava/lang/CharSequence;

.field protected titleColor:I

.field protected titleColorSet:Z

.field protected titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected widgetColor:I

.field protected widgetColorSet:Z

.field protected wrapCustomViewInScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v9, 0x15

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 375
    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 376
    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 377
    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 378
    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 379
    iput v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonRippleColor:I

    .line 380
    iput v7, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor:I

    .line 381
    iput v7, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    .line 401
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallMultiChoiceCallback:Z

    .line 402
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallSingleChoiceCallback:Z

    .line 403
    sget-object v5, Lcom/afollestad/materialdialogs/Theme;->LIGHT:Lcom/afollestad/materialdialogs/Theme;

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    .line 404
    iput-boolean v8, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable:Z

    .line 405
    const v5, 0x3f99999a    # 1.2f

    iput v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentLineSpacingMultiplier:F

    .line 406
    iput v7, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    .line 407
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    .line 408
    iput-boolean v8, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss:Z

    .line 413
    iput v7, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->maxIconSize:I

    .line 426
    const/4 v5, -0x2

    iput v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress:I

    .line 427
    iput v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressMax:I

    .line 432
    iput v7, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType:I

    .line 434
    iput v7, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMinLength:I

    .line 435
    iput v7, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMaxLength:I

    .line 436
    iput v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputRangeErrorColor:I

    .line 443
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColorSet:Z

    .line 444
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColorSet:Z

    .line 445
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColorSet:Z

    .line 446
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorSet:Z

    .line 447
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColorSet:Z

    .line 448
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorSet:Z

    .line 449
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColorSet:Z

    .line 450
    iput-boolean v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dividerColorSet:Z

    .line 476
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    .line 477
    sget v5, Lcom/afollestad/materialdialogs/R$color;->md_material_blue_600:I

    invoke-static {p1, v5}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 480
    .local v1, "materialBlue":I
    sget v5, Lcom/afollestad/materialdialogs/R$attr;->colorAccent:I

    invoke-static {p1, v5, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    .line 481
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_0

    .line 482
    const v5, 0x1010435

    iget v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {p1, v5, v6}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    .line 485
    :cond_0
    iget v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {p1, v5}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    .line 486
    iget v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {p1, v5}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    .line 487
    iget v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {p1, v5}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, "fallback":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_1

    .line 491
    const v5, 0x101042c

    invoke-static {p1, v5}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    .line 492
    :cond_1
    sget v5, Lcom/afollestad/materialdialogs/R$attr;->md_btn_ripple_color:I

    sget v6, Lcom/afollestad/materialdialogs/R$attr;->colorControlHighlight:I

    invoke-static {p1, v6, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v6

    invoke-static {p1, v5, v6}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonRippleColor:I

    .line 495
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressPercentFormat:Ljava/text/NumberFormat;

    .line 496
    const-string v5, "%1d/%2d"

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressNumberFormat:Ljava/lang/String;

    .line 499
    const v5, 0x1010036

    invoke-static {p1, v5}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v3

    .line 500
    .local v3, "primaryTextColor":I
    invoke-static {v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->isColorDark(I)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/afollestad/materialdialogs/Theme;->LIGHT:Lcom/afollestad/materialdialogs/Theme;

    :goto_0
    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    .line 503
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->checkSingleton()V

    .line 506
    sget v5, Lcom/afollestad/materialdialogs/R$attr;->md_title_gravity:I

    iget-object v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {p1, v5, v6}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveGravityEnum(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 507
    sget v5, Lcom/afollestad/materialdialogs/R$attr;->md_content_gravity:I

    iget-object v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {p1, v5, v6}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveGravityEnum(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 508
    sget v5, Lcom/afollestad/materialdialogs/R$attr;->md_btnstacked_gravity:I

    iget-object v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {p1, v5, v6}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveGravityEnum(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 509
    sget v5, Lcom/afollestad/materialdialogs/R$attr;->md_items_gravity:I

    iget-object v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {p1, v5, v6}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveGravityEnum(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 510
    sget v5, Lcom/afollestad/materialdialogs/R$attr;->md_buttons_gravity:I

    iget-object v6, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {p1, v5, v6}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveGravityEnum(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 512
    sget v5, Lcom/afollestad/materialdialogs/R$attr;->md_medium_font:I

    invoke-static {p1, v5}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "mediumFont":Ljava/lang/String;
    sget v5, Lcom/afollestad/materialdialogs/R$attr;->md_regular_font:I

    invoke-static {p1, v5}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "regularFont":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->typeface(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 516
    iget-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    if-nez v5, :cond_2

    .line 518
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_5

    .line 519
    const-string v5, "sans-serif-medium"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    if-nez v5, :cond_3

    .line 527
    :try_start_1
    const-string v5, "sans-serif"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    :cond_3
    :goto_2
    return-void

    .line 500
    .end local v2    # "mediumFont":Ljava/lang/String;
    .end local v4    # "regularFont":Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/afollestad/materialdialogs/Theme;->DARK:Lcom/afollestad/materialdialogs/Theme;

    goto :goto_0

    .line 521
    .restart local v2    # "mediumFont":Ljava/lang/String;
    .restart local v4    # "regularFont":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v5, "sans-serif"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 522
    :catch_0
    move-exception v5

    goto :goto_1

    .line 528
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private checkSingleton()V
    .locals 2

    .prologue
    .line 534
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->get(Z)Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    move-result-object v1

    if-nez v1, :cond_0

    .line 573
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-static {}, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->get()Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    move-result-object v0

    .line 536
    .local v0, "s":Lcom/afollestad/materialdialogs/internal/ThemeSingleton;
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->darkTheme:Z

    if-eqz v1, :cond_1

    .line 537
    sget-object v1, Lcom/afollestad/materialdialogs/Theme;->DARK:Lcom/afollestad/materialdialogs/Theme;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    .line 538
    :cond_1
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->titleColor:I

    if-eqz v1, :cond_2

    .line 539
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->titleColor:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor:I

    .line 540
    :cond_2
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->contentColor:I

    if-eqz v1, :cond_3

    .line 541
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->contentColor:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    .line 542
    :cond_3
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->positiveColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    .line 543
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->positiveColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    .line 544
    :cond_4
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->neutralColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_5

    .line 545
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->neutralColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    .line 546
    :cond_5
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->negativeColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_6

    .line 547
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->negativeColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    .line 548
    :cond_6
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->itemColor:I

    if-eqz v1, :cond_7

    .line 549
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->itemColor:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColor:I

    .line 550
    :cond_7
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 551
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 552
    :cond_8
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->backgroundColor:I

    if-eqz v1, :cond_9

    .line 553
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->backgroundColor:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor:I

    .line 554
    :cond_9
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->dividerColor:I

    if-eqz v1, :cond_a

    .line 555
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->dividerColor:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dividerColor:I

    .line 556
    :cond_a
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorStacked:I

    if-eqz v1, :cond_b

    .line 557
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorStacked:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorStacked:I

    .line 558
    :cond_b
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->listSelector:I

    if-eqz v1, :cond_c

    .line 559
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->listSelector:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listSelector:I

    .line 560
    :cond_c
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorPositive:I

    if-eqz v1, :cond_d

    .line 561
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorPositive:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorPositive:I

    .line 562
    :cond_d
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorNeutral:I

    if-eqz v1, :cond_e

    .line 563
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorNeutral:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorNeutral:I

    .line 564
    :cond_e
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorNegative:I

    if-eqz v1, :cond_f

    .line 565
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorNegative:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorNegative:I

    .line 566
    :cond_f
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->widgetColor:I

    if-eqz v1, :cond_10

    .line 567
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->widgetColor:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    .line 568
    :cond_10
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 569
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 570
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 571
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 572
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    goto/16 :goto_0
.end method


# virtual methods
.method public adapter(Landroid/widget/ListAdapter;Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot set adapter() when you\'re using a custom view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1152
    :cond_0
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    .line 1153
    iput-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackCustom:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    .line 1154
    return-object p0
.end method

.method public alwaysCallInputCallback()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1

    .prologue
    .line 1283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallInputCallback:Z

    .line 1284
    return-object p0
.end method

.method public alwaysCallMultiChoiceCallback()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallMultiChoiceCallback:Z

    .line 840
    return-object p0
.end method

.method public alwaysCallSingleChoiceCallback()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallSingleChoiceCallback:Z

    .line 812
    return-object p0
.end method

.method public autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "dismiss"    # Z

    .prologue
    .line 1138
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss:Z

    .line 1139
    return-object p0
.end method

.method public backgroundColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1082
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor:I

    .line 1083
    return-object p0
.end method

.method public backgroundColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public backgroundColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public btnSelector(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "selectorRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 939
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorPositive:I

    .line 940
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorNeutral:I

    .line 941
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorNegative:I

    .line 942
    return-object p0
.end method

.method public btnSelector(ILcom/afollestad/materialdialogs/DialogAction;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "selectorRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "which"    # Lcom/afollestad/materialdialogs/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 946
    sget-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$4;->$SwitchMap$com$afollestad$materialdialogs$DialogAction:[I

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/DialogAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 948
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorPositive:I

    .line 957
    :goto_0
    return-object p0

    .line 951
    :pswitch_0
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorNeutral:I

    goto :goto_0

    .line 954
    :pswitch_1
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorNegative:I

    goto :goto_0

    .line 946
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public btnSelectorStacked(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "selectorRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 934
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorStacked:I

    .line 935
    return-object p0
.end method

.method public btnStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "gravity"    # Lcom/afollestad/materialdialogs/GravityEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 967
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 968
    return-object p0
.end method

.method public build()Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 1289
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)V

    return-object v0
.end method

.method public buttonRippleColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 591
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonRippleColor:I

    .line 592
    return-object p0
.end method

.method public buttonRippleColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 600
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonRippleColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public buttonRippleColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 596
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonRippleColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public buttonsGravity(Lcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "gravity"    # Lcom/afollestad/materialdialogs/GravityEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 783
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 784
    return-object p0
.end method

.method public callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    .line 1096
    return-object p0
.end method

.method public cancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 1186
    return-object p0
.end method

.method public cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 1125
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable:Z

    .line 1126
    return-object p0
.end method

.method public content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "contentRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 669
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 670
    return-object p0
.end method

.method public varargs content(I[Ljava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "contentRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 682
    return-object p0
.end method

.method public content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "content"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 674
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 675
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot set content() when you\'re using a custom view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content:Ljava/lang/CharSequence;

    .line 677
    return-object p0
.end method

.method public contentColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 686
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColorSet:Z

    .line 688
    return-object p0
.end method

.method public contentColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 697
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 698
    return-object p0
.end method

.method public contentColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 692
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 693
    return-object p0
.end method

.method public contentGravity(Lcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "gravity"    # Lcom/afollestad/materialdialogs/GravityEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 702
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 703
    return-object p0
.end method

.method public contentLineSpacing(F)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "multiplier"    # F

    .prologue
    .line 707
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentLineSpacingMultiplier:F

    .line 708
    return-object p0
.end method

.method public customView(IZ)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "layoutRes"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "wrapInScrollView"    # Z

    .prologue
    .line 972
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 973
    .local v0, "li":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    return-object v1
.end method

.method public customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wrapInScrollView"    # Z

    .prologue
    .line 977
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 978
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use customView() when you have content set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 980
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use customView() when you have items set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputCallback:Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;

    if-eqz v0, :cond_2

    .line 982
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use customView() with an input dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_2
    iget v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress:I

    const/4 v1, -0x2

    if-gt v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateProgress:Z

    if-eqz v0, :cond_4

    .line 984
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use customView() with a progress dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 986
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 987
    :cond_5
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    .line 988
    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->wrapCustomViewInScroll:Z

    .line 989
    return-object p0
.end method

.method public dismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1181
    return-object p0
.end method

.method public dividerColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1068
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dividerColor:I

    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dividerColorSet:Z

    .line 1070
    return-object p0
.end method

.method public dividerColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dividerColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public dividerColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dividerColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "stacked"    # Z

    .prologue
    .line 1195
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking:Z

    .line 1196
    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getItemColor()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColor:I

    return v0
.end method

.method public final getRegularFont()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 654
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 655
    return-object p0
.end method

.method public iconAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "iconAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 664
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 665
    return-object p0
.end method

.method public iconRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "icon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 659
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 660
    return-object p0
.end method

.method public input(IILcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "hint"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "prefill"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1218
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(IIZLcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public input(IIZLcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "hint"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "prefill"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "allowEmptyInput"    # Z
    .param p4, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 1214
    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {p0, v1, v0, p3, p4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method public input(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "prefill"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1210
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public input(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "hint"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "prefill"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "allowEmptyInput"    # Z
    .param p4, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot set content() when you\'re using a custom view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1202
    :cond_0
    iput-object p4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputCallback:Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;

    .line 1203
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputHint:Ljava/lang/CharSequence;

    .line 1204
    iput-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputPrefill:Ljava/lang/CharSequence;

    .line 1205
    iput-boolean p3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputAllowEmpty:Z

    .line 1206
    return-object p0
.end method

.method public inputMaxLength(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "maxLength"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x7fffffffL
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1231
    invoke-virtual {p0, v0, p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputRange(III)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public inputMaxLength(II)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "maxLength"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x7fffffffL
        .end annotation
    .end param
    .param p2, "errorColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1239
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputRange(III)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public inputMaxLengthRes(II)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "maxLength"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x7fffffffL
        .end annotation
    .end param
    .param p2, "errorColor"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1247
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputRangeRes(III)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public inputRange(II)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "minLength"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param
    .param p2, "maxLength"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = -0x1L
            to = 0x7fffffffL
        .end annotation
    .end param

    .prologue
    .line 1252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputRange(III)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public inputRange(III)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "minLength"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param
    .param p2, "maxLength"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = -0x1L
            to = 0x7fffffffL
        .end annotation
    .end param
    .param p3, "errorColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1261
    if-gez p1, :cond_0

    .line 1262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Min length for input dialogs cannot be less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_0
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMinLength:I

    .line 1264
    iput p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMaxLength:I

    .line 1265
    if-nez p3, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/afollestad/materialdialogs/R$color;->md_edittext_error:I

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputRangeErrorColor:I

    .line 1270
    :goto_0
    return-object p0

    .line 1268
    :cond_1
    iput p3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputRangeErrorColor:I

    goto :goto_0
.end method

.method public inputRangeRes(III)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "minLength"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param
    .param p2, "maxLength"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x7fffffffL
        .end annotation
    .end param
    .param p3, "errorColor"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputRange(III)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public inputType(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1222
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType:I

    .line 1223
    return-object p0
.end method

.method public itemColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 741
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public itemColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 765
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public itemColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 753
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "itemsRes"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 712
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 713
    return-object p0
.end method

.method public items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 717
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot set items() when you\'re using a custom view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_0
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    .line 720
    return-object p0
.end method

.method public itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 724
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    .line 725
    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackSingleChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;

    .line 726
    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    .line 727
    return-object p0
.end method

.method public itemsCallbackMultiChoice([Ljava/lang/Integer;Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "selectedIndices"    # [Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 824
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    .line 825
    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    .line 826
    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackSingleChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;

    .line 827
    iput-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    .line 828
    return-object p0
.end method

.method public itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "selectedIndex"    # I
    .param p2, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 796
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    .line 797
    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    .line 798
    iput-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackSingleChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;

    .line 799
    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    .line 800
    return-object p0
.end method

.method public itemsColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 731
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColor:I

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColorSet:Z

    .line 733
    return-object p0
.end method

.method public itemsColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 757
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public itemsColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 745
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public itemsGravity(Lcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "gravity"    # Lcom/afollestad/materialdialogs/GravityEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 769
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 770
    return-object p0
.end method

.method public itemsIds(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "idsArrayRes"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 779
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsIds([I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public itemsIds([I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "idsArray"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 774
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemIds:[I

    .line 775
    return-object p0
.end method

.method public keyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnKeyListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1191
    return-object p0
.end method

.method public limitIconToDefaultSize()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1

    .prologue
    .line 1161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->limitIconToDefaultSize:Z

    .line 1162
    return-object p0
.end method

.method public listSelector(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "selectorRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 929
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listSelector:I

    .line 930
    return-object p0
.end method

.method public maxIconSize(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "maxIconSize"    # I

    .prologue
    .line 1166
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->maxIconSize:I

    .line 1167
    return-object p0
.end method

.method public maxIconSizeRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "maxIconSizeRes"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->maxIconSize(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public negativeColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 883
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public negativeColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorSet:Z

    .line 897
    return-object p0
.end method

.method public negativeColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 891
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 887
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "negativeRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 901
    if-nez p1, :cond_0

    .line 902
    .end local p0    # "this":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 906
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    .line 907
    return-object p0
.end method

.method public neutralColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 911
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public neutralColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 923
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    .line 924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColorSet:Z

    .line 925
    return-object p0
.end method

.method public neutralColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 919
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public neutralColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 915
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public neutralText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "neutralRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 873
    if-nez p1, :cond_0

    .line 874
    .end local p0    # "this":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public neutralText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 878
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    .line 879
    return-object p0
.end method

.method public onAny(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onAnyCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    .line 1116
    return-object p0
.end method

.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegativeCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    .line 1106
    return-object p0
.end method

.method public onNeutral(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNeutralCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    .line 1111
    return-object p0
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositiveCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    .line 1101
    return-object p0
.end method

.method public positiveColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 855
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public positiveColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 867
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorSet:Z

    .line 869
    return-object p0
.end method

.method public positiveColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 863
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 859
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "postiveRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 844
    if-nez p1, :cond_0

    .line 846
    :goto_0
    return-object p0

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    goto :goto_0
.end method

.method public positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 850
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    .line 851
    return-object p0
.end method

.method public progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 2
    .param p1, "indeterminate"    # Z
    .param p2, "max"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1001
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot set progress() when you\'re using a custom view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_0
    if-eqz p1, :cond_1

    .line 1003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateProgress:Z

    .line 1004
    const/4 v0, -0x2

    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress:I

    .line 1010
    :goto_0
    return-object p0

    .line 1006
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateProgress:Z

    .line 1007
    const/4 v0, -0x1

    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress:I

    .line 1008
    iput p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressMax:I

    goto :goto_0
.end method

.method public progress(ZIZ)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "indeterminate"    # Z
    .param p2, "max"    # I
    .param p3, "showMinMax"    # Z

    .prologue
    .line 1022
    iput-boolean p3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showMinMax:Z

    .line 1023
    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public progressIndeterminateStyle(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "horizontal"    # Z

    .prologue
    .line 1049
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateIsHorizontalProgress:Z

    .line 1050
    return-object p0
.end method

.method public progressNumberFormat(Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressNumberFormat:Ljava/lang/String;

    .line 1032
    return-object p0
.end method

.method public progressPercentFormat(Ljava/text/NumberFormat;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressPercentFormat:Ljava/text/NumberFormat;

    .line 1041
    return-object p0
.end method

.method public show()Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 1295
    .local v0, "dialog":Lcom/afollestad/materialdialogs/MaterialDialog;
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 1296
    return-object v0
.end method

.method public showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showListener:Landroid/content/DialogInterface$OnShowListener;

    .line 1176
    return-object p0
.end method

.method public theme(Lcom/afollestad/materialdialogs/Theme;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "theme"    # Lcom/afollestad/materialdialogs/Theme;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    .line 1121
    return-object p0
.end method

.method public title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "titleRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 576
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 577
    return-object p0
.end method

.method public title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 581
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title:Ljava/lang/CharSequence;

    .line 582
    return-object p0
.end method

.method public titleColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 604
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor:I

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColorSet:Z

    .line 606
    return-object p0
.end method

.method public titleColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 614
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public titleColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 610
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public titleGravity(Lcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "gravity"    # Lcom/afollestad/materialdialogs/GravityEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 586
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 587
    return-object p0
.end method

.method public typeface(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 0
    .param p1, "medium"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "regular"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 626
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    .line 627
    iput-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    .line 628
    return-object p0
.end method

.method public typeface(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 3
    .param p1, "medium"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "regular"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 640
    if-eqz p1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/TypefaceHelper;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    .line 642
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No font asset found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    if-eqz p2, :cond_1

    .line 646
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/afollestad/materialdialogs/util/TypefaceHelper;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    .line 647
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No font asset found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1
    return-object p0
.end method

.method public widgetColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1054
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    .line 1055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColorSet:Z

    .line 1056
    return-object p0
.end method

.method public widgetColorAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public widgetColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    return-object v0
.end method
