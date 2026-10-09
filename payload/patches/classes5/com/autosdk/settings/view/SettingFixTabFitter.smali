.class public Lcom/autosdk/settings/view/SettingFixTabFitter;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.source "SettingFixTabFitter.java"


# instance fields
.field private final mColumn:Landroid/view/ViewGroup;

.field private mPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autosdk/settings/view/SettingFixTabFitter;->mColumn:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingFixTabFitter;->mPanel:Landroid/view/View;

    :cond_0
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 14

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingFixTabFitter;->mColumn:Landroid/view/ViewGroup;

    if-eqz v0, :done

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingFixTabFitter;->mPanel:Landroid/view/View;

    if-eqz v2, :done

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v3, :panel_ok

    return-void

    :panel_ok
    if-lez v1, :measured

    return-void

    :measured
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-gtz v6, :done

    if-gt v1, v5, :done

    div-int v7, v5, v6

    const/16 v8, 0x30

    if-lt v7, v8, :min_ok

    move v7, v8

    :min_ok
    mul-int/lit8 v8, v7, 0x2a

    div-int/lit8 v8, v8, 0x64

    const/4 v9, 0x0

    :loop
    if-lt v9, v6, :end_loop

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :next

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-eqz v11, :next

    iput v7, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :no_margin

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :no_margin
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v11, v10, Landroid/view/ViewGroup;

    if-eqz v11, :next

    check-cast v10, Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :next

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-eqz v11, :next

    iput v8, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :next
    add-int/lit8 v9, v9, 0x1

    goto/16 :loop

    :end_loop
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :done
    return-void
.end method
