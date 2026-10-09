.class public Lcom/autosdk/settings/view/SettingViewR;
.super Lcom/autosdk/settings/view/BaseSettingView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autosdk/settings/view/BaseSettingView<",
        "Lk/e/j/c/n;",
        "Lk/e/s/f/l1;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingViewR"


# instance fields
.field private isFirstCreateView:Z

.field private mAdapter:Lk/e/s/c/i;

.field private mContentView:Lcom/autonavi/skin/view/SkinConstraintLayout;

.field private final mCurrItemSvPercent:[I

.field private mCurrentTabNum:I

.field public mDataSave:Lk/e/s/a;

.field private mDebugEntryTv:Landroid/view/View;

.field private mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

.field private mFrom:Ljava/lang/String;

.field private mPersonMsgTv:Landroid/view/View;

.field private mPresenter:Lk/e/s/f/l1;

.field private mViewPager:Lcom/autonavi/auto/common/view/NoSwipeViewPager;

.field private oldPrefer:I

.field private settingTabTvBroadcast:Lcom/autonavi/skin/view/SkinTextView;

.field private settingTabTvInterconnection:Lcom/autonavi/skin/view/SkinTextView;

.field private settingTabTvNavi:Lcom/autonavi/skin/view/SkinTextView;

.field private settingTabTvPerson:Lcom/autonavi/skin/view/SkinTextView;

.field private settingTitle:Lcom/autonavi/skin/view/SkinTextView;

.field private skinConstraintLayoutBroadcast:Lcom/autonavi/skin/view/SkinLinearLayout;

.field private skinConstraintLayoutInterconnection:Lcom/autonavi/skin/view/SkinLinearLayout;

.field private skinConstraintLayoutNavi:Lcom/autonavi/skin/view/SkinLinearLayout;

.field private skinConstraintLayoutPerson:Lcom/autonavi/skin/view/SkinLinearLayout;

.field private skinLottieAnimationViewBroadcast:Lcom/autonavi/skin/view/SkinLottieAnimationView;

.field private skinLottieAnimationViewInterconnection:Lcom/autonavi/skin/view/SkinLottieAnimationView;

.field private skinLottieAnimationViewNavi:Lcom/autonavi/skin/view/SkinLottieAnimationView;

.field private skinLottieAnimationViewPerson:Lcom/autonavi/skin/view/SkinLottieAnimationView;

.field private skinConstraintLayoutFix:Landroid/view/View;

.field private settingTabTvFix:Lcom/autonavi/skin/view/SkinTextView;


# direct methods
.method public constructor <init>(Lcom/autosdk/framework/fragmentcontainer/BaseFragment;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/BaseSettingView;-><init>(Lcom/autosdk/framework/fragmentcontainer/BaseFragment;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mFrom:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autosdk/settings/view/SettingViewR;->oldPrefer:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mCurrItemSvPercent:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mCurrentTabNum:I

    iput-object p1, p0, Lcom/autosdk/settings/view/SettingViewR;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    new-instance v2, Lk/e/s/a;

    invoke-direct {v2}, Lk/e/s/a;-><init>()V

    iput-object v2, p0, Lcom/autosdk/settings/view/SettingViewR;->mDataSave:Lk/e/s/a;

    invoke-virtual {p1}, Lcom/autosdk/framework/fragmentcontainer/BaseFragment;->n()Lcom/autosdk/framework/fragmentcontainer/FragmentIntent;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-virtual {p1}, Lcom/autosdk/framework/fragmentcontainer/BaseFragment;->n()Lcom/autosdk/framework/fragmentcontainer/FragmentIntent;

    move-result-object v2

    sget-object v3, Lcom/autosdk/bussiness/settings/SettingConstant;->START_SETTING_FROMR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/autosdk/framework/fragmentcontainer/FragmentIntent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autosdk/settings/view/SettingViewR;->mFrom:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/autosdk/framework/fragmentcontainer/BaseFragment;->n()Lcom/autosdk/framework/fragmentcontainer/FragmentIntent;

    move-result-object p1

    sget-object v2, Lcom/autosdk/bussiness/settings/SettingConstant;->START_SETTING_OLD_PREFER:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/autosdk/framework/fragmentcontainer/FragmentIntent;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/autosdk/settings/view/SettingViewR;->oldPrefer:I

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mFrom:Ljava/lang/String;

    aput-object v0, p1, v1

    const-string v0, "SettingViewR"

    const-string v1, "SettingViewR: mFrom:{?}"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/autosdk/bussiness/settings/SettingConstant;->START_SETTING_FROM_VOICE_USER:Ljava/lang/String;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    const/4 p1, 0x3

    iput p1, p0, Lcom/autosdk/settings/view/SettingViewR;->mCurrentTabNum:I

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object p1

    iget v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mCurrentTabNum:I

    invoke-virtual {p1, v0}, Lcom/autosdk/common/settings/ProtocolUtils;->setSettingViewTabPosition(I)V

    :cond_5d
    return-void
.end method

.method public static synthetic access$000(Lcom/autosdk/settings/view/SettingViewR;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/SettingViewR;->selectTab(I)V

    return-void
.end method

.method private broadcastTabSelect()V
    .registers 7

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutBroadcast:Lcom/autonavi/skin/view/SkinLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewPerson:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewNavi:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewInterconnection:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewPerson:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_img_person_unselected_land_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_img_person_unselected_land_night"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewNavi:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_img_navi_unselected_land_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_img_navi_unselected_land_night"

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewInterconnection:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_interconnection_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_interconnection_night"

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewBroadcast:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$raw;->setting_icon_navigation_bobao_unselected_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "setting_icon_navigation_bobao_unselected_night"

    invoke-static {v3, v4, v1}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewBroadcast:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvBroadcast:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method private initViewPager()V
    .registers 3

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mViewPager:Lcom/autonavi/auto/common/view/NoSwipeViewPager;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mAdapter:Lk/e/s/c/i;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mViewPager:Lcom/autonavi/auto/common/view/NoSwipeViewPager;

    new-instance v1, Lcom/autosdk/settings/view/SettingViewR$a;

    invoke-direct {v1, p0}, Lcom/autosdk/settings/view/SettingViewR$a;-><init>(Lcom/autosdk/settings/view/SettingViewR;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mViewPager:Lcom/autonavi/auto/common/view/NoSwipeViewPager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewEnabled(Landroid/view/View;Z)V

    iget v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mCurrentTabNum:I

    invoke-direct {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->selectTab(I)V

    iget v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mCurrentTabNum:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->setCurrentItem(I)V

    :cond_23
    return-void
.end method

.method private interconnectionTabSelect()V
    .registers 7

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutInterconnection:Lcom/autonavi/skin/view/SkinLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewPerson:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewNavi:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewBroadcast:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewPerson:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_img_person_unselected_land_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_img_person_unselected_land_night"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewNavi:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_img_navi_unselected_land_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_img_navi_unselected_land_night"

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewBroadcast:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_img_broadcast_unselected_land_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_img_broadcast_unselected_land_night"

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewInterconnection:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$raw;->setting_icon_navigation_interconnection_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "setting_icon_navigation_interconnection_night"

    invoke-static {v3, v4, v1}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewInterconnection:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvInterconnection:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic lambda$initViews$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$initViews$1(Landroid/view/View;)V
    .registers 1

    invoke-static {}, Lk/e/d/q0/s2;->l()V

    return-void
.end method

.method private synthetic lambda$initViews$2()Z
    .registers 2

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingViewR;->initViewPager()V

    const/4 v0, 0x0

    return v0
.end method

.method private naviTabSelect()V
    .registers 7

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutNavi:Lcom/autonavi/skin/view/SkinLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewPerson:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewBroadcast:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewInterconnection:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewPerson:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_img_person_unselected_land_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_img_person_unselected_land_night"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewBroadcast:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_img_broadcast_unselected_land_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_img_broadcast_unselected_land_night"

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewInterconnection:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_interconnection_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_interconnection_night"

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewNavi:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$raw;->setting_icon_navigation_daohang_unselected_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "setting_icon_navigation_daohang_unselected_night"

    invoke-static {v3, v4, v1}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewNavi:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvNavi:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method private personTabSelect()V
    .registers 7

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutPerson:Lcom/autonavi/skin/view/SkinLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewNavi:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewBroadcast:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewInterconnection:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewNavi:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_img_navi_unselected_land_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_img_navi_unselected_land_night"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewBroadcast:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_img_broadcast_unselected_land_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_img_broadcast_unselected_land_night"

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewInterconnection:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->icon_setting_interconnection_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "icon_setting_interconnection_night"

    invoke-static {v3, v4, v5}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewPerson:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$raw;->setting_icon_navigation_person_unselected_day:I

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    const-string v4, "setting_icon_navigation_person_unselected_night"

    invoke-static {v3, v4, v1}, Lk/e/d/q0/n1;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingViewR;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewPerson:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingViewR;->playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvPerson:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method private repeatLayout()V
    .registers 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SettingViewR"

    const-string v3, " ---repeatLayout--- "

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    :try_start_b
    iget-object v3, p0, Lcom/autosdk/settings/view/SettingViewR;->mViewPager:Lcom/autonavi/auto/common/view/NoSwipeViewPager;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    goto :goto_15

    :cond_14
    move v3, v0

    :goto_15
    iget-object v4, p0, Lcom/autosdk/settings/view/SettingViewR;->mAdapter:Lk/e/s/c/i;

    if-eqz v4, :cond_36

    iget-object v4, v4, Lk/e/s/c/i;->k:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_36

    instance-of v5, v4, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;

    if-eqz v5, :cond_2f

    check-cast v4, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;

    iget-object v5, p0, Lcom/autosdk/settings/view/SettingViewR;->mCurrItemSvPercent:[I

    aput v3, v5, v0

    invoke-virtual {v4}, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;->X()F

    move-result v3

    float-to-int v3, v3

    aput v3, v5, v1

    goto :goto_3d

    :cond_2f
    iget-object v4, p0, Lcom/autosdk/settings/view/SettingViewR;->mCurrItemSvPercent:[I

    aput v3, v4, v0

    aput v0, v4, v1

    goto :goto_3d

    :cond_36
    const-string v3, "repeatLayout could not fond current fragment"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3d
    iget-object v3, p0, Lcom/autosdk/settings/view/SettingViewR;->mDataSave:Lk/e/s/a;

    if-eqz v3, :cond_43

    iput-boolean v0, v3, Lk/e/s/a;->a:Z

    :cond_43
    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingViewR;->clearListener()V

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingViewR;->mContentView:Lcom/autonavi/skin/view/SkinConstraintLayout;

    if-eqz v3, :cond_9f

    const-string v3, "removeAllView"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingViewR;->mContentView:Lcom/autonavi/skin/view/SkinConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->a()I

    move-result v5

    if-eq v4, v5, :cond_89

    const-string v5, "updateDPI densityDpi={?}, currentDpi={?}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v2, v5, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v4, v3, v0, v1}, Lcom/autosdk/common/utils/DPIUtil;->D(Landroid/content/Context;Landroid/content/res/Configuration;ZZ)Landroid/content/Context;

    :cond_89
    iget-object v3, p0, Lcom/autosdk/settings/view/SettingViewR;->mContentView:Lcom/autonavi/skin/view/SkinConstraintLayout;

    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingViewR;->getLayoutView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingViewR;->mContentView:Lcom/autonavi/skin/view/SkinConstraintLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    const-string v3, "requestLayout"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9f
    iget-object v3, p0, Lcom/autosdk/settings/view/SettingViewR;->mPresenter:Lk/e/s/f/l1;

    if-eqz v3, :cond_a6

    invoke-virtual {v3}, Lk/e/s/f/l1;->V()V

    :cond_a6
    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingViewR;->initViews()V

    invoke-virtual {p0}, Lcom/autosdk/settings/view/BaseSettingView;->initViewsStatus()V

    const-string v3, "initViewsStatus"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b3} :catch_b4

    goto :goto_c2

    :catch_b4
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "[repeatLayout] isNightMode Exception:::: {?}"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_c2
    return-void
.end method

.method private resetImgs()V
    .registers 3

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutPerson:Lcom/autonavi/skin/view/SkinLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutNavi:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutBroadcast:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutInterconnection:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvNavi:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvBroadcast:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvInterconnection:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvPerson:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutFix:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvFix:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method private selectTab(I)V
    .registers 3

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingViewR;->resetImgs()V

    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_13

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_fix

    goto :goto_1e

    :cond_fix
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingViewR;->fixTabSelect()V

    goto :goto_1e

    :cond_f
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingViewR;->personTabSelect()V

    goto :goto_1e

    :cond_13
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingViewR;->interconnectionTabSelect()V

    goto :goto_1e

    :cond_17
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingViewR;->broadcastTabSelect()V

    goto :goto_1e

    :cond_1b
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingViewR;->naviTabSelect()V

    :goto_1e
    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->v()Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingViewR;->mPersonMsgTv:Landroid/view/View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutPerson:Lcom/autonavi/skin/view/SkinLinearLayout;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    goto :goto_34

    :cond_32
    const/16 v0, 0x8

    :goto_34
    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingViewR;->setViewVisibility(Landroid/view/View;I)V

    :cond_37
    return-void
.end method

.method private fixTabSelect()V
    .registers 3

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutFix:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvFix:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method private setupFixTab()V
    .registers 15

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutPerson:Lcom/autonavi/skin/view/SkinLinearLayout;

    if-eqz v2, :a2

    goto :have_person

    :a2
    iget-object v9, p0, Lcom/autosdk/settings/view/SettingViewR;->mContentView:Lcom/autonavi/skin/view/SkinConstraintLayout;

    if-eqz v9, :a3

    const v0, 0x7f0a0f0f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :a3

    goto :have_person

    :a3
    iget-object v9, p0, Lcom/autosdk/settings/view/BaseUIView;->mMainView:Landroid/view/View;

    if-eqz v9, :a4

    const v0, 0x7f0a0f0f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :a4

    goto :have_person

    :a4
    iget-object v9, p0, Lcom/autosdk/settings/view/SettingViewR;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    if-eqz v9, :no_person

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :no_person

    const v0, 0x7f0a0f0f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :no_person

    :have_person
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :no_ctx

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :no_container

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :no_person

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-direct {v7, v3}, Lcom/autonavi/skin/view/SkinLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    const v4, 0x7f0805e9

    const v5, 0x7f0805ea

    invoke-virtual {v7, v4, v5}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x1f0f0001

    invoke-virtual {v7, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v4, 0x7f070fe5

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    new-instance v10, Lcom/autonavi/skin/view/SkinImageView;

    invoke-direct {v10, v3}, Lcom/autonavi/skin/view/SkinImageView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v4, 0x7f070080

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v5, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f081d3b

    const v5, 0x7f081d3c

    invoke-virtual {v10, v4, v5}, Lcom/autonavi/skin/view/SkinImageView;->setImageResource(II)V

    const v4, 0x1f0f0002

    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0, v10, p0}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Lcom/autonavi/skin/view/SkinTextView;

    invoke-direct {v10, v3}, Lcom/autonavi/skin/view/SkinTextView;-><init>(Landroid/content/Context;)V

    const-string v4, "冥城修复"

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x2

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f07088d

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v9, 0x0

    invoke-virtual {v10, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const v4, 0x7f060813

    const v5, 0x7f060814

    invoke-virtual {v10, v4, v5}, Lcom/autonavi/skin/view/SkinTextView;->setTextColor(II)V

    const v4, 0x1f0f0003

    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0, v10, p0}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v10, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvFix:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v7, p0}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iput-object v7, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutFix:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/autosdk/settings/view/SettingFixTabFitter;

    invoke-direct {v4, v1}, Lcom/autosdk/settings/view/SettingFixTabFitter;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :done
    return-void

    :no_person
    return-void

    :no_ctx
    return-void

    :no_container
    return-void
.end method

.method private sendPersonPageClick(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/autosdk/bussiness/track/event/value/EventVaulesConstant$UserPageClickContent;
        .end annotation
    .end param

    new-instance v0, Lcom/autosdk/bussiness/track/event/value/user/UserPageClick;

    invoke-direct {v0}, Lcom/autosdk/bussiness/track/event/value/user/UserPageClick;-><init>()V

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/track/event/value/user/UserPageClick;->setContent(I)V

    invoke-static {}, Lcom/autosdk/bussiness/track/MapTrackUtil;->getInstance()Lcom/autosdk/bussiness/track/MapTrackUtil;

    move-result-object p1

    const-string v1, "person_page_click"

    invoke-virtual {p1, v1, v0}, Lcom/autosdk/bussiness/track/MapTrackUtil;->sendBehaviorEvent(Ljava/lang/String;Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public synthetic P()Z
    .registers 2

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingViewR;->lambda$initViews$2()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addOnLayoutChangeListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->addOnLayoutChangeListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public bridge synthetic attachPresenter(Lk/e/j/c/m;)V
    .registers 2

    check-cast p1, Lk/e/s/f/l1;

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingViewR;->attachPresenter(Lk/e/s/f/l1;)V

    return-void
.end method

.method public attachPresenter(Lk/e/s/f/l1;)V
    .registers 2

    iput-object p1, p0, Lcom/autosdk/settings/view/SettingViewR;->mPresenter:Lk/e/s/f/l1;

    return-void
.end method

.method public clearListener()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutPerson:Lcom/autonavi/skin/view/SkinLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutNavi:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutBroadcast:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutInterconnection:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mPersonMsgTv:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mDebugEntryTv:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    invoke-super {p0}, Lcom/autosdk/settings/view/BaseSettingView;->clearListener()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_2a

    :catch_23
    const-string v0, "SettingViewR"

    const-string v1, "clearListener exception!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public bridge synthetic clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V
    .registers 2

    invoke-super {p0, p1}, Lk/e/j/d/j0;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    return-void
.end method

.method public createView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autosdk/settings/view/SettingViewR;->isFirstCreateView:Z

    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingViewR;->getLayoutView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinConstraintLayout;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mContentView:Lcom/autonavi/skin/view/SkinConstraintLayout;

    return-object v0
.end method

.method public destroyViews()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mPresenter:Lk/e/s/f/l1;

    iput-object v0, p0, Lcom/autosdk/settings/view/BaseUIView;->mMainView:Landroid/view/View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutPerson:Lcom/autonavi/skin/view/SkinLinearLayout;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutNavi:Lcom/autonavi/skin/view/SkinLinearLayout;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutBroadcast:Lcom/autonavi/skin/view/SkinLinearLayout;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutInterconnection:Lcom/autonavi/skin/view/SkinLinearLayout;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvNavi:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvBroadcast:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvInterconnection:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutFix:Landroid/view/View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvFix:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mDataSave:Lk/e/s/a;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mContentView:Lcom/autonavi/skin/view/SkinConstraintLayout;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mViewPager:Lcom/autonavi/auto/common/view/NoSwipeViewPager;

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autosdk/common/settings/ProtocolUtils;->setSettingViewTabPosition(I)V

    return-void
.end method

.method public detachPresenter()V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SettingViewR"

    const-string v2, "detachPresenter: "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getLayoutId()I
    .registers 2

    invoke-super {p0}, Lk/e/j/d/j0;->getLayoutId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLayoutId(Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;Z[I)I
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lk/e/j/d/j0;->getLayoutId(Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;Z[I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getLayoutId(Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;Z[IZ)I
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lk/e/j/d/j0;->getLayoutId(Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;Z[IZ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getLayoutId([I)I
    .registers 2

    invoke-super {p0, p1}, Lk/e/j/d/j0;->getLayoutId([I)I

    move-result p1

    return p1
.end method

.method public getLayoutView()Landroid/view/View;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->j()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SettingViewR"

    const-string v2, "screenStatus = {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lk/e/d/q0/j2;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingViewR;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hockAll(Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->hockAll(Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public initViews()V
    .registers 11

    invoke-static {}, Lcom/wzw/scale/DpiScaleManager;->probeViewRInitViews()V

    invoke-static {p0}, Lcom/wzw/scale/DpiScaleManager;->attachUi(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/autosdk/settings/view/BaseSettingView;->initViews()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Lk/e/d/q0/d1;->x()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SettingViewR"

    const-string v4, "initViews [SettingView] byd map version: {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v1, Lcom/autosdk/settings/R$id;->cl_setting_home:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lk/e/s/h/c2;->c:Lk/e/s/h/c2;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2b
    sget v1, Lcom/autosdk/settings/R$id;->setting_vp:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/auto/common/view/NoSwipeViewPager;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mViewPager:Lcom/autonavi/auto/common/view/NoSwipeViewPager;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_ll_person:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinLinearLayout;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutPerson:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_ll_navi:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinLinearLayout;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutNavi:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_ll_broadcast:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinLinearLayout;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutBroadcast:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_ll_interconnection:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinLinearLayout;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutInterconnection:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_image_navi:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewNavi:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_image_broadcast:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewBroadcast:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_image_interconnection:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewInterconnection:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_image_person:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinLottieAnimationViewPerson:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v1, Lcom/autosdk/settings/R$id;->right_msg_tv:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mPersonMsgTv:Landroid/view/View;

    sget v1, Lcom/autosdk/settings/R$id;->right_space:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mDebugEntryTv:Landroid/view/View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_title:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTitle:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_tv_person:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvPerson:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_tv_navi:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvNavi:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_tv_broadcast:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvBroadcast:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_tab_tv_interconnection:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvInterconnection:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTitle:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$string;->settings_title:I

    invoke-virtual {p0, v1, v2}, Lcom/autosdk/settings/view/SettingViewR;->updateViewText(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvPerson:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$string;->settings_tab_person:I

    invoke-virtual {p0, v1, v2}, Lcom/autosdk/settings/view/SettingViewR;->updateViewText(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvNavi:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$string;->settings_tab_navi:I

    invoke-virtual {p0, v1, v2}, Lcom/autosdk/settings/view/SettingViewR;->updateViewText(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvBroadcast:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$string;->settings_tab_broadcast:I

    invoke-virtual {p0, v1, v2}, Lcom/autosdk/settings/view/SettingViewR;->updateViewText(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->settingTabTvInterconnection:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$string;->settings_tab_interconnection:I

    invoke-virtual {p0, v1, v2}, Lcom/autosdk/settings/view/SettingViewR;->updateViewText(Landroid/view/View;I)V

    sget v1, Lcom/autosdk/settings/R$id;->setting_back_hotspot:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutPerson:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutNavi:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutBroadcast:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->skinConstraintLayoutInterconnection:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingViewR;->setupFixTab()V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mPersonMsgTv:Landroid/view/View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mDebugEntryTv:Landroid/view/View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    sget v1, Lcom/autosdk/settings/R$id;->iv_switch_map_sr:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lk/e/s/h/b2;->c:Lk/e/s/h/b2;

    invoke-virtual {p0, v1, v2}, Lcom/autosdk/settings/view/SettingViewR;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    invoke-static {}, Lk/e/d/q0/s2;->i()Z

    move-result v2

    if-eqz v2, :cond_12c

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->j()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v2

    sget-object v4, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->LANDSCAPE_FULL:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-ne v2, v4, :cond_12c

    move v2, v3

    goto :goto_12e

    :cond_12c
    const/16 v2, 0x8

    :goto_12e
    invoke-virtual {p0, v1, v2}, Lcom/autosdk/settings/view/SettingViewR;->setViewVisibility(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    if-eqz v1, :cond_197

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_150

    sget-object v1, Lcom/autosdk/bussiness/settings/SettingConstant;->START_SETTING_FROMR:Ljava/lang/String;

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingViewR;->mFrom:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/autosdk/bussiness/settings/SettingConstant;->START_SETTING_OLD_PREFER:Ljava/lang/String;

    iget v2, p0, Lcom/autosdk/settings/view/SettingViewR;->oldPrefer:I

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_150
    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_165

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_165

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    invoke-virtual {v1, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_165
    new-instance v1, Lk/e/s/c/i;

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingViewR;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/autosdk/settings/view/SettingViewR;->mDataSave:Lk/e/s/a;

    iget-object v9, p0, Lcom/autosdk/settings/view/SettingViewR;->mCurrItemSvPercent:[I

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lk/e/s/c/i;-><init>(Landroidx/fragment/app/FragmentManager;ILandroid/os/Bundle;Lk/e/s/a;[I)V

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mAdapter:Lk/e/s/c/i;

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mViewPager:Lcom/autonavi/auto/common/view/NoSwipeViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget v0, p0, Lcom/autosdk/settings/view/SettingViewR;->mCurrentTabNum:I

    if-nez v0, :cond_194

    iget-boolean v0, p0, Lcom/autosdk/settings/view/SettingViewR;->isFirstCreateView:Z

    if-eqz v0, :cond_194

    iput-boolean v3, p0, Lcom/autosdk/settings/view/SettingViewR;->isFirstCreateView:Z

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lk/e/s/h/d2;

    invoke-direct {v1, p0}, Lk/e/s/h/d2;-><init>(Lcom/autosdk/settings/view/SettingViewR;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_197

    :cond_194
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingViewR;->initViewPager()V

    :cond_197
    :goto_197
    return-void
.end method

.method public isEnableMultiTouch()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public loadAllLayoutIds()[I
    .registers 6

    const/16 v0, 0x8

    new-array v0, v0, [I

    sget v1, Lcom/autosdk/settings/R$layout;->fragment_setting_land:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v2, Lcom/autosdk/settings/R$layout;->fragment_setting_1_2:I

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    const/4 v3, -0x1

    aput v3, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/autosdk/settings/R$layout;->fragment_setting_port:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v2, Lcom/autosdk/settings/R$layout;->fragment_setting_1_2_port:I

    const/4 v4, 0x5

    aput v2, v0, v4

    const/4 v2, 0x6

    aput v3, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "SettingViewR"

    const-string v2, "onClick id={?}"

    invoke-static {v0, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/autosdk/settings/R$id;->setting_back_hotspot:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_34

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "SettingViewR"

    const-string v1, "SettingView  onClose setStatusBar!!"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lk/e/d/d0;->b()Lk/e/d/d0;

    move-result-object p1

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lk/e/d/d0;->m(Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingViewR;->mDataSave:Lk/e/s/a;

    if-eqz p1, :cond_25

    iput-boolean v2, p1, Lk/e/s/a;->b:Z

    :cond_25
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingViewR;->mPresenter:Lk/e/s/f/l1;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lk/e/s/f/l1;->V()V

    :cond_2c
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingViewR;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Lcom/autosdk/framework/fragmentcontainer/BaseFragment;->m()V

    goto :goto_70

    :cond_34
    sget v0, Lcom/autosdk/settings/R$id;->setting_tab_ll_navi:I

    if-ne p1, v0, :cond_3c

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/SettingViewR;->setCurrentItem(I)V

    goto :goto_70

    :cond_3c
    sget v0, Lcom/autosdk/settings/R$id;->setting_tab_ll_broadcast:I

    if-ne p1, v0, :cond_44

    invoke-virtual {p0, v2}, Lcom/autosdk/settings/view/SettingViewR;->setCurrentItem(I)V

    goto :goto_70

    :cond_44
    sget v0, Lcom/autosdk/settings/R$id;->setting_tab_ll_interconnection:I

    if-ne p1, v0, :cond_4d

    const/4 p1, 0x2

    :goto_49
    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingViewR;->setCurrentItem(I)V

    goto :goto_70

    :cond_4d
    sget v0, Lcom/autosdk/settings/R$id;->setting_tab_ll_person:I

    if-ne p1, v0, :cond_fixtab

    const/4 p1, 0x3

    goto :goto_49

    :cond_fixtab
    const v0, 0x1f0f0001

    if-ne p1, v0, :cond_fixtab2

    const/4 p1, 0x4

    goto :goto_49

    :cond_fixtab2
    const v0, 0x1f0f0002

    if-ne p1, v0, :cond_fixtab3

    const/4 p1, 0x4

    goto :goto_49

    :cond_fixtab3
    const v0, 0x1f0f0003

    if-ne p1, v0, :cond_53

    const/4 p1, 0x4

    goto :goto_49

    :cond_53
    sget v0, Lcom/autosdk/settings/R$id;->right_msg_tv:I

    if-ne p1, v0, :cond_63

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/SettingViewR;->sendPersonPageClick(I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingViewR;->mPresenter:Lk/e/s/f/l1;

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Lk/e/s/f/l1;->o()V

    goto :goto_70

    :cond_63
    sget v0, Lcom/autosdk/settings/R$id;->right_space:I

    if-ne p1, v0, :cond_70

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingViewR;->mDebugEntryTv:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byd/lane/DebugSettingsPage;->show(Landroid/content/Context;)V

    :cond_70
    :goto_70
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-static {}, Lcom/autosdk/settings/DialogManager;->g()Lcom/autosdk/settings/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/settings/DialogManager;->b()V

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->j()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->LANDSCAPE_1_3:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    invoke-super {p0, p1}, Lcom/autosdk/settings/view/BaseSettingView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-ne v0, v1, :cond_13

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingViewR;->repeatLayout()V

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingViewR;->destroyViews()V

    return-void
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onIntentUpdate(Lcom/autosdk/framework/fragmentcontainer/FragmentIntent;)V
    .registers 4

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SettingViewR"

    const-string v1, "onIntentUpdate: "

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNightModeChanged(I)V
    .registers 2

    invoke-static {p1}, Lcom/byd/lane/DebugSettingsPage;->applyTheme(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onWidgetDestroy()V
    .registers 1

    return-void
.end method

.method public onWidgetPause()V
    .registers 1

    return-void
.end method

.method public onWidgetResume()V
    .registers 1

    return-void
.end method

.method public onWidgetResumed()V
    .registers 1

    return-void
.end method

.method public onWidgetStop()V
    .registers 1

    return-void
.end method

.method public bridge synthetic playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V
    .registers 2

    invoke-super {p0, p1}, Lk/e/j/d/j0;->playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    return-void
.end method

.method public bridge synthetic removeClickListener(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lk/e/j/d/j0;->removeClickListener(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic removeLongClickListener(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lk/e/j/d/j0;->removeLongClickListener(Landroid/view/View;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iput p1, p0, Lcom/autosdk/settings/view/SettingViewR;->mCurrentTabNum:I

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingViewR;->mViewPager:Lcom/autonavi/auto/common/view/NoSwipeViewPager;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/auto/common/view/NoSwipeViewPager;->setCurrentItem(IZ)V

    :cond_a
    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/autosdk/common/settings/ProtocolUtils;->setSettingViewTabPosition(I)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    goto :goto_2a

    :catchall_12
    move-exception v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "SettingViewR"

    const-string v0, "setCurrentItem position={?},th={?}"

    invoke-static {p1, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2a
    return-void
.end method

.method public bridge varargs synthetic setMultiViewEnabled(Z[Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setMultiViewEnabled(Z[Landroid/view/View;)V

    return-void
.end method

.method public bridge varargs synthetic setMultiViewSelected(Z[Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setMultiViewSelected(Z[Landroid/view/View;)V

    return-void
.end method

.method public bridge varargs synthetic setMultiViewVisibility(I[Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setMultiViewVisibility(I[Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setOnClickListener(ILandroid/view/View$OnClickListener;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setOnClickListener(ILandroid/view/View$OnClickListener;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setOnLongClickListener(Landroid/view/View;Landroid/view/View$OnLongClickListener;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setOnLongClickListener(Landroid/view/View;Landroid/view/View$OnLongClickListener;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setOnScrollChangeListener(Landroid/view/View;Landroid/view/View$OnScrollChangeListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setOnScrollChangeListener(Landroid/view/View;Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method public bridge synthetic setViewActivated(Landroid/view/View;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setViewActivated(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic setViewBackground(Lcom/autonavi/skin/view/SkinLinearLayout;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lk/e/j/d/j0;->setViewBackground(Lcom/autonavi/skin/view/SkinLinearLayout;II)V

    return-void
.end method

.method public bridge synthetic setViewEnabled(Landroid/view/View;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic setViewImageResource(Lcom/autonavi/skin/view/SkinImageView;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lk/e/j/d/j0;->setViewImageResource(Lcom/autonavi/skin/view/SkinImageView;II)V

    return-void
.end method

.method public bridge synthetic setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lk/e/j/d/j0;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    return-void
.end method

.method public bridge synthetic setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lk/e/j/d/j0;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    return-void
.end method

.method public bridge synthetic setViewSelected(IZ)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setViewSelected(IZ)V

    return-void
.end method

.method public bridge synthetic setViewSelected(Landroid/view/View;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic setViewTextColor(Lcom/autonavi/skin/view/SkinTextView;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lk/e/j/d/j0;->setViewTextColor(Lcom/autonavi/skin/view/SkinTextView;II)V

    return-void
.end method

.method public bridge synthetic setViewVisibility(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setViewVisibility(II)V

    return-void
.end method

.method public bridge synthetic setViewVisibility(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->setViewVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic supportMode()Z
    .registers 2

    invoke-super {p0}, Lk/e/j/d/j0;->supportMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic updateConcatViewText(ILjava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->updateConcatViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic updateConcatViewText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->updateConcatViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic updateView(Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Consumer<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->updateView(Ljava/lang/Object;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic updateViewById(ILjava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Ljava/util/function/Consumer<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->updateViewById(ILjava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic updateViewEnabled(IZ)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->updateViewEnabled(IZ)V

    return-void
.end method

.method public bridge synthetic updateViewEnabled(Landroid/view/View;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->updateViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic updateViewText(ILjava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->updateViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic updateViewText(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lk/e/j/d/j0;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
