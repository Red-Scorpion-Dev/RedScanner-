.class Lcom/github/paolorotolo/appintro/AppIntro$4;
.super Ljava/lang/Object;
.source "AppIntro.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/paolorotolo/appintro/AppIntro;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/paolorotolo/appintro/AppIntro;


# direct methods
.method constructor <init>(Lcom/github/paolorotolo/appintro/AppIntro;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 171
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget v0, v0, Lcom/github/paolorotolo/appintro/AppIntro;->slidesNumber:I

    if-le v0, v2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntro;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {v0, p1}, Lcom/github/paolorotolo/appintro/IndicatorController;->selectPosition(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->isNextPagingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v1, v1, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getLockPage()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-boolean v1, v1, Lcom/github/paolorotolo/appintro/AppIntro;->baseProgressButtonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->setProgressButtonEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setNextPagingEnabled(Z)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v1, v1, Lcom/github/paolorotolo/appintro/AppIntro;->skipButton:Landroid/view/View;

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-boolean v2, v2, Lcom/github/paolorotolo/appintro/AppIntro;->skipButtonEnabled:Z

    invoke-static {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntro;->access$000(Lcom/github/paolorotolo/appintro/AppIntro;Landroid/view/View;Z)V

    .line 165
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntro;->onSlideChanged()V

    .line 166
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-boolean v1, v1, Lcom/github/paolorotolo/appintro/AppIntro;->progressButtonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->setProgressButtonEnabled(Z)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-boolean v1, v1, Lcom/github/paolorotolo/appintro/AppIntro;->progressButtonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntro;->setProgressButtonEnabled(Z)V

    goto :goto_0
.end method
