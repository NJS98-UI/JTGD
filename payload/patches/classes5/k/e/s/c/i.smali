.class public Lk/e/s/c/i;
.super Lh/l/a/q;
.source "SourceFile"


# instance fields
.field public final h:Landroid/os/Bundle;

.field public final i:Lk/e/s/a;

.field public final j:[I

.field public k:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;ILandroid/os/Bundle;Lk/e/s/a;[I)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lh/l/a/q;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    iput-object p3, p0, Lk/e/s/c/i;->h:Landroid/os/Bundle;

    iput-object p4, p0, Lk/e/s/c/i;->i:Lk/e/s/a;

    if-nez p5, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Lk/e/s/c/i;->j:[I

    goto :goto_14

    :cond_d
    array-length p1, p5

    invoke-static {p5, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lk/e/s/c/i;->j:[I

    :goto_14
    return-void
.end method


# virtual methods
.method public a(I)Landroidx/fragment/app/Fragment;
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SettingsFragmentPagerAdapterR"

    const-string v4, "getItem: {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lk/e/s/c/i;->j:[I

    aget v2, v1, v3

    if-ne v2, p1, :cond_1a

    aget v1, v1, v0

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    if-nez p1, :cond_2e

    new-instance p1, Lcom/autosdk/settings/view/fragments/SettingNaviFragment;

    int-to-float v0, v1

    invoke-direct {p1, v0}, Lcom/autosdk/settings/view/fragments/SettingNaviFragment;-><init>(F)V

    :goto_23
    iget-object v0, p0, Lk/e/s/c/i;->i:Lk/e/s/a;

    invoke-virtual {p1, v0}, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;->d0(Lk/e/s/a;)V

    iget-object v0, p0, Lk/e/s/c/i;->h:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_41

    :cond_2e
    if-ne p1, v0, :cond_37

    new-instance p1, Lcom/autosdk/settings/view/fragments/SettingBroadcastFragment;

    int-to-float v0, v1

    invoke-direct {p1, v0}, Lcom/autosdk/settings/view/fragments/SettingBroadcastFragment;-><init>(F)V

    goto :goto_23

    :cond_37
    const/4 v0, 0x2

    if-ne p1, v0, :cond_42

    new-instance p1, Lcom/autosdk/settings/view/fragments/SettingInterconnectFragment;

    int-to-float v0, v1

    invoke-direct {p1, v0}, Lcom/autosdk/settings/view/fragments/SettingInterconnectFragment;-><init>(F)V

    goto :goto_23

    :goto_41
    return-object p1

    :cond_42
    const/4 v0, 0x3

    if-ne p1, v0, :cond_fix

    new-instance p1, Lcom/autosdk/user/fragment/accountfragment/UserFragment;

    invoke-direct {p1}, Lcom/autosdk/user/fragment/accountfragment/UserFragment;-><init>()V

    return-object p1

    :cond_fix
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4b

    new-instance p1, Lcom/autosdk/settings/view/fragments/SettingFixFragment;

    int-to-float v0, v1

    invoke-direct {p1, v0}, Lcom/autosdk/settings/view/fragments/SettingFixFragment;-><init>(F)V

    goto/16 :goto_23

    :cond_4b
    invoke-virtual {p0, v3}, Lk/e/s/c/i;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lh/l/a/q;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const-string p2, "SettingsFragmentPagerAdapterR"

    const-string p3, "destroyItem position={?}, obj={?}"

    invoke-static {p2, p3, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-super {p0, p1}, Lh/l/a/q;->finishUpdate(Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SettingsFragmentPagerAdapterR"

    const-string v1, "finishUpdate: "

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Lh/l/a/q;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string p1, "SettingsFragmentPagerAdapterR"

    const-string p2, "instantiateItem: {?}"

    invoke-static {p1, p2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    move-object v1, p2

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SettingsFragmentPagerAdapterR"

    const-string v2, "isViewFromObject: {?} == {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lh/l/a/q;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lh/l/a/q;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "SettingsFragmentPagerAdapterR"

    const-string v0, "restoreState: "

    invoke-static {p2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SettingsFragmentPagerAdapterR"

    const-string v2, "saveState: "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lh/l/a/q;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5

    move-object v0, p3

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lk/e/s/c/i;->k:Landroidx/fragment/app/Fragment;

    invoke-super {p0, p1, p2, p3}, Lh/l/a/q;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const-string p2, "SettingsFragmentPagerAdapterR"

    const-string p3, "setPrimaryItem pos: {?} ,obj: {?}"

    invoke-static {p2, p3, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-super {p0, p1}, Lh/l/a/q;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SettingsFragmentPagerAdapterR"

    const-string v1, "startUpdate: "

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
