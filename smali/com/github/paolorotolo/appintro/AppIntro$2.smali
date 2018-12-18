.class Lcom/github/paolorotolo/appintro/AppIntro$2;
.super Ljava/lang/Object;
.source "AppIntro.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 92
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 95
    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-boolean v3, v3, Lcom/github/paolorotolo/appintro/AppIntro;->isVibrateOn:Z

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v3, v3, Lcom/github/paolorotolo/appintro/AppIntro;->mVibrator:Landroid/os/Vibrator;

    iget-object v5, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget v5, v5, Lcom/github/paolorotolo/appintro/AppIntro;->vibrateIntensity:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 99
    :cond_0
    const/4 v2, 0x0

    .line 100
    .local v2, "requestPermission":Z
    const/4 v1, 0x0

    .line 102
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v3, v3, Lcom/github/paolorotolo/appintro/AppIntro;->permissionsArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v3, v3, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v3}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v3, v3, Lcom/github/paolorotolo/appintro/AppIntro;->permissionsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/paolorotolo/appintro/PermissionObject;

    invoke-virtual {v3}, Lcom/github/paolorotolo/appintro/PermissionObject;->getPosition()I

    move-result v3

    if-ne v5, v3, :cond_2

    move v2, v4

    .line 104
    :goto_0
    move v1, v0

    .line 108
    :cond_1
    if-eqz v2, :cond_4

    .line 109
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_3

    .line 110
    iget-object v5, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v3, v3, Lcom/github/paolorotolo/appintro/AppIntro;->permissionsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/paolorotolo/appintro/PermissionObject;

    invoke-virtual {v3}, Lcom/github/paolorotolo/appintro/PermissionObject;->getPermission()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Lcom/github/paolorotolo/appintro/AppIntro;->requestPermissions([Ljava/lang/String;I)V

    .line 111
    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v3, v3, Lcom/github/paolorotolo/appintro/AppIntro;->permissionsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    :goto_1
    return-void

    .line 103
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 113
    :cond_3
    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v3, v3, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object v4, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v4, v4, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v4}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setCurrentItem(I)V

    .line 114
    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    invoke-virtual {v3}, Lcom/github/paolorotolo/appintro/AppIntro;->onNextPressed()V

    goto :goto_1

    .line 117
    :cond_4
    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v3, v3, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object v4, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v4, v4, Lcom/github/paolorotolo/appintro/AppIntro;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v4}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setCurrentItem(I)V

    .line 118
    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntro$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    invoke-virtual {v3}, Lcom/github/paolorotolo/appintro/AppIntro;->onNextPressed()V

    goto :goto_1
.end method
