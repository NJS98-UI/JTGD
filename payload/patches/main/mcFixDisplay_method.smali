.method private mcFixDisplay()Z
    .registers 6

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0
    if-eqz v0, :cond_mc_stay
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0
    if-eqz v0, :cond_mc_stay
    const/4 v1, 0x2
    if-eq v0, v1, :cond_mc_stay

    sget v0, Lcom/byd/automap/activity/MainActivity;->mcDispFixTries:I
    const/4 v1, 0x3
    if-ge v0, v1, :cond_mc_stay

    add-int/lit8 v0, v0, 0x1
    sput v0, Lcom/byd/automap/activity/MainActivity;->mcDispFixTries:I

    new-instance v0, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/byd/automap/activity/McDispFixCheck;
    invoke-direct {v1, p0}, Lcom/byd/automap/activity/McDispFixCheck;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x320
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_mc_stay
    const/4 v0, 0x0
    sput v0, Lcom/byd/automap/activity/MainActivity;->mcDispFixTries:I
    const/4 v0, 0x0
    return v0
.end method
