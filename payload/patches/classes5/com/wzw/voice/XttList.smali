.class public Lcom/wzw/voice/XttList;
.super Ljava/lang/Object;
.source "XttList.smali"


# static fields
.field private static final FALLBACK_ID:J = 0x2537L

.field private static final KEY_CARRIER:Ljava/lang/String; = "carrier"

.field private static final NAME:Ljava/lang/String; = "\u5c0f\u56e2\u56e2"

.field private static final PREFS:Ljava/lang/String; = "wzw_voice"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alignItem(Lcom/autosdk/bussiness/common/AssetSkuItem;)Z
    .registers 8

    if-eqz p0, :no

    invoke-virtual {p0}, Lcom/autosdk/bussiness/common/AssetSkuItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :no

    const-string v1, "\u5c0f\u56e2\u56e2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :no

    invoke-static {}, Lcom/wzw/voice/XttList;->probeCarrier()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :nopack

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setId(J)V

    const/4 v0, 0x0

    return v0

    :nopack
    invoke-static {}, Lcom/wzw/voice/XttList;->hasVoiceDir()Z

    move-result v4

    invoke-static {}, Lk/e/d/g0;->a()Landroid/app/Application;

    move-result-object v5

    if-eqz v5, :chk_dir

    invoke-static {v5}, Lcom/wzw/voice/VoiceXtt;->installAsync(Landroid/content/Context;)V

    :chk_dir
    if-eqz v4, :tip_need

    const-wide v0, 0x2537L

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setId(J)V

    const/4 v0, 0x0

    return v0

    :tip_need
    invoke-static {}, Lk/e/d/e0;->a()Lk/e/d/e0;

    move-result-object v5

    if-eqz v5, :ret_true

    const-string v6, "\u5c0f\u56e2\u56e2\u6b63\u5728\u51c6\u5907\uff0c\u8bf7\u518d\u70b9\u4e00\u6b21"

    invoke-virtual {v5, v6}, Lk/e/d/e0;->m(Ljava/lang/String;)V

    :ret_true
    const/4 v5, 0x1

    return v5

    :no
    const/4 v0, 0x0

    return v0
.end method

.method public static hasVoiceDir()Z
    .registers 8

    invoke-static {}, Lk/e/d/g0;->a()Landroid/app/Application;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :ret

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :ret

    new-instance v2, Ljava/io/File;

    const-string v3, "BydAutoMap/assets/voice"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :ret

    array-length v3, v2

    const/4 v4, 0x0

    :loop
    if-ge v4, v3, :ret

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmp-long v1, v5, v0

    if-lez v1, :next

    const/4 v7, 0x1

    return v7

    :next
    add-int/lit8 v4, v4, 0x1

    goto :loop
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :ret

    :ret
    return v7
.end method

.method public static inject(IZLjava/util/ArrayList;)V
    .registers 12

    if-eqz p1, :ret

    if-eqz p0, :ok_type

    return-void

    :ok_type
    if-eqz p2, :ret

    invoke-static {}, Lk/e/d/g0;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :ret

    :try_start_0
    invoke-static {v0}, Lcom/wzw/voice/VoiceXtt;->installAsync(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :after_install

    :catch_0
    move-exception v1

    :after_install
    invoke-static {}, Lcom/wzw/voice/XttList;->probeCarrier()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :no_carrier

    move-wide v7, v3

    goto :have_target

    :no_carrier
    const-wide v7, 0x2537L

    :have_target
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :no_dup

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autosdk/bussiness/common/AssetSkuItem;

    if-eqz v2, :loop

    invoke-virtual {v2}, Lcom/autosdk/bussiness/common/AssetSkuItem;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5c0f\u56e2\u56e2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :loop

    return-void

    :no_dup
    :try_start_3
    new-instance v1, Lcom/autosdk/bussiness/common/AssetSkuItem;

    invoke-direct {v1}, Lcom/autosdk/bussiness/common/AssetSkuItem;-><init>()V

    invoke-virtual {v1, v7, v8}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setId(J)V

    const-string v2, "\u5c0f\u56e2\u56e2"

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setName(Ljava/lang/String;)V

    const-string v2, "\u5c0f\u56e2\u56e2\u8bed\u97f3\u5168\u65b0\u5347\u7ea7\uff01\u6bcf\u5929\u90fd\u6709\u65b0\u5185\u5bb9\uff01"

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setDesc(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setSkuType(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setSystemAsset(Z)V

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setMyAsset(Z)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setDownloadStatus(I)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setImageUrl(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setPreviewTexts(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :done

    :catch_3
    move-exception v1

    :done
    :ret
    return-void
.end method

.method public static probeCarrier()J
    .registers 7

    invoke-static {}, Lk/e/d/g0;->a()Landroid/app/Application;

    move-result-object v0

    const-wide/16 v5, -0x1

    if-eqz v0, :ret

    :try_start_0
    const-string v1, "wzw_voice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "carrier"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :ret

    return-wide v3

    :ret
    return-wide v5
.end method

.method public static xttVoiceId(Lcom/autosdk/bussiness/common/AssetSkuItem;)J
    .registers 6

    if-eqz p0, :syspath

    invoke-virtual {p0}, Lcom/autosdk/bussiness/common/AssetSkuItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :syspath

    const-string v1, "\u5c0f\u56e2\u56e2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :syspath

    invoke-static {}, Lcom/wzw/voice/XttList;->probeCarrier()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :fb

    return-wide v0

    :fb
    const-wide v0, 0x2537L

    return-wide v0

    :syspath
    invoke-virtual {p0}, Lcom/autosdk/bussiness/common/AssetSkuItem;->isSystemAsset()Z

    move-result v0

    if-eqz v0, :normal

    const-wide/16 v0, -0x1

    return-wide v0

    :normal
    invoke-virtual {p0}, Lcom/autosdk/bussiness/common/AssetSkuItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static alignPreview(Lcom/autosdk/bussiness/common/AssetSkuItem;)Z
    .registers 7

    if-eqz p0, :no

    invoke-virtual {p0}, Lcom/autosdk/bussiness/common/AssetSkuItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :no

    const-string v1, "\u5c0f\u56e2\u56e2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :no

    invoke-static {}, Lcom/wzw/voice/XttList;->probeCarrier()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :nopack

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/bussiness/common/AssetSkuItem;->setId(J)V

    :no
    const/4 v0, 0x0

    return v0

    :nopack
    invoke-static {}, Lk/e/d/e0;->a()Lk/e/d/e0;

    move-result-object v5

    if-eqz v5, :ret_true

    const-string v6, "\u5185\u7f6e\u5c0f\u56e2\u56e2\u6682\u4e0d\u652f\u6301\u8bd5\u542c\uff0c\u70b9\u9009\u4f7f\u7528\u5373\u53ef\u751f\u6548"

    invoke-virtual {v5, v6}, Lk/e/d/e0;->m(Ljava/lang/String;)V

    :ret_true
    const/4 v5, 0x1

    return v5
.end method
