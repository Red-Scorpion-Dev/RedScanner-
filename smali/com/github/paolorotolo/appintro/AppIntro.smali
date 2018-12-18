.class public abstract Lcom/github/paolorotolo/appintro/AppIntro;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AppIntro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/paolorotolo/appintro/AppIntro$TransformType;
    }
.end annotation


# static fields
.field public static final DEFAULT_COLOR:I = 0x1

.field private static final DEFAULT_SCROLL_DURATION_FACTOR:I = 0x1

.field private static final PERMISSIONS_REQUEST_ALL_PERMISSIONS:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
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

.field protected skipButton:Landroid/view/View;

.field protected skipButtonEnabled:Z

.field protected slidesNumber:I

.field protected unselectedIndicatorColor:I

.field protected vibrateIntensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 575
    const-string v0, "AppIntro1"

    sput-object v0, Lcom/github/paolorotolo/appintro/AppIntro;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->fragments:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->isVibrateOn:Z

    .line 41
    const/16 v0, 0x14

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->vibrateIntensity:I

    .line 42
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->skipButtonEnabled:Z

    .line 43
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->baseProgressButtonEnabled:Z

    .line 44
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->progressButtonEnabled:Z

    .line 45
    iput v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->selectedIndicatorColor:I

    .line 46
    iput v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->unselectedIndicatorColor:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->permissionsArray:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/github/paolorotolo/appintro/AppIntro;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/github/paolorotolo/appintro/AppIntro;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/github/paolorotolo/appintro/AppIntro;->setButtonState(Landroid/view/View;Z)V

    return-void
.end method

