.class Lcom/github/paolorotolo/appintro/AppIntro$3;
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
    .line 123
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-boolean v0, v0, Lcom/github/paolorotolo/appintro/AppIntro;->isVibrateOn:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntro;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    iget v1, v1, Lcom/github/paolorotolo/appintro/AppIntro;->vibrateIntensity:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro$3;->this$0:Lcom/github/paolorotolo/appintro/AppIntro;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntro;->onDonePressed()V

    .line 130
    return-void
.end method
