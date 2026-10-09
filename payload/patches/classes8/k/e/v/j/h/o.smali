.class public Lk/e/v/j/h/o;
.super Lk/e/v/j/c;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/e/v/j/c<",
        "Lk/e/v/h/h/c;",
        ">;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;"
    }
.end annotation


# instance fields
.field public B3:Lcom/autonavi/skin/view/SkinScrollView;

.field public C3:I

.field public D3:Lcom/autonavi/skin/view/SkinTabLayout;

.field public E3:Landroid/view/LayoutInflater;

.field public F3:Landroid/widget/RadioGroup;

.field public G3:Landroid/view/View;

.field public H3:Landroid/view/View;

.field public I3:I

.field public J3:Lcom/autonavi/skin/view/SkinConstraintLayout;

.field public K3:Lcom/autonavi/skin/view/SkinRelativeLayout;

.field public L3:I

.field public final M3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final N3:Landroid/view/View$OnScrollChangeListener;

.field public O3:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public v1:Landroidx/viewpager/widget/ViewPager;

.field public v2:Lk/e/v/b/j;

.field public y:Lcom/autonavi/skin/view/SkinTextView;


# direct methods
.method public constructor <init>(Lcom/autosdk/framework/fragmentcontainer/BaseFragment;)V
    .registers 2

    invoke-direct {p0, p1}, Lk/e/v/j/c;-><init>(Lcom/autosdk/framework/fragmentcontainer/BaseFragment;)V

    const/4 p1, -0x1

    iput p1, p0, Lk/e/v/j/h/o;->C3:I

    const/4 p1, 0x0

    iput p1, p0, Lk/e/v/j/h/o;->I3:I

    iput p1, p0, Lk/e/v/j/h/o;->L3:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    new-instance p1, Lk/e/v/j/h/o$a;

    invoke-direct {p1, p0}, Lk/e/v/j/h/o$a;-><init>(Lk/e/v/j/h/o;)V

    iput-object p1, p0, Lk/e/v/j/h/o;->N3:Landroid/view/View$OnScrollChangeListener;

    new-instance p1, Lk/e/v/j/h/o$d;

    invoke-direct {p1, p0}, Lk/e/v/j/h/o$d;-><init>(Lk/e/v/j/h/o;)V

    iput-object p1, p0, Lk/e/v/j/h/o;->O3:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public static synthetic Q0(Lk/e/v/j/h/o;)I
    .registers 1

    iget p0, p0, Lk/e/v/j/h/o;->I3:I

    return p0
.end method

.method public static synthetic R0(Lk/e/v/j/h/o;I)I
    .registers 2

    iput p1, p0, Lk/e/v/j/h/o;->I3:I

    return p1
.end method

