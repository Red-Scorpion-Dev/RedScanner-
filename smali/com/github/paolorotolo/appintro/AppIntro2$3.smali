.class Lcom/github/paolorotolo/appintro/AppIntro2$3;
.super Ljava/lang/Object;
.source "AppIntro2.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/paolorotolo/appintro/AppIntro2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/paolorotolo/appintro/AppIntro2;


# direct methods
.method constructor <init>(Lcom/github/paolorotolo/appintro/AppIntro2;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 129
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget v0, v0, Lcom/github/paolorotolo/appintro/AppIntro2;->slidesNumber:I

    if-le v0, v2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntro2;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {v0, p1}, Lcom/github/paolorotolo/appintro/IndicatorController;->selectPosition(I)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->isNextPagingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-object v1, v1, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getLockPage()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-boolean v1, v1, Lcom/github/paolorotolo/appintro/AppIntro2;->baseProgressButtonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntro2;->setProgressButtonEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntro2;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setNextPagingEnabled(Z)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->onSlideChanged()V

    .line 145
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-boolean v1, v1, Lcom/github/paolorotolo/appintro/AppIntro2;->progressButtonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntro2;->setProgressButtonEnabled(Z)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-boolean v1, v1, Lcom/github/paolorotolo/appintro/AppIntro2;->progressButtonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntro2;->setProgressButtonEnabled(Z)V

    goto :goto_0
.end method
