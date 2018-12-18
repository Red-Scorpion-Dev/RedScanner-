.class public abstract Lcom/github/paolorotolo/appintro/AppIntro2;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AppIntro2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/paolorotolo/appintro/AppIntro2$TransformType;
    }
.end annotation


# static fields
.field public static final DEFAULT_COLOR:I = 0x1

.field private static final DEFAULT_SCROLL_DURATION_FACTOR:I = 0x1

.field private static final PERMISSIONS_REQUEST_ALL_PERMISSIONS:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private STATUS_BAR_VISIBLE:Z

.field protected baseProgressButtonEnabled:Z

.field protected doneButton:Landroid/view/View;

.field protected dots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected isVibrateOn:Z

.field protected mController:Lcom/github/paolorotolo/appintro/IndicatorController;

.field protected mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

.field protected mVibrator:Landroid/os/Vibrator;

.field protected nextButton:Landroid/view/View;

.field protected pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

.field protected permissionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/paolorotolo/appintro/PermissionObject;",
            ">;"
        }
    .end annotation
.end field

.field protected progressButtonEnabled:Z

.field protected savedCurrentItem:I

.field protected selectedIndicatorColor:I

.field protected slidesNumber:I

.field protected unselectedIndicatorColor:I

.field protected vibrateIntensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 409
    const-string v0, "AppIntro1"

    sput-object v0, Lcom/github/paolorotolo/appintro/AppIntro2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 27
    iput-boolean v2, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->STATUS_BAR_VISIBLE:Z

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->fragments:Ljava/util/List;

    .line 36
    iput-boolean v2, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->isVibrateOn:Z

    .line 37
    const/16 v0, 0x14

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->vibrateIntensity:I

    .line 38
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->baseProgressButtonEnabled:Z

    .line 39
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->progressButtonEnabled:Z

    .line 40
    iput v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->selectedIndicatorColor:I

    .line 41
    iput v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->unselectedIndicatorColor:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->permissionsArray:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private initController()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 197
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;

    invoke-direct {v1}, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;-><init>()V

    iput-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    .line 200
    :cond_0
    sget v1, Lcom/github/paolorotolo/appintro/R$id;->indicator_container:I

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 201
    .local v0, "indicatorContainer":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {v1, p0}, Lcom/github/paolorotolo/appintro/IndicatorController;->newInstance(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    iget v2, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->slidesNumber:I

    invoke-interface {v1, v2}, Lcom/github/paolorotolo/appintro/IndicatorController;->initialize(I)V

    .line 204
    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->selectedIndicatorColor:I

    if-eq v1, v3, :cond_1

    .line 205
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    iget v2, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->selectedIndicatorColor:I

    invoke-interface {v1, v2}, Lcom/github/paolorotolo/appintro/IndicatorController;->setSelectedIndicatorColor(I)V

    .line 206
    :cond_1
    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->unselectedIndicatorColor:I

    if-eq v1, v3, :cond_2

    .line 207
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    iget v2, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->unselectedIndicatorColor:I

    invoke-interface {v1, v2}, Lcom/github/paolorotolo/appintro/IndicatorController;->setUnselectedIndicatorColor(I)V

    .line 208
    :cond_2
    return-void
.end method

.method private setButtonState(Landroid/view/View;Z)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 257
    if-eqz p2, :cond_0

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addSlide(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 211
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/PagerAdapter;->notifyDataSetChanged()V

    .line 213
    return-void
.end method

.method public askForPermissions([Ljava/lang/String;I)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "slidesNumber"    # I

    .prologue
    .line 412
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 413
    if-nez p2, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro2;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Invalid Slide Number"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    new-instance v0, Lcom/github/paolorotolo/appintro/PermissionObject;

    invoke-direct {v0, p1, p2}, Lcom/github/paolorotolo/appintro/PermissionObject;-><init>([Ljava/lang/String;I)V

    .line 417
    .local v0, "permission":Lcom/github/paolorotolo/appintro/PermissionObject;
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->permissionsArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro2;->setSwipeLock(Z)V

    goto :goto_0
.end method

.method public getPager()Lcom/github/paolorotolo/appintro/AppIntroViewPager;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    return-object v0
.end method

.method public getSlides()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract init(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public isProgressButtonEnabled()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->progressButtonEnabled:Z

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 58
    invoke-virtual {p0, v3}, Lcom/github/paolorotolo/appintro/AppIntro2;->requestWindowFeature(I)Z

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/github/paolorotolo/appintro/R$layout;->intro_layout2:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->setContentView(I)V

    .line 62
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->next:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->nextButton:Landroid/view/View;

    .line 63
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->done:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->doneButton:Landroid/view/View;

    .line 64
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mVibrator:Landroid/os/Vibrator;

    .line 65
    new-instance v0, Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->fragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/github/paolorotolo/appintro/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    .line 66
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    .line 67
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro2;->restoreLockingState(Landroid/os/Bundle;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->nextButton:Landroid/view/View;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntro2$1;

    invoke-direct {v1, p0}, Lcom/github/paolorotolo/appintro/AppIntro2$1;-><init>(Lcom/github/paolorotolo/appintro/AppIntro2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->doneButton:Landroid/view/View;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntro2$2;

    invoke-direct {v1, p0}, Lcom/github/paolorotolo/appintro/AppIntro2$2;-><init>(Lcom/github/paolorotolo/appintro/AppIntro2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v0, Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->fragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/github/paolorotolo/appintro/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    .line 115
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    .line 116
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 121
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntro2$3;

    invoke-direct {v1, p0}, Lcom/github/paolorotolo/appintro/AppIntro2$3;-><init>(Lcom/github/paolorotolo/appintro/AppIntro2;)V

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 152
    invoke-virtual {p0, v3}, Lcom/github/paolorotolo/appintro/AppIntro2;->setScrollDurationFactor(I)V

    .line 154
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->savedCurrentItem:I

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setCurrentItem(I)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro2;->init(Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->slidesNumber:I

    .line 159
    iget v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->slidesNumber:I

    if-ne v0, v3, :cond_1

    .line 160
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->progressButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->setProgressButtonEnabled(Z)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntro2;->initController()V

    goto :goto_0
.end method

.method public abstract onDonePressed()V
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "kevent"    # Landroid/view/KeyEvent;

    .prologue
    .line 345
    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x60

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    .line 346
    :cond_0
    sget v1, Lcom/github/paolorotolo/appintro/R$id;->view_pager:I

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 347
    .local v0, "vp":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro2;->onDonePressed()V

    .line 352
    :goto_0
    const/4 v1, 0x0

    .line 354
    .end local v0    # "vp":Landroid/support/v4/view/ViewPager;
    :goto_1
    return v1

    .line 350
    .restart local v0    # "vp":Landroid/support/v4/view/ViewPager;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 354
    .end local v0    # "vp":Landroid/support/v4/view/ViewPager;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public abstract onNextPressed()V
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 425
    packed-switch p1, :pswitch_data_0

    .line 430
    sget-object v0, Lcom/github/paolorotolo/appintro/AppIntro2;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected request code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_0
    return-void

    .line 427
    :pswitch_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    const-string v0, "baseProgressButtonEnabled"

    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->baseProgressButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    const-string v0, "progressButtonEnabled"

    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->progressButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v0, "nextEnabled"

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->isPagingEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    const-string v0, "nextPagingEnabled"

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->isNextPagingEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    const-string v0, "lockPage"

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getLockPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string v0, "currentItem"

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    return-void
.end method

.method public abstract onSlideChanged()V
.end method

.method protected restoreLockingState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 184
    const-string v0, "baseProgressButtonEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->baseProgressButtonEnabled:Z

    .line 185
    const-string v0, "progressButtonEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->progressButtonEnabled:Z

    .line 186
    const-string v0, "currentItem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->savedCurrentItem:I

    .line 187
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const-string v1, "nextEnabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPagingEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const-string v1, "nextPagingEnabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setNextPagingEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const-string v1, "lockPage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setLockPage(I)V

    .line 190
    return-void
.end method

.method public setCustomIndicator(Lcom/github/paolorotolo/appintro/IndicatorController;)V
    .locals 0
    .param p1, "controller"    # Lcom/github/paolorotolo/appintro/IndicatorController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 332
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    .line 333
    return-void
.end method

.method public setCustomTransformer(Landroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 2
    .param p1, "transformer"    # Landroid/support/v4/view/ViewPager$PageTransformer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 310
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 311
    return-void
.end method

.method public setDepthAnimation()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v3, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->DEPTH:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v2, v3}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 307
    return-void
.end method

.method public setFadeAnimation()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v3, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->FADE:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v2, v3}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 291
    return-void
.end method

.method public setFlowAnimation()V
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v3, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->FLOW:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v2, v3}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 299
    return-void
.end method

.method public setIndicatorColor(II)V
    .locals 2
    .param p1, "selectedIndicatorColor"    # I
    .param p2, "unselectedIndicatorColor"    # I

    .prologue
    const/4 v1, 0x1

    .line 361
    iput p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->selectedIndicatorColor:I

    .line 362
    iput p2, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->unselectedIndicatorColor:I

    .line 364
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    if-eqz v0, :cond_1

    .line 365
    if-eq p1, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {v0, p1}, Lcom/github/paolorotolo/appintro/IndicatorController;->setSelectedIndicatorColor(I)V

    .line 367
    :cond_0
    if-eq p2, v1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {v0, p2}, Lcom/github/paolorotolo/appintro/IndicatorController;->setUnselectedIndicatorColor(I)V

    .line 370
    :cond_1
    return-void
.end method

.method public setNavBarColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "Color"    # Ljava/lang/String;

    .prologue
    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 268
    :cond_0
    return-void
.end method

.method public setNextPageSwipeLock(Z)V
    .locals 3
    .param p1, "lockEnable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 380
    if-eqz p1, :cond_1

    .line 382
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->progressButtonEnabled:Z

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->baseProgressButtonEnabled:Z

    .line 383
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->setProgressButtonEnabled(Z)V

    .line 388
    :goto_1
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setNextPagingEnabled(Z)V

    .line 389
    return-void

    :cond_0
    move v0, v2

    .line 383
    goto :goto_0

    .line 386
    :cond_1
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->baseProgressButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->setProgressButtonEnabled(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 388
    goto :goto_2
.end method

.method public setOffScreenPageLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setOffscreenPageLimit(I)V

    .line 315
    return-void
.end method

.method public setProgressButtonEnabled(Z)V
    .locals 4
    .param p1, "progressButtonEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->progressButtonEnabled:Z

    .line 238
    if-eqz p1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->slidesNumber:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->nextButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/github/paolorotolo/appintro/AppIntro2;->setButtonState(Landroid/view/View;Z)V

    .line 241
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->doneButton:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/github/paolorotolo/appintro/AppIntro2;->setButtonState(Landroid/view/View;Z)V

    .line 250
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->nextButton:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/github/paolorotolo/appintro/AppIntro2;->setButtonState(Landroid/view/View;Z)V

    .line 244
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->doneButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/github/paolorotolo/appintro/AppIntro2;->setButtonState(Landroid/view/View;Z)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->nextButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/github/paolorotolo/appintro/AppIntro2;->setButtonState(Landroid/view/View;Z)V

    .line 248
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->doneButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/github/paolorotolo/appintro/AppIntro2;->setButtonState(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setProgressIndicator()V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/github/paolorotolo/appintro/ProgressIndicatorController;

    invoke-direct {v0}, Lcom/github/paolorotolo/appintro/ProgressIndicatorController;-><init>()V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    .line 323
    return-void
.end method

.method protected setScrollDurationFactor(I)V
    .locals 4
    .param p1, "factor"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setScrollDurationFactor(D)V

    .line 168
    return-void
.end method

.method public setSlideOverAnimation()V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v3, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->SLIDE_OVER:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v2, v3}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 303
    return-void
.end method

.method public setSwipeLock(Z)V
    .locals 2
    .param p1, "lockEnable"    # Z

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 400
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->progressButtonEnabled:Z

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->baseProgressButtonEnabled:Z

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPagingEnabled(Z)V

    .line 407
    return-void

    .line 404
    :cond_0
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->baseProgressButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->setProgressButtonEnabled(Z)V

    goto :goto_0

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setVibrate(Z)V
    .locals 0
    .param p1, "vibrate"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->isVibrateOn:Z

    .line 283
    return-void
.end method

.method public setVibrateIntensity(I)V
    .locals 0
    .param p1, "intensity"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->vibrateIntensity:I

    .line 287
    return-void
.end method

.method public setZoomAnimation()V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v3, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->ZOOM:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v2, v3}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 295
    return-void
.end method

.method public showDoneButton(Z)V
    .locals 0
    .param p1, "showDone"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro2;->setProgressButtonEnabled(Z)V

    .line 228
    return-void
.end method

.method public showStatusBar(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v1, 0x400

    .line 271
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->STATUS_BAR_VISIBLE:Z

    .line 273
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2;->STATUS_BAR_VISIBLE:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method