.method public static synthetic S0(Lk/e/v/j/h/o;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lk/e/v/j/h/o;->d1(III)V

    return-void
.end method

.method public static synthetic T0(Lk/e/v/j/h/o;)Lcom/autonavi/skin/view/SkinScrollView;
    .registers 1

    iget-object p0, p0, Lk/e/v/j/h/o;->B3:Lcom/autonavi/skin/view/SkinScrollView;

    return-object p0
.end method

.method public static synthetic U0(Lk/e/v/j/h/o;)V
    .registers 1

    invoke-virtual {p0}, Lk/e/v/j/h/o;->m1()V

    return-void
.end method

.method public static synthetic V0(Lk/e/v/j/h/o;)V
    .registers 1

    invoke-virtual {p0}, Lk/e/v/j/h/o;->k1()V

    return-void
.end method

.method public static synthetic W0(Lk/e/v/j/h/o;)V
    .registers 1

    invoke-virtual {p0}, Lk/e/v/j/h/o;->p1()V

    return-void
.end method

.method public static synthetic X0(Lk/e/v/j/h/o;)V
    .registers 1

    invoke-virtual {p0}, Lk/e/v/j/h/o;->o1()V

    return-void
.end method

.method public static synthetic Y0(Lk/e/v/j/h/o;)V
    .registers 1

    invoke-virtual {p0}, Lk/e/v/j/h/o;->l1()V

    return-void
.end method

.method public static synthetic Z0(Lk/e/v/j/h/o;I)I
    .registers 2

    iput p1, p0, Lk/e/v/j/h/o;->C3:I

    return p1
.end method

.method public static synthetic a1(Lk/e/v/j/h/o;)Lcom/autonavi/skin/view/SkinTabLayout;
    .registers 1

    iget-object p0, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    return-object p0
.end method


# virtual methods
.method public P0()V
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InterconnectHelpView"

    const-string v2, "initViews()"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v0, Lcom/autosdk/R$id;->widget_set_title_text:I

    invoke-interface {p0, v0}, Lk/e/j/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/R$string;->user_txt_phone_connected_help:I

    invoke-interface {p0, v0, v1}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;I)V

    sget v0, Lcom/autosdk/R$id;->widget_set_title_back:I

    invoke-interface {p0, v0, p0}, Lk/e/j/d/j0;->setOnClickListener(ILandroid/view/View$OnClickListener;)Z

    invoke-virtual {p0}, Lk/e/v/j/h/o;->f1()Z

    move-result v0

    const-string v1, "helper_application_item"

    if-eqz v0, :cond_59

    sget v0, Lcom/autosdk/R$id;->scroll_helper_view:I

    invoke-interface {p0, v0}, Lk/e/j/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinScrollView;

    iput-object v0, p0, Lk/e/v/j/h/o;->B3:Lcom/autonavi/skin/view/SkinScrollView;

    sget v0, Lcom/autosdk/R$id;->arrow_top:I

    invoke-interface {p0, v0}, Lk/e/j/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lk/e/v/j/h/o;->G3:Landroid/view/View;

    sget v0, Lcom/autosdk/R$id;->arrow_bottom:I

    invoke-interface {p0, v0}, Lk/e/j/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lk/e/v/j/h/o;->H3:Landroid/view/View;

    iget-object v0, p0, Lk/e/j/c/l;->c:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    invoke-virtual {v0}, Lcom/autosdk/framework/fragmentcontainer/BaseFragment;->n()Lcom/autosdk/framework/fragmentcontainer/FragmentIntent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autosdk/framework/fragmentcontainer/FragmentIntent;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lk/e/v/j/h/o;->j1(I)V

    iget-object v0, p0, Lk/e/v/j/h/o;->B3:Lcom/autonavi/skin/view/SkinScrollView;

    iget-object v1, p0, Lk/e/v/j/h/o;->N3:Landroid/view/View$OnScrollChangeListener;

    invoke-interface {p0, v0, v1}, Lk/e/j/d/j0;->setOnScrollChangeListener(Landroid/view/View;Landroid/view/View$OnScrollChangeListener;)V

    invoke-virtual {p0}, Lk/e/v/j/h/o;->g1()V

    goto/16 :goto_139

    :cond_59
    sget v0, Lcom/autosdk/R$id;->user_car_help_group:I

    invoke-interface {p0, v0}, Lk/e/j/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lk/e/v/j/h/o;->F3:Landroid/widget/RadioGroup;

    sget v0, Lcom/autosdk/R$id;->user_car_phone_connect_applications_stl:I

    invoke-interface {p0, v0}, Lk/e/j/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTabLayout;

    iput-object v0, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    if-eqz v0, :cond_aa

    iget-object v2, p0, Lk/e/j/c/l;->l:Landroid/app/Activity;

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v3

    if-eqz v3, :cond_7a

    sget v3, Lcom/autosdk/R$color;->common_tab_indicator_color_night:I

    goto :goto_7c

    :cond_7a
    sget v3, Lcom/autosdk/R$color;->common_tab_indicator_color_day:I

    :goto_7c
    invoke-static {v2, v3}, Lh/g/b/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    iget-object v0, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    iget-object v2, p0, Lk/e/j/c/l;->l:Landroid/app/Activity;

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v3

    if-eqz v3, :cond_90

    sget v3, Lcom/autosdk/R$color;->byd_pvt_white_900_60:I

    goto :goto_92

    :cond_90
    sget v3, Lcom/autosdk/R$color;->byd_pvt_black_900_60:I

    :goto_92
    invoke-static {v2, v3}, Lh/g/b/a;->c(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lk/e/j/c/l;->l:Landroid/app/Activity;

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v4

    if-eqz v4, :cond_a1

    sget v4, Lcom/autosdk/R$color;->byd_pvt_white_900_90:I

    goto :goto_a3

    :cond_a1
    sget v4, Lcom/autosdk/R$color;->byd_pvt_black_900_90:I

    :goto_a3
    invoke-static {v3, v4}, Lh/g/b/a;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    :cond_aa
    sget v0, Lcom/autosdk/R$id;->setting_home_background:I

    invoke-interface {p0, v0}, Lk/e/j/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinConstraintLayout;

    iput-object v0, p0, Lk/e/v/j/h/o;->J3:Lcom/autonavi/skin/view/SkinConstraintLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v0, p0, Lk/e/v/j/h/o;->J3:Lcom/autonavi/skin/view/SkinConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lk/e/v/j/h/o;->J3:Lcom/autonavi/skin/view/SkinConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    sget v0, Lcom/autosdk/R$id;->view_pager:I

    invoke-interface {p0, v0}, Lk/e/j/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lk/e/v/j/h/o;->v1:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    if-eqz v0, :cond_124

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-nez v0, :cond_124

    iget-object v0, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    sget v3, Lcom/autosdk/R$string;->interconnection_application_byd:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    iget-object v0, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    sget v3, Lcom/autosdk/R$string;->interconnection_application_weichat:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    iget-object v0, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    sget v3, Lcom/autosdk/R$string;->interconnection_application_gaode:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    iget-object v0, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    sget v3, Lcom/autosdk/R$string;->interconnection_application_dazhong:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    iget-object v0, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    sget v3, Lcom/autosdk/R$string;->interconnection_application_meituan:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    :cond_124
    iget v0, p0, Lk/e/v/j/h/o;->C3:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_133

    iget-object v0, p0, Lk/e/j/c/l;->c:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    invoke-virtual {v0}, Lcom/autosdk/framework/fragmentcontainer/BaseFragment;->n()Lcom/autosdk/framework/fragmentcontainer/FragmentIntent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autosdk/framework/fragmentcontainer/FragmentIntent;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_133
    invoke-virtual {p0, v0}, Lk/e/v/j/h/o;->i1(I)V

    invoke-virtual {p0}, Lk/e/v/j/h/o;->e1()V

    :goto_139
    return-void
.end method

.method public final b1(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_41

    const/4 v0, 0x3

    if-eq p1, v0, :cond_33

    const/4 v0, 0x4

    if-eq p1, v0, :cond_25

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDiPublicSystemProperty()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v0, Lcom/autosdk/R$string;->interconnection_application_linghui_title:I

    goto :goto_1b

    :cond_17
    iget-object p1, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v0, Lcom/autosdk/R$string;->interconnection_application_byd_title:I

    :goto_1b
    invoke-static {v0}, Lk/e/d/q0/j2;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget p1, Lcom/autosdk/R$layout;->phone_connect_car_byd_new_help:I

    return p1

    :cond_25
    iget-object p1, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v0, Lcom/autosdk/R$string;->interconnection_application_meituan_title:I

    invoke-static {v0}, Lk/e/d/q0/j2;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget p1, Lcom/autosdk/R$layout;->phone_connect_car_meituan_new_help:I

    return p1

    :cond_33
    iget-object p1, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v0, Lcom/autosdk/R$string;->interconnection_application_dazhong_title:I

    invoke-static {v0}, Lk/e/d/q0/j2;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget p1, Lcom/autosdk/R$layout;->phone_connect_car_dazhong_new_help:I

    return p1

    :cond_41
    iget-object p1, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v0, Lcom/autosdk/R$string;->interconnection_application_gaode_title:I

    invoke-static {v0}, Lk/e/d/q0/j2;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget p1, Lcom/autosdk/R$layout;->phone_connect_car_gaode_new_help:I

    return p1

    :cond_4f
    iget-object p1, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v0, Lcom/autosdk/R$string;->interconnection_application_weichat_title:I

    invoke-static {v0}, Lk/e/d/q0/j2;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget p1, Lcom/autosdk/R$layout;->phone_connect_car_wechat_new_help:I

    return p1
.end method

.method public c1()Landroid/view/View;
    .registers 4

    invoke-static {}, Lk/e/d/q0/j2;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-interface {p0}, Lk/e/j/d/j0;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final d1(III)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    add-int/2addr p1, p2

    if-lt p1, p3, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    const/16 p1, 0x8

    if-eqz v2, :cond_18

    if-eqz v0, :cond_18

    iget-object p2, p0, Lk/e/v/j/h/o;->H3:Landroid/view/View;

    invoke-interface {p0, p2, p1}, Lk/e/j/d/j0;->setViewVisibility(Landroid/view/View;I)V

    goto :goto_1f

    :cond_18
    if-eqz v2, :cond_25

    iget-object p2, p0, Lk/e/v/j/h/o;->H3:Landroid/view/View;

    invoke-interface {p0, p2, v1}, Lk/e/j/d/j0;->setViewVisibility(Landroid/view/View;I)V

    :goto_1f
    iget-object p2, p0, Lk/e/v/j/h/o;->G3:Landroid/view/View;

    invoke-interface {p0, p2, p1}, Lk/e/j/d/j0;->setViewVisibility(Landroid/view/View;I)V

    goto :goto_37

    :cond_25
    if-eqz v0, :cond_2d

    iget-object p2, p0, Lk/e/v/j/h/o;->H3:Landroid/view/View;

    invoke-interface {p0, p2, p1}, Lk/e/j/d/j0;->setViewVisibility(Landroid/view/View;I)V

    goto :goto_32

    :cond_2d
    iget-object p1, p0, Lk/e/v/j/h/o;->H3:Landroid/view/View;

    invoke-interface {p0, p1, v1}, Lk/e/j/d/j0;->setViewVisibility(Landroid/view/View;I)V

    :goto_32
    iget-object p1, p0, Lk/e/v/j/h/o;->G3:Landroid/view/View;

    invoke-interface {p0, p1, v1}, Lk/e/j/d/j0;->setViewVisibility(Landroid/view/View;I)V

    :goto_37
    return-void
.end method

.method public final e1()V
    .registers 3

    iget-object v0, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    if-eqz v0, :cond_c

    new-instance v1, Lk/e/v/j/h/o$c;

    invoke-direct {v1, p0}, Lk/e/v/j/h/o$c;-><init>(Lk/e/v/j/h/o;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    :cond_c
    iget-object v0, p0, Lk/e/v/j/h/o;->K3:Lcom/autonavi/skin/view/SkinRelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lk/e/v/j/h/o;->O3:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final f1()Z
    .registers 3

    # PATCH(amap-fix): the landscape/full-screen layout (fragment_interconnect_help)
    # has no "view_pager" child, only "scroll_helper_view".  When the pager is
    # missing, P0() must take the scroll based branch, otherwise it dereferences a
    # null ViewPager and crashes with a NullPointerException.
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isPlatformUI()Z

    move-result v0

    if-eqz v0, :check_pager

    const/4 v0, 0x1

    return v0

    :check_pager
    sget v1, Lcom/autosdk/R$id;->view_pager:I

    invoke-interface {p0, v1}, Lk/e/j/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :has_pager

    const/4 v0, 0x1

    return v0

    :has_pager
    const/4 v0, 0x0

    return v0
.end method

.method public final g1()V
    .registers 4

    iget-object v0, p0, Lk/e/v/j/h/o;->B3:Lcom/autonavi/skin/view/SkinScrollView;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InterconnectHelpView"

    const-string v2, "reStoreScrollY() mScrollHelperView is null"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_f
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lk/e/v/j/h/o$b;

    invoke-direct {v1, p0}, Lk/e/v/j/h/o$b;-><init>(Lk/e/v/j/h/o;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public h1()V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InterconnectHelpView"

    const-string v2, "reloadLayout()"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lk/e/v/j/h/o;->K3:Lcom/autonavi/skin/view/SkinRelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lk/e/j/c/l;->l:Landroid/app/Activity;

    invoke-static {v1}, Lcom/autosdk/common/utils/DPIUtil;->n(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lk/e/j/c/l;->l:Landroid/app/Activity;

    invoke-static {v2}, Lcom/autosdk/common/utils/DPIUtil;->i(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lk/e/v/j/h/o;->K3:Lcom/autonavi/skin/view/SkinRelativeLayout;

    invoke-virtual {p0}, Lk/e/v/j/h/o;->c1()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lk/e/v/j/h/o;->P0()V

    return-void
.end method

.method public final i1(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x3

    if-eq p1, v0, :cond_23

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1f

    invoke-virtual {p0}, Lk/e/v/j/h/o;->k1()V

    iget-object p1, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_31

    :cond_1f
    invoke-virtual {p0}, Lk/e/v/j/h/o;->o1()V

    goto :goto_2e

    :cond_23
    invoke-virtual {p0}, Lk/e/v/j/h/o;->l1()V

    goto :goto_2e

    :cond_27
    invoke-virtual {p0}, Lk/e/v/j/h/o;->m1()V

    goto :goto_2e

    :cond_2b
    invoke-virtual {p0}, Lk/e/v/j/h/o;->p1()V

    :goto_2e
    iget-object p1, p0, Lk/e/v/j/h/o;->D3:Lcom/autonavi/skin/view/SkinTabLayout;

    goto :goto_12

    :goto_31
    return-void
.end method

.method public final j1(I)V
    .registers 6

    iget-object v0, p0, Lk/e/v/j/h/o;->B3:Lcom/autonavi/skin/view/SkinScrollView;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "InterconnectHelpView"

    const-string v1, "showApplicationHelperNew() mScrollHelperView is null"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_f
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lk/e/v/j/h/o;->B3:Lcom/autonavi/skin/view/SkinScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    :cond_1a
    iget-object v0, p0, Lk/e/j/c/l;->c:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, p1}, Lk/e/v/j/h/o;->b1(I)I

    move-result v2

    iget-object v3, p0, Lk/e/v/j/h/o;->B3:Lcom/autonavi/skin/view/SkinScrollView;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDiPublicSystemProperty()Z

    move-result v1

    if-eqz v1, :cond_86

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5d

    sget p1, Lcom/autosdk/R$id;->interconnect_wechat_text1:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/R$string;->interconnection_weichat_help1_linghui_tip:I

    invoke-interface {p0, p1, v1}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;I)V

    sget p1, Lcom/autosdk/R$id;->interconnect_wechat_text2:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/R$string;->interconnection_weichat_help_linghui_tip:I

    invoke-interface {p0, p1, v1}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;I)V

    sget p1, Lcom/autosdk/R$id;->interconnect_byd_text4:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/autonavi/skin/view/SkinTextView;

    :goto_59
    invoke-interface {p0, p1, v1}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;I)V

    goto :goto_86

    :cond_5d
    if-nez p1, :cond_86

    sget p1, Lcom/autosdk/R$id;->img_phone:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/autonavi/skin/view/SkinImageView;

    if-eqz p1, :cond_6e

    sget v1, Lcom/autosdk/R$drawable;->icon_interconnnect_helper_linghui_phone:I

    invoke-virtual {p1, v1}, Lcom/autonavi/skin/view/SkinImageView;->setBackgroundResource(I)V

    :cond_6e
    sget p1, Lcom/autosdk/R$id;->interconnect_byd_text1:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/R$string;->interconnect_linghui_text1:I

    invoke-interface {p0, p1, v1}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;I)V

    sget p1, Lcom/autosdk/R$id;->interconnect_byd_text3:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/R$string;->interconnect_linghui_text3:I

    goto :goto_59

    :cond_86
    :goto_86
    iget-object p1, p0, Lk/e/v/j/h/o;->B3:Lcom/autonavi/skin/view/SkinScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final k1()V
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InterconnectHelpView"

    const-string v3, "showBYDHelper()"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->v1:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_byd_help1:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_byd_help2:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lk/e/v/b/j;

    iget-object v2, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-direct {v1, v2}, Lk/e/v/b/j;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lk/e/v/j/h/o;->v2:Lk/e/v/b/j;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lk/e/v/j/h/o;->v1:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lk/e/v/j/h/o;->v2:Lk/e/v/b/j;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lk/e/v/j/h/o;->n1(I)V

    iput v0, p0, Lk/e/v/j/h/o;->L3:I

    iget-object v1, p0, Lk/e/v/j/h/o;->F3:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinRadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/R$string;->interconnection_application_byd_title:I

    invoke-virtual {p0, v2}, Lk/e/j/c/l;->w0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autosdk/common/settings/ProtocolUtils;->setInterConnectTabPosition(I)V

    return-void
.end method

.method public final l1()V
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InterconnectHelpView"

    const-string v3, "showDaZhongHelper()"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->v1:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_dazhong_help1:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_dazhong_help2:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_dazhong_help3:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lk/e/v/b/j;

    iget-object v2, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-direct {v1, v2}, Lk/e/v/b/j;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lk/e/v/j/h/o;->v2:Lk/e/v/b/j;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lk/e/v/j/h/o;->v1:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lk/e/v/j/h/o;->v2:Lk/e/v/b/j;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lk/e/v/j/h/o;->n1(I)V

    iput v0, p0, Lk/e/v/j/h/o;->L3:I

    iget-object v1, p0, Lk/e/v/j/h/o;->F3:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/R$string;->interconnection_application_dazhong_title:I

    invoke-virtual {p0, v1}, Lk/e/j/c/l;->w0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autosdk/common/settings/ProtocolUtils;->setInterConnectTabPosition(I)V

    return-void
.end method

.method public loadAllLayoutIds()[I
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/autosdk/R$layout;->fragment_interconnect_help:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v2, Lcom/autosdk/R$layout;->fragment_interconnect_help_1_2:I

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    const/4 v3, -0x1

    aput v3, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public final m1()V
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InterconnectHelpView"

    const-string v3, "showGaodeHelper()"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->v1:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_gaode_help1:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_gaode_help2:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lk/e/v/b/j;

    iget-object v2, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-direct {v1, v2}, Lk/e/v/b/j;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lk/e/v/j/h/o;->v2:Lk/e/v/b/j;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lk/e/v/j/h/o;->v1:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lk/e/v/j/h/o;->v2:Lk/e/v/b/j;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lk/e/v/j/h/o;->n1(I)V

    iput v0, p0, Lk/e/v/j/h/o;->L3:I

    iget-object v1, p0, Lk/e/v/j/h/o;->F3:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/R$string;->interconnection_application_gaode_title:I

    invoke-virtual {p0, v1}, Lk/e/j/c/l;->w0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autosdk/common/settings/ProtocolUtils;->setInterConnectTabPosition(I)V

    return-void
.end method

.method public n1(I)V
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    iget-object p1, p0, Lk/e/v/j/h/o;->F3:Landroid/widget/RadioGroup;

    sget v0, Lcom/autosdk/R$id;->user_car_help_index3:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    :goto_d
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b

    :cond_11
    iget-object p1, p0, Lk/e/v/j/h/o;->F3:Landroid/widget/RadioGroup;

    sget v0, Lcom/autosdk/R$id;->user_car_help_index3:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_d

    :goto_1b
    return-void
.end method

.method public final o1()V
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InterconnectHelpView"

    const-string v3, "showMeiTuanHelper()"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->v1:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_meituan_help1:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_meituan_help2:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_meituan_help3:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lk/e/v/b/j;

    iget-object v2, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-direct {v1, v2}, Lk/e/v/b/j;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lk/e/v/j/h/o;->v2:Lk/e/v/b/j;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lk/e/v/j/h/o;->v1:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lk/e/v/j/h/o;->v2:Lk/e/v/b/j;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lk/e/v/j/h/o;->n1(I)V

    iput v0, p0, Lk/e/v/j/h/o;->L3:I

    iget-object v1, p0, Lk/e/v/j/h/o;->F3:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/R$string;->interconnection_application_meituan_title:I

    invoke-virtual {p0, v1}, Lk/e/j/c/l;->w0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autosdk/common/settings/ProtocolUtils;->setInterConnectTabPosition(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lk/e/j/c/l;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "InterconnectHelpView"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lk/e/v/j/h/o;->h1()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InterconnectHelpView"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gez p1, :cond_1c

    return-void

    :cond_1c
    iget-object v0, p0, Lk/e/v/j/h/o;->F3:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput p1, p0, Lk/e/v/j/h/o;->L3:I

    return-void
.end method

.method public final p1()V
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InterconnectHelpView"

    const-string v3, "showWeiChatHelper()"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->v1:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_weichat_help1:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    iget-object v3, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    sget v4, Lcom/autosdk/R$layout;->phone_connect_car_weichat_help2:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lk/e/v/b/j;

    iget-object v2, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-direct {v1, v2}, Lk/e/v/b/j;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lk/e/v/j/h/o;->v2:Lk/e/v/b/j;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lk/e/v/j/h/o;->v1:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lk/e/v/j/h/o;->v2:Lk/e/v/b/j;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lk/e/v/j/h/o;->M3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lk/e/v/j/h/o;->n1(I)V

    iput v0, p0, Lk/e/v/j/h/o;->L3:I

    iget-object v1, p0, Lk/e/v/j/h/o;->F3:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lk/e/v/j/h/o;->y:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/R$string;->interconnection_application_weichat_title:I

    invoke-virtual {p0, v2}, Lk/e/j/c/l;->w0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autosdk/common/settings/ProtocolUtils;->setInterConnectTabPosition(I)V

    return-void
.end method

.method public t0()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lk/e/j/c/l;->l:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lk/e/v/j/h/o;->E3:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lk/e/v/j/h/o;->c1()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinRelativeLayout;

    iput-object v0, p0, Lk/e/v/j/h/o;->K3:Lcom/autonavi/skin/view/SkinRelativeLayout;

    return-object v0
.end method
