.class Lcom/afollestad/materialdialogs/MaterialDialog$1;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;->checkIfListInitScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 110
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_2

    .line 112
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 117
    :goto_0
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object v5, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object v5, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-ne v4, v5, :cond_1

    .line 119
    :cond_0
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object v5, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-ne v4, v5, :cond_5

    .line 120
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    if-gez v4, :cond_3

    .line 144
    :cond_1
    :goto_1
    return-void

    .line 114
    :cond_2
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 122
    :cond_3
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v2, v4, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    .line 129
    .local v2, "selectedIndex":I
    :goto_2
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 130
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v5, v5, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v3, v4, v5

    .line 132
    .local v3, "totalVisible":I
    div-int/lit8 v4, v3, 0x2

    sub-int v1, v2, v4

    .line 133
    .local v1, "scrollIndex":I
    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 134
    :cond_4
    move v0, v1

    .line 135
    .local v0, "fScrollIndex":I
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    new-instance v5, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;

    invoke-direct {v5, p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog$1;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 124
    .end local v0    # "fScrollIndex":I
    .end local v1    # "scrollIndex":I
    .end local v2    # "selectedIndex":I
    .end local v3    # "totalVisible":I
    :cond_5
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 127
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .restart local v2    # "selectedIndex":I
    goto :goto_2
.end method
