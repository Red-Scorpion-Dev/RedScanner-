.class Lcom/github/paolorotolo/appintro/AppIntro2$2;
.super Ljava/lang/Object;
.source "AppIntro2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 104
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntro2$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

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
    .line 107
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-boolean v0, v0, Lcom/github/paolorotolo/appintro/AppIntro2;->isVibrateOn:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntro2;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntro2$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    iget v1, v1, Lcom/github/paolorotolo/appintro/AppIntro2;->vibrateIntensity:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntro2$2;->this$0:Lcom/github/paolorotolo/appintro/AppIntro2;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntro2;->onDonePressed()V

    .line 111
    return-void
.end method