.method private initController()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 221
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;

    invoke-direct {v1}, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;-><init>()V

    iput-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    .line 224
    :cond_0
    sget v1, Lcom/github/paolorotolo/appintro/R$id;->indicator_container:I

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 225
    .local v0, "indicatorContainer":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {v1, p0}, Lcom/github/paolorotolo/appintro/IndicatorController;->newInstance(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    iget v2, p0, Lcom/github/paolorotolo/appintro/AppIntro;->slidesNumber:I

    invoke-interface {v1, v2}, Lcom/github/paolorotolo/appintro/IndicatorController;->initialize(I)V

    .line 228
    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->selectedIndicatorColor:I

    if-eq v1, v3, :cond_1

    .line 229
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    iget v2, p0, Lcom/github/paolorotolo/appintro/AppIntro;->selectedIndicatorColor:I

    invoke-interface {v1, v2}, Lcom/github/paolorotolo/appintro/IndicatorController;->setSelectedIndicatorColor(I)V

    .line 230
    :cond_1
    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->unselectedIndicatorColor:I

    if-eq v1, v3, :cond_2

    .line 231
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    iget v2, p0, Lcom/github/paolorotolo/appintro/AppIntro;->unselectedIndicatorColor:I

    invoke-interface {v1, v2}, Lcom/github/paolorotolo/appintro/IndicatorController;->setUnselectedIndicatorColor(I)V

    .line 232
    :cond_2
    return-void
.end method

.method private setButtonState(Landroid/view/View;Z)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 253
    if-eqz p2, :cond_0

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_0
    return-void

    .line 256
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
    .line 235
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/PagerAdapter;->notifyDataSetChanged()V

    .line 237
    return-void
.end method

.method public askForPermissions([Ljava/lang/String;I)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "slidesNumber"    # I

    .prologue
    .line 578
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 579
    if-nez p2, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Invalid Slide Number"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    new-instance v0, Lcom/github/paolorotolo/appintro/PermissionObject;

    invoke-direct {v0, p1, p2}, Lcom/github/paolorotolo/appintro/PermissionObject;-><init>([Ljava/lang/String;I)V

    .line 583
    .local v0, "permission":Lcom/github/paolorotolo/appintro/PermissionObject;
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->permissionsArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->setSwipeLock(Z)V

    goto :goto_0
.end method

.method public getPager()Lcom/github/paolorotolo/appintro/AppIntroViewPager;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

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
    .line 241
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

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
    .line 245
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->progressButtonEnabled:Z

    return v0
.end method

.method public isSkipButtonEnabled()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->skipButtonEnabled:Z

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-virtual {p0, v3}, Lcom/github/paolorotolo/appintro/AppIntro;->requestWindowFeature(I)Z

    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget v0, Lcom/github/paolorotolo/appintro/R$layout;->intro_layout:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro;->setContentView(I)V

    .line 70
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->skip:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->skipButton:Landroid/view/View;

    .line 71
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->next:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->nextButton:Landroid/view/View;

    .line 72
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->done:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->doneButton:Landroid/view/View;

    .line 73
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mVibrator:Landroid/os/Vibrator;

    .line 74
    new-instance v0, Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntro;->fragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/github/paolorotolo/appintro/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    .line 75
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    .line 76
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->restoreLockingState(Landroid/os/Bundle;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->skipButton:Landroid/view/View;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntro$1;

    invoke-direct {v1, p0}, Lcom/github/paolorotolo/appintro/AppIntro$1;-><init>(Lcom/github/paolorotolo/appintro/AppIntro;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->nextButton:Landroid/view/View;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntro$2;

    invoke-direct {v1, p0}, Lcom/github/paolorotolo/appintro/AppIntro$2;-><init>(Lcom/github/paolorotolo/appintro/AppIntro;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->doneButton:Landroid/view/View;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntro$3;

    invoke-direct {v1, p0}, Lcom/github/paolorotolo/appintro/AppIntro$3;-><init>(Lcom/github/paolorotolo/appintro/AppIntro;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    new-instance v0, Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntro;->fragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/github/paolorotolo/appintro/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    .line 134
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    .line 136
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 141
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntro$4;

    invoke-direct {v1, p0}, Lcom/github/paolorotolo/appintro/AppIntro$4;-><init>(Lcom/github/paolorotolo/appintro/AppIntro;)V

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->savedCurrentItem:I

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setCurrentItem(I)V

    .line 175
    invoke-virtual {p0, v3}, Lcom/github/paolorotolo/appintro/AppIntro;->setScrollDurationFactor(I)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->init(Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->slidesNumber:I

    .line 180
    iget v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->slidesNumber:I

    if-ne v0, v3, :cond_1

    .line 181
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->progressButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro;->setProgressButtonEnabled(Z)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntro;->initController()V

    goto :goto_0
.end method

.method public abstract onDonePressed()V
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "kvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 276
    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x60

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    .line 277
    :cond_0
    sget v1, Lcom/github/paolorotolo/appintro/R$id;->view_pager:I

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 278
    .local v0, "vp":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro;->onDonePressed()V

    .line 283
    :goto_0
    const/4 v1, 0x0

    .line 285
    .end local v0    # "vp":Landroid/support/v4/view/ViewPager;
    :goto_1
    return v1

    .line 281
    .restart local v0    # "vp":Landroid/support/v4/view/ViewPager;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 285
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
    .line 591
    packed-switch p1, :pswitch_data_0

    .line 596
    sget-object v0, Lcom/github/paolorotolo/appintro/AppIntro;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected request code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :goto_0
    return-void

    .line 593
    :pswitch_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 591
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
    .line 194
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    const-string v0, "baseProgressButtonEnabled"

    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->baseProgressButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    const-string v0, "progressButtonEnabled"

    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->progressButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    const-string v0, "skipButtonEnabled"

    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->skipButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    const-string v0, "nextEnabled"

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->isPagingEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    const-string v0, "nextPagingEnabled"

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->isNextPagingEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    const-string v0, "lockPage"

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getLockPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v0, "currentItem"

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    return-void
.end method

.method public abstract onSkipPressed()V
.end method

.method public abstract onSlideChanged()V
.end method

.method protected restoreLockingState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 207
    const-string v0, "baseProgressButtonEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->baseProgressButtonEnabled:Z

    .line 208
    const-string v0, "progressButtonEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->progressButtonEnabled:Z

    .line 209
    const-string v0, "skipButtonEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->skipButtonEnabled:Z

    .line 210
    const-string v0, "currentItem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->savedCurrentItem:I

    .line 211
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const-string v1, "nextEnabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPagingEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const-string v1, "nextPagingEnabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setNextPagingEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const-string v1, "lockPage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setLockPage(I)V

    .line 214
    return-void
.end method

.method public setBarColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 316
    sget v1, Lcom/github/paolorotolo/appintro/R$id;->bottom:I

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 317
    .local v0, "bottomBar":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 318
    return-void
.end method

.method public setColorDoneText(I)V
    .locals 2
    .param p1, "colorDoneText"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 356
    sget v1, Lcom/github/paolorotolo/appintro/R$id;->done:I

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 357
    .local v0, "doneText":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    return-void
.end method

.method public setColorSkipButton(I)V
    .locals 2
    .param p1, "colorSkipButton"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 366
    sget v1, Lcom/github/paolorotolo/appintro/R$id;->skip:I

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 367
    .local v0, "skip":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    return-void
.end method

.method public setCustomIndicator(Lcom/github/paolorotolo/appintro/IndicatorController;)V
    .locals 0
    .param p1, "controller"    # Lcom/github/paolorotolo/appintro/IndicatorController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 471
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    .line 472
    return-void
.end method

.method public setCustomTransformer(Landroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 2
    .param p1, "transformer"    # Landroid/support/v4/view/ViewPager$PageTransformer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 515
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 516
    return-void
.end method

.method public setDepthAnimation()V
    .locals 4

    .prologue
    .line 506
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v3, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->DEPTH:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v2, v3}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 507
    return-void
.end method

.method public setDoneText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 346
    sget v1, Lcom/github/paolorotolo/appintro/R$id;->done:I

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 347
    .local v0, "doneText":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method

.method public setFadeAnimation()V
    .locals 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v3, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->FADE:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v2, v3}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 479
    return-void
.end method

.method public setFlowAnimation()V
    .locals 4

    .prologue
    .line 492
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v3, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->FLOW:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v2, v3}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 493
    return-void
.end method

.method public setImageNextButton(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "imageNextButton"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 376
    sget v1, Lcom/github/paolorotolo/appintro/R$id;->next:I

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 377
    .local v0, "nextButton":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    return-void
.end method

.method public setIndicatorColor(II)V
    .locals 2
    .param p1, "selectedIndicatorColor"    # I
    .param p2, "unselectedIndicatorColor"    # I

    .prologue
    const/4 v1, 0x1

    .line 527
    iput p1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->selectedIndicatorColor:I

    .line 528
    iput p2, p0, Lcom/github/paolorotolo/appintro/AppIntro;->unselectedIndicatorColor:I

    .line 530
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    if-eqz v0, :cond_1

    .line 531
    if-eq p1, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {v0, p1}, Lcom/github/paolorotolo/appintro/IndicatorController;->setSelectedIndicatorColor(I)V

    .line 533
    :cond_0
    if-eq p2, v1, :cond_1

    .line 534
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {v0, p2}, Lcom/github/paolorotolo/appintro/IndicatorController;->setUnselectedIndicatorColor(I)V

    .line 536
    :cond_1
    return-void
.end method

.method public setNavBarColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 401
    :cond_0
    return-void
.end method

.method public setNavBarColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "Color"    # Ljava/lang/String;

    .prologue
    .line 387
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 390
    :cond_0
    return-void
.end method

.method public setNextPageSwipeLock(Z)V
    .locals 3
    .param p1, "lockEnable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 546
    if-eqz p1, :cond_1

    .line 548
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->progressButtonEnabled:Z

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->baseProgressButtonEnabled:Z

    .line 549
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro;->setProgressButtonEnabled(Z)V

    .line 554
    :goto_1
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setNextPagingEnabled(Z)V

    .line 555
    return-void

    :cond_0
    move v0, v2

    .line 549
    goto :goto_0

    .line 552
    :cond_1
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->baseProgressButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro;->setProgressButtonEnabled(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 554
    goto :goto_2
.end method

.method public setOffScreenPageLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setOffscreenPageLimit(I)V

    .line 262
    return-void
.end method

.method public setProgressButtonEnabled(Z)V
    .locals 4
    .param p1, "progressButtonEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->progressButtonEnabled:Z

    .line 296
    if-eqz p1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->slidesNumber:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->nextButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/github/paolorotolo/appintro/AppIntro;->setButtonState(Landroid/view/View;Z)V

    .line 299
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->doneButton:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/github/paolorotolo/appintro/AppIntro;->setButtonState(Landroid/view/View;Z)V

    .line 308
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->nextButton:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/github/paolorotolo/appintro/AppIntro;->setButtonState(Landroid/view/View;Z)V

    .line 302
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->doneButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/github/paolorotolo/appintro/AppIntro;->setButtonState(Landroid/view/View;Z)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->nextButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/github/paolorotolo/appintro/AppIntro;->setButtonState(Landroid/view/View;Z)V

    .line 306
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->doneButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/github/paolorotolo/appintro/AppIntro;->setButtonState(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setProgressIndicator()V
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lcom/github/paolorotolo/appintro/ProgressIndicatorController;

    invoke-direct {v0}, Lcom/github/paolorotolo/appintro/ProgressIndicatorController;-><init>()V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    .line 462
    return-void
.end method

.method protected setScrollDurationFactor(I)V
    .locals 4
    .param p1, "factor"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setScrollDurationFactor(D)V

    .line 190
    return-void
.end method

.method public setSeparatorColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 326
    sget v1, Lcom/github/paolorotolo/appintro/R$id;->bottom_separator:I

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 327
    .local v0, "separator":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 328
    return-void
.end method

.method public setSkipText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 336
    sget v1, Lcom/github/paolorotolo/appintro/R$id;->skip:I

    invoke-virtual {p0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 337
    .local v0, "skipText":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method

.method public setSlideOverAnimation()V
    .locals 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v3, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->SLIDE_OVER:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v2, v3}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 500
    return-void
.end method

.method public setSwipeLock(Z)V
    .locals 2
    .param p1, "lockEnable"    # Z

    .prologue
    .line 564
    if-eqz p1, :cond_0

    .line 566
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->progressButtonEnabled:Z

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->baseProgressButtonEnabled:Z

    .line 572
    :goto_0
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPagingEnabled(Z)V

    .line 573
    return-void

    .line 570
    :cond_0
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->baseProgressButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntro;->setProgressButtonEnabled(Z)V

    goto :goto_0

    .line 572
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setVibrate(Z)V
    .locals 0
    .param p1, "vibrationEnabled"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->isVibrateOn:Z

    .line 445
    return-void
.end method

.method public setVibrateIntensity(I)V
    .locals 0
    .param p1, "intensity"    # I

    .prologue
    .line 453
    iput p1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->vibrateIntensity:I

    .line 454
    return-void
.end method

.method public setZoomAnimation()V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v3, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->ZOOM:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v2, v3}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 486
    return-void
.end method

.method public showDoneButton(Z)V
    .locals 0
    .param p1, "showDone"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->setProgressButtonEnabled(Z)V

    .line 436
    return-void
.end method

.method public showSkipButton(Z)V
    .locals 1
    .param p1, "showButton"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntro;->skipButtonEnabled:Z

    .line 425
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro;->skipButton:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->setButtonState(Landroid/view/View;Z)V

    .line 426
    return-void
.end method

.method public showStatusBar(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v1, 0x400

    .line 409
    if-nez p1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntro;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
