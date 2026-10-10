.class public Lcom/byd/automap/activity/McDispFixCheck;
.super Ljava/lang/Object;
.source "McDispFixCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byd/automap/activity/McDispFixCheck;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/byd/automap/activity/McDispFixCheck;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_mc_ret

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1
    if-nez v1, :cond_mc_ret

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1
    if-eqz v1, :cond_mc_reset

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1
    if-eqz v1, :cond_mc_reset

    const/4 v2, 0x2
    if-eq v1, v2, :cond_mc_reset

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2
    if-eqz v2, :cond_mc_move

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2
    if-eqz v2, :cond_mc_move

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3
    if-nez v3, :cond_mc_reset

    :cond_mc_move
    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    :try_start_mc_move
    const-string v6, "android.app.ActivityTaskManager"
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    const-string v7, "getService"
    const/4 v8, 0x0
    new-array v8, v8, [Ljava/lang/Class;
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    const/4 v7, 0x0
    const/4 v8, 0x0
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    const-string v6, "android.app.IActivityTaskManager"
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    const-string v7, "moveTaskToDisplay"
    const/4 v8, 0x2
    new-array v7, v8, [Ljava/lang/Class;
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    const/4 v1, 0x0
    aput-object v8, v7, v1
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    const/4 v1, 0x1
    aput-object v8, v7, v1
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    const/4 v7, 0x2
    new-array v7, v7, [Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    const/4 v1, 0x0
    aput-object v8, v7, v1
    const/4 v8, 0x0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    const/4 v1, 0x1
    aput-object v8, v7, v1
    const/4 v1, 0x0
    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_mc_move
    .catch Ljava/lang/Throwable; {:try_start_mc_move .. :try_end_mc_move} :catch_mc_move

    const/4 v8, 0x0
    sput v8, Lcom/byd/automap/activity/MainActivity;->mcDispFixTries:I
    return-void

    :catch_mc_move
    move-exception v1

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1
    const-string v2, "mc_fix_display_relaunched"
    const/4 v8, 0x0
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1
    if-nez v1, :cond_mc_giveup

    new-instance v1, Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v2, 0x10008000
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1
    const/4 v8, 0x1
    const-string v2, "mc_fix_display_relaunched"
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1
    const/4 v8, 0x0
    sput-boolean v8, Lk/h/c/r/r;->b:Z
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2
    const/4 v8, 0x0
    invoke-virtual {v2, v8}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v2
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_mc_giveup
    return-void

    :cond_mc_reset
    const/4 v4, 0x0
    sput v4, Lcom/byd/automap/activity/MainActivity;->mcDispFixTries:I

    :cond_mc_ret
    return-void
.end method
