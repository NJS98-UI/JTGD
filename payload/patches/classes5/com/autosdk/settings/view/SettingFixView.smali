.class public Lcom/autosdk/settings/view/SettingFixView;
.super Lcom/autosdk/settings/view/SettingInterconnectView;
.source "SettingFixView.java"

# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autosdk/settings/view/BaseSettingView<",
        "Lk/e/j/c/n;",
        "Lk/e/s/f/h1;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mRoot:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/autosdk/framework/fragmentcontainer/BaseFragment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/SettingInterconnectView;-><init>(Lcom/autosdk/framework/fragmentcontainer/BaseFragment;)V

    return-void
.end method

.method private addLine(Ljava/lang/String;FII)V
    .registers 12

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingFixView;->mRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :done

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/autonavi/skin/view/SkinTextView;

    invoke-direct {v2, v1}, Lcom/autonavi/skin/view/SkinTextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const v3, 0x7f060813

    const v4, 0x7f060814

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/skin/view/SkinTextView;->setTextColor(II)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    int-to-float v4, p3

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v5, p4

    mul-float/2addr v5, v3

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :done
    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .registers 8

    invoke-static {}, Lk/e/d/q0/j2;->g()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/autosdk/settings/view/SettingFixView;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public initViews()V
    .registers 6

    invoke-super {p0}, Lcom/autosdk/settings/view/SettingInterconnectView;->initViews()V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingFixView;->mRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :done

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string v1, "冥城修复记录"

    const/high16 v2, 0x41a00000    # 20.0f

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/autosdk/settings/view/SettingFixView;->addLine(Ljava/lang/String;FII)V

    const-string v1, "1. 修复设置互联页图标闪退\n2. 修复竖屏下打开设置闪退\n3. 修复部分车型打开进程却不显示"

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/autosdk/settings/view/SettingFixView;->addLine(Ljava/lang/String;FII)V

    const-string v1, "免责声明"

    const/high16 v2, 0x41800000    # 16.0f

    const/16 v3, 0xa

    const/4 v4, 0x4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/autosdk/settings/view/SettingFixView;->addLine(Ljava/lang/String;FII)V

    const-string v1, "本软件仅供测试使用，请在24小时内删除\n传播倒卖与我无关"

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/autosdk/settings/view/SettingFixView;->addLine(Ljava/lang/String;FII)V

    :done
    return-void
.end method
