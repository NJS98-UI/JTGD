.class public Lcom/autosdk/settings/view/fragments/SettingFixFragment;
.super Lcom/autosdk/settings/view/fragments/SettingInterconnectFragment;
.source "SettingFixFragment.java"

# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autosdk/settings/view/fragments/BaseSettingFragment<",
        "Lcom/autosdk/settings/view/SettingFixView;",
        "Lk/e/s/f/h1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/fragments/SettingInterconnectFragment;-><init>(F)V

    return-void
.end method


# virtual methods
.method public i0(Lcom/autosdk/framework/fragmentcontainer/BaseFragment;)Lcom/autosdk/settings/view/SettingInterconnectView;
    .registers 3

    new-instance v0, Lcom/autosdk/settings/view/SettingFixView;

    invoke-direct {v0, p0}, Lcom/autosdk/settings/view/SettingFixView;-><init>(Lcom/autosdk/framework/fragmentcontainer/BaseFragment;)V

    return-object v0
.end method
