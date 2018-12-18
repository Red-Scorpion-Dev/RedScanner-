.class public Lcom/github/paolorotolo/appintro/AppIntroFragment;
.super Landroid/support/v4/app/Fragment;
.source "AppIntroFragment.java"


# static fields
.field private static final ARG_BG_COLOR:Ljava/lang/String; = "bg_color"

.field private static final ARG_DESC:Ljava/lang/String; = "desc"

.field private static final ARG_DESC_COLOR:Ljava/lang/String; = "desc_color"

.field private static final ARG_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field private static final ARG_TITLE_COLOR:Ljava/lang/String; = "title_color"


# instance fields
.field private bgColor:I

.field private descColor:I

.field private description:Ljava/lang/String;

.field private drawable:I

.field private title:Ljava/lang/String;

.field private titleColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;II)Lcom/github/paolorotolo/appintro/AppIntroFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "imageDrawable"    # I
    .param p3, "bgColor"    # I

    .prologue
    .line 23
    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntroFragment;

    invoke-direct {v1}, Lcom/github/paolorotolo/appintro/AppIntroFragment;-><init>()V

    .line 25
    .local v1, "sampleSlide":Lcom/github/paolorotolo/appintro/AppIntroFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v2, "desc"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v2, "drawable"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    const-string v2, "bg_color"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/github/paolorotolo/appintro/AppIntroFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "imageDrawable"    # I
    .param p3, "bgColor"    # I
    .param p4, "titleColor"    # I
    .param p5, "descColor"    # I

    .prologue
    .line 36
    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntroFragment;

    invoke-direct {v1}, Lcom/github/paolorotolo/appintro/AppIntroFragment;-><init>()V

    .line 37
    .local v1, "sampleSlide":Lcom/github/paolorotolo/appintro/AppIntroFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v2, "desc"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "drawable"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v2, "bg_color"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string v2, "title_color"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    const-string v2, "desc_color"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {v1, v0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "drawable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->drawable:I

    .line 61
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->title:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "desc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->description:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "bg_color"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->bgColor:I

    .line 64
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "title_color"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "title_color"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->titleColor:I

    .line 65
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "desc_color"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "desc_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->descColor:I

    .line 67
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    sget v5, Lcom/github/paolorotolo/appintro/R$layout;->fragment_intro:I

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 73
    .local v4, "v":Landroid/view/View;
    sget v5, Lcom/github/paolorotolo/appintro/R$id;->title:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 74
    .local v3, "t":Landroid/widget/TextView;
    sget v5, Lcom/github/paolorotolo/appintro/R$id;->description:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, "d":Landroid/widget/TextView;
    sget v5, Lcom/github/paolorotolo/appintro/R$id;->image:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 76
    .local v1, "i":Landroid/widget/ImageView;
    sget v5, Lcom/github/paolorotolo/appintro/R$id;->main:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 77
    .local v2, "m":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget v5, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->titleColor:I

    if-eqz v5, :cond_0

    .line 79
    iget v5, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->titleColor:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    :cond_0
    iget-object v5, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->description:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget v5, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->descColor:I

    if-eqz v5, :cond_1

    .line 83
    iget v5, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->descColor:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget v6, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->drawable:I

    invoke-static {v5, v6}, Lcom/github/paolorotolo/appintro/ResourceUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget v5, p0, Lcom/github/paolorotolo/appintro/AppIntroFragment;->bgColor:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 87
    return-object v4
.end method
