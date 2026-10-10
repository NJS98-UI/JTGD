.class public Lcom/wzw/voice/XttList;
.super Ljava/lang/Object;
.source "XttList.smali"


# static fields
.field private static final ASSET:Ljava/lang/String; = "wzw_voice/xiaotuantuan"

.field private static final DESC:Ljava/lang/String; = "\u5c0f\u56e2\u56e2\u8bed\u97f3\u5168\u65b0\u5347\u7ea7\uff01\u6bcf\u5929\u90fd\u6709\u65b0\u5185\u5bb9\uff01"

.field private static final FALLBACK_ID:J = 0x2537L

.field private static final KEY_CARRIER:Ljava/lang/String; = "carrier"

.field private static final NAME:Ljava/lang/String; = "\u5c0f\u56e2\u56e2"

.field private static final PREFS:Ljava/lang/String; = "wzw_voice"

.field private static final TAG:Ljava/lang/String; = "XttList"

.field private static final VOICE_DIR:Ljava/lang/String; = "BydAutoMap/assets/voice/9527/wzw"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static seedFont(Landroid/content/Context;J)V
    .registers 12

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :ret

    new-instance v1, Ljava/io/File;

    const-string v2, "BydAutoMap/assets/voice/9527/wzw"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    const-string v3, "voicefont.bin"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :do_copy

    return-void

    :do_copy
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "wzw_voice/xiaotuantuan"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x8000

    new-array v4, v3, [B

    :loop
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :eof

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :loop

    :eof
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :ret
    return-void
.end method


# virtual methods
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
    :try_start_1
    const-string v1, "wzw_voice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "carrier"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String; J)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :after_carrier

    :catch_1
    move-exception v1

    const-wide/16 v3, -0x1

    :after_carrier
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :no_carrier

    move-wide v7, v3

    goto :have_target

    :no_carrier
    const-wide v7, 0x2537L

    :try_start_2
    invoke-static {v0, v7, v8}, Lcom/wzw/voice/XttList;->seedFont(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :have_target

    :catch_2
    move-exception v1

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
