.class public Lcom/wzw/voice/VoiceXtt;
.super Ljava/lang/Object;
.source "VoiceXtt.java"


# static fields
.field private static final ASSET:Ljava/lang/String; = "wzw_voice/xiaotuantuan"

.field private static final BAK_SUFFIX:Ljava/lang/String; = ".wzwbak"

.field private static final KEY_CARRIER:Ljava/lang/String; = "carrier"

.field private static final PREFS:Ljava/lang/String; = "wzw_voice"

.field private static final SKIT:Ljava/lang/String; = "skit"

.field private static final SKIT_OFF:Ljava/lang/String; = "skit_off"

.field private static final TAG:Ljava/lang/String; = "WZWXTT"

.field private static volatile sApp:Landroid/content/Context;

.field private static volatile sCarrier:J

.field private static volatile sOurHead:[B

.field private static volatile sOurLen:J

.field private static volatile sRenamed:Z

.field private static volatile sStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/wzw/voice/VoiceXtt;->sCarrier:J

    .line 41
    sput-wide v0, Lcom/wzw/voice/VoiceXtt;->sOurLen:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/wzw/voice/VoiceXtt;->install(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 27
    sput-boolean p0, Lcom/wzw/voice/VoiceXtt;->sStarted:Z

    return p0
.end method

.method public static attachContext(Landroid/content/Context;)V
    .registers 5

    .line 206
    :try_start_0
    sget-wide v0, Lcom/wzw/voice/VoiceXtt;->sCarrier:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1f

    if-eqz p0, :cond_1f

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wzw_voice"

    .line 208
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "carrier"

    .line 209
    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/wzw/voice/VoiceXtt;->sCarrier:J
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    .line 213
    :cond_1f
    goto :goto_28

    .line 211
    :catchall_20
    move-exception p0

    .line 212
    const-string v0, "WZWXTT"

    const-string v1, "attachContext"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    :goto_28
    return-void
.end method

.method private static call(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 218
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    .line 221
    goto :goto_1c

    .line 219
    :catchall_16
    move-exception p0

    .line 220
    const-string p2, "WZWXTT"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    :goto_1c
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .registers 1

    .line 348
    if-eqz p0, :cond_8

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_8

    .line 349
    :catchall_6
    move-exception p0

    goto :goto_9

    .line 350
    :cond_8
    :goto_8
    nop

    .line 351
    :goto_9
    return-void
.end method

.method private static copyAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;J)Z
    .registers 14

    .line 301
    const-string v0, "WZWXTT"

    .line 302
    nop

    .line 304
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_76

    .line 305
    :try_start_d
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_72

    .line 306
    const v4, 0x8000

    :try_start_15
    new-array v4, v4, [B

    .line 307
    const-wide/16 v5, 0x0

    .line 309
    :goto_19
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_25

    .line 310
    invoke-virtual {v3, v4, v1, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 311
    int-to-long v7, v7

    add-long/2addr v5, v7

    goto :goto_19

    .line 313
    :cond_25
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 314
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_70

    .line 315
    nop

    .line 316
    cmp-long v3, v5, p3

    if-nez v3, :cond_42

    :try_start_30
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_72

    cmp-long p2, v3, p3

    if-eqz p2, :cond_39

    goto :goto_42

    .line 320
    :cond_39
    nop

    .line 325
    invoke-static {p0}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 326
    invoke-static {v2}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 320
    const/4 p0, 0x1

    return p0

    .line 317
    :cond_42
    :goto_42
    :try_start_42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5199\u5165 "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " \u548c\u6e90 "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " \u4e0d\u4e00\u81f4"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_42 .. :try_end_68} :catchall_72

    .line 318
    nop

    .line 325
    invoke-static {p0}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 326
    invoke-static {v2}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 318
    return v1

    .line 321
    :catchall_70
    move-exception p2

    goto :goto_74

    :catchall_72
    move-exception p2

    move-object v3, v2

    :goto_74
    move-object v2, p0

    goto :goto_78

    :catchall_76
    move-exception p2

    move-object v3, v2

    .line 322
    :goto_78
    :try_start_78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "copyAsset "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_78 .. :try_end_8e} :catchall_96

    .line 323
    nop

    .line 325
    invoke-static {v2}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 326
    invoke-static {v3}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 323
    return v1

    .line 325
    :catchall_96
    move-exception p0

    invoke-static {v2}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 326
    invoke-static {v3}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 327
    throw p0
.end method

.method private static findMitFont(Ljava/io/File;Z)Ljava/io/File;
    .registers 14

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 139
    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 140
    :cond_8
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_6d

    aget-object v4, p0, v3

    .line 141
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_6a

    .line 142
    :cond_16
    invoke-static {v4}, Lcom/wzw/voice/VoiceXtt;->hasAmapPack(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_6a

    .line 143
    :cond_1d
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 144
    if-nez v4, :cond_24

    goto :goto_6a

    .line 145
    :cond_24
    array-length v5, v4

    move v6, v2

    :goto_26
    if-ge v6, v5, :cond_6a

    aget-object v7, v4, v6

    .line 146
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-static {v7}, Lcom/wzw/voice/VoiceXtt;->isMind(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_37

    goto :goto_67

    .line 147
    :cond_37
    if-nez p1, :cond_66

    invoke-static {v7}, Lcom/wzw/voice/VoiceXtt;->isOurFont(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_66

    new-instance v8, Ljava/io/File;

    .line 148
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".wzwbak"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_66

    .line 149
    goto :goto_67

    .line 151
    :cond_66
    return-object v7

    .line 145
    :cond_67
    :goto_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 140
    :cond_6a
    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 154
    :cond_6d
    return-object v0
.end method

.method private static hasAmapPack(Ljava/io/File;)Z
    .registers 6

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 159
    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 160
    :cond_8
    array-length v1, p0

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_25

    aget-object v3, p0, v2

    .line 161
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_amap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 p0, 0x1

    return p0

    .line 160
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 163
    :cond_25
    return v0
.end method

.method private static install(Landroid/content/Context;)V
    .registers 20

    .line 68
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "BydAutoMap/assets/voice"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 70
    const-string v3, "WZWXTT"

    if-nez v2, :cond_30

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no voice dir: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static/range {p0 .. p0}, Lcom/wzw/voice/VoiceXtt;->seedPack(Landroid/content/Context;)V

    return-void

    .line 74
    :cond_30
    invoke-static/range {p0 .. p0}, Lcom/wzw/voice/VoiceXtt;->ourLength(Landroid/content/Context;)J

    move-result-wide v4

    .line 75
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_40

    .line 77
    const-string v0, "\u5305\u5185\u65e0\u968f\u5305\u97f3\u5e93\uff0c\u5c0f\u56e2\u56e2\u529f\u80fd\u672a\u542f\u7528"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 80
    :cond_40
    const-string v8, "wzw_voice"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 81
    const-string v10, "carrier"

    const-wide/16 v11, -0x1

    invoke-interface {v8, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 84
    cmp-long v15, v13, v6

    if-lez v15, :cond_62

    new-instance v15, Ljava/io/File;

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v15, v1}, Lcom/wzw/voice/VoiceXtt;->findMitFont(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v1

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    .line 85
    :goto_63
    if-nez v1, :cond_92

    .line 86
    nop

    .line 87
    array-length v11, v2

    move v12, v9

    const-wide/16 v16, -0x1

    :goto_6a
    if-ge v12, v11, :cond_90

    aget-object v13, v2, v12

    .line 88
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wzw/voice/VoiceXtt;->parseId(Ljava/lang/String;)J

    move-result-wide v14

    const-wide v4, 0x2537L

    cmp-long v18, v14, v4

    if-nez v18, :cond_7b

    goto :goto_8d

    .line 89
    cmp-long v18, v14, v6

    if-gtz v18, :cond_7b

    goto :goto_8d

    .line 90
    :cond_7b
    invoke-static {v13, v9}, Lcom/wzw/voice/VoiceXtt;->findMitFont(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v13

    .line 91
    if-eqz v13, :cond_8d

    cmp-long v18, v16, v6

    if-ltz v18, :cond_89

    cmp-long v18, v14, v16

    if-gez v18, :cond_8d

    .line 92
    :cond_89
    nop

    .line 93
    move-object v1, v13

    move-wide/from16 v16, v14

    .line 87
    :cond_8d
    :goto_8d
    add-int/lit8 v12, v12, 0x1

    goto :goto_6a

    :cond_90
    move-wide/from16 v13, v16

    .line 97
    :cond_92
    if-nez v1, :cond_9a

    .line 98
    const-string v0, "\u6ca1\u6709\u53ef\u7528\u7684 MIT \u97f3\u5e93\u8f7d\u4f53\uff0c\u7b49\u7528\u6237\u4e0b\u8f7d\u4e00\u6761\u518d\u751f\u6548"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static/range {p0 .. p0}, Lcom/wzw/voice/VoiceXtt;->seedPack(Landroid/content/Context;)V

    return-void

    .line 101
    :cond_9a
    sput-wide v13, Lcom/wzw/voice/VoiceXtt;->sCarrier:J

    .line 102
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v10, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8f7d\u4f53 id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " \u97f3\u5e93="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".wzwbak"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    invoke-static {v1}, Lcom/wzw/voice/VoiceXtt;->isOurFont(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_10b

    .line 107
    const-string v0, "\u8f7d\u4f53\u91cc\u5df2\u7ecf\u662f\u5c0f\u56e2\u56e2\uff0c\u8df3\u8fc7\u8986\u76d6"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    .line 109
    :cond_10b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_11d

    invoke-static {v1, v2}, Lcom/wzw/voice/VoiceXtt;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_11d

    .line 110
    const-string v0, "\u5907\u4efd\u539f\u97f3\u5e93\u5931\u8d25\uff0c\u653e\u5f03\u8986\u76d6"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 113
    :cond_11d
    const-string v2, "wzw_voice/xiaotuantuan"

    invoke-static {v0, v2, v1, v4, v5}, Lcom/wzw/voice/VoiceXtt;->copyAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u97f3\u5e93\u5df2\u5199\u5165 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_13f
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v4, "skit"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skit "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v5, "skit_off"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/wzw/voice/VoiceXtt;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 123
    const-string v0, "\u5df2\u632a\u8d70"

    goto :goto_171

    :cond_16f
    const-string v0, "\u632a\u52a8\u5931\u8d25"

    :goto_171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_17c
    return-void

    .line 116
    :cond_17d
    const-string v0, "\u97f3\u5e93\u5199\u5165\u4e0d\u5b8c\u6574\uff0c\u653e\u5f03"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public static installAsync(Landroid/content/Context;)V
    .registers 3

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 48
    sput-object p0, Lcom/wzw/voice/VoiceXtt;->sApp:Landroid/content/Context;

    .line 52
    sget-boolean v0, Lcom/wzw/voice/VoiceXtt;->sStarted:Z

    if-eqz v0, :cond_b

    return-void

    .line 53
    :cond_b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wzw/voice/VoiceXtt;->sStarted:Z

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wzw/voice/VoiceXtt$1;

    invoke-direct {v1, p0}, Lcom/wzw/voice/VoiceXtt$1;-><init>(Landroid/content/Context;)V

    const-string p0, "wzw-xtt"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    return-void
.end method

.method private static isMind(Ljava/io/File;)Z
    .registers 9

    .line 226
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".wzwbak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 227
    :cond_e
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 228
    nop

    .line 230
    const/4 v3, 0x0

    :try_start_13
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_53

    const-wide/16 v6, 0x1000

    cmp-long v4, v4, v6

    if-gez v4, :cond_21

    .line 237
    invoke-static {v3}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 230
    return v1

    .line 231
    :cond_21
    :try_start_21
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_53

    .line 232
    :try_start_26
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result p0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_50

    if-eq p0, v0, :cond_30

    .line 237
    invoke-static {v4}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 232
    return v1

    .line 233
    :cond_30
    :try_start_30
    aget-byte p0, v2, v1

    const/16 v0, 0x4d

    if-ne p0, v0, :cond_4c

    const/4 p0, 0x1

    aget-byte v0, v2, p0

    const/16 v3, 0x69

    if-ne v0, v3, :cond_4c

    const/4 v0, 0x2

    aget-byte v0, v2, v0

    const/16 v3, 0x6e

    if-ne v0, v3, :cond_4c

    const/4 v0, 0x3

    aget-byte v0, v2, v0
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_50

    const/16 v2, 0x64

    if-ne v0, v2, :cond_4c

    move v1, p0

    .line 237
    :cond_4c
    invoke-static {v4}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 233
    return v1

    .line 234
    :catchall_50
    move-exception p0

    move-object v3, v4

    goto :goto_54

    :catchall_53
    move-exception p0

    .line 235
    :goto_54
    nop

    .line 237
    invoke-static {v3}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 235
    return v1
.end method

.method private static isOurFont(Ljava/io/File;)Z
    .registers 8

    .line 275
    sget-object v0, Lcom/wzw/voice/VoiceXtt;->sOurHead:[B

    .line 276
    sget-wide v1, Lcom/wzw/voice/VoiceXtt;->sOurLen:J

    .line 277
    const/4 v3, 0x0

    if-eqz v0, :cond_54

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_54

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v1

    if-eqz v1, :cond_16

    goto :goto_54

    .line 278
    :cond_16
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 279
    nop

    .line 281
    const/4 v4, 0x0

    :try_start_1c
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_4e

    .line 282
    move p0, v3

    .line 283
    :goto_22
    if-ge p0, v1, :cond_32

    .line 284
    rsub-int/lit8 v4, p0, 0x10

    :try_start_26
    invoke-virtual {v5, v2, p0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2f

    .line 285
    if-gtz v4, :cond_2d

    goto :goto_32

    .line 286
    :cond_2d
    add-int/2addr p0, v4

    .line 287
    goto :goto_22

    .line 293
    :catchall_2f
    move-exception p0

    move-object v4, v5

    goto :goto_4f

    .line 288
    :cond_32
    :goto_32
    if-ge p0, v1, :cond_38

    .line 296
    invoke-static {v5}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 288
    return v3

    .line 289
    :cond_38
    move p0, v3

    :goto_39
    if-ge p0, v1, :cond_48

    .line 290
    :try_start_3b
    aget-byte v4, v2, p0

    aget-byte v6, v0, p0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_2f

    if-eq v4, v6, :cond_45

    .line 296
    invoke-static {v5}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 290
    return v3

    .line 289
    :cond_45
    add-int/lit8 p0, p0, 0x1

    goto :goto_39

    .line 292
    :cond_48
    nop

    .line 296
    invoke-static {v5}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 292
    const/4 p0, 0x1

    return p0

    .line 293
    :catchall_4e
    move-exception p0

    .line 294
    :goto_4f
    nop

    .line 296
    invoke-static {v4}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 294
    return v3

    .line 277
    :cond_54
    :goto_54
    return v3
.end method

.method private static ourLength(Landroid/content/Context;)J
    .registers 11

    .line 243
    sget-wide v0, Lcom/wzw/voice/VoiceXtt;->sOurLen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    sget-wide v0, Lcom/wzw/voice/VoiceXtt;->sOurLen:J

    return-wide v0

    .line 244
    :cond_b
    nop

    .line 246
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v3, "wzw_voice/xiaotuantuan"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 247
    const/16 p0, 0x10

    new-array v3, p0, [B

    .line 248
    const/4 v4, 0x0

    .line 249
    :goto_1e
    if-ge v4, p0, :cond_2b

    .line 250
    rsub-int/lit8 v5, v4, 0x10

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 251
    if-gtz v5, :cond_29

    goto :goto_2b

    .line 252
    :cond_29
    add-int/2addr v4, v5

    .line 253
    goto :goto_1e

    .line 254
    :cond_2b
    :goto_2b
    int-to-long v5, v4

    .line 255
    const v7, 0x8000

    new-array v7, v7, [B

    .line 257
    :goto_31
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_49

    if-lez v8, :cond_3a

    int-to-long v8, v8

    add-long/2addr v5, v8

    goto :goto_31

    .line 258
    :cond_3a
    if-ge v4, p0, :cond_40

    .line 266
    invoke-static {v2}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 258
    return-wide v0

    .line 259
    :cond_40
    :try_start_40
    sput-object v3, Lcom/wzw/voice/VoiceXtt;->sOurHead:[B

    .line 260
    sput-wide v5, Lcom/wzw/voice/VoiceXtt;->sOurLen:J
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_49

    .line 261
    nop

    .line 266
    invoke-static {v2}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 261
    return-wide v5

    .line 262
    :catchall_49
    move-exception p0

    .line 263
    :try_start_4a
    const-string v3, "WZWXTT"

    const-string v4, "\u8bfb\u4e0d\u5230\u968f\u5305\u97f3\u5e93 wzw_voice/xiaotuantuan"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_56

    .line 264
    nop

    .line 266
    invoke-static {v2}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 264
    return-wide v0

    .line 266
    :catchall_56
    move-exception p0

    invoke-static {v2}, Lcom/wzw/voice/VoiceXtt;->close(Ljava/io/Closeable;)V

    .line 267
    throw p0
.end method

.method private static parseId(Ljava/lang/String;)J
    .registers 3

    .line 340
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-wide v0

    .line 341
    :catchall_5
    move-exception p0

    .line 342
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static relabel(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)V"
        }
    .end annotation

    .line 169
    const-string v0, "WZWXTT"

    :try_start_2
    sget-object v1, Lcom/wzw/voice/VoiceXtt;->sApp:Landroid/content/Context;

    if-eqz v1, :cond_b

    .line 172
    sget-object v1, Lcom/wzw/voice/VoiceXtt;->sApp:Landroid/content/Context;

    invoke-static {v1}, Lcom/wzw/voice/VoiceXtt;->installAsync(Landroid/content/Context;)V

    .line 174
    :cond_b
    if-eqz p0, :cond_af

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_af

    .line 175
    :cond_15
    sget-wide v1, Lcom/wzw/voice/VoiceXtt;->sCarrier:J

    .line 176
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1e

    return-void

    .line 177
    :cond_1e
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 178
    if-nez v3, :cond_2f

    goto :goto_22

    .line 179
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.autosdk.bussiness.common.AssetSkuItem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 180
    goto :goto_22

    .line 181
    :cond_40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getId"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 182
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 183
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_22

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_62

    goto :goto_22

    .line 184
    :cond_62
    const-string v4, "setName"

    const-string v5, "\u5c0f\u56e2\u56e2"

    invoke-static {v3, v4, v5}, Lcom/wzw/voice/VoiceXtt;->call(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v4, "setDesc"

    const-string v5, "\u5c0f\u56e2\u56e2\u8bed\u97f3\u5168\u65b0\u5347\u7ea7\uff01\u6bcf\u5929\u90fd\u6709\u65b0\u5185\u5bb9\uff01"

    invoke-static {v3, v4, v5}, Lcom/wzw/voice/VoiceXtt;->call(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v4, "setImageUrl"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/wzw/voice/VoiceXtt;->call(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setPreviewTexts"

    const-class v6, Ljava/util/ArrayList;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 192
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-boolean v3, Lcom/wzw/voice/VoiceXtt;->sRenamed:Z

    if-nez v3, :cond_ac

    .line 194
    const/4 v3, 0x1

    sput-boolean v3, Lcom/wzw/voice/VoiceXtt;->sRenamed:Z

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6761\u76ee\u5df2\u6539\u540d\u4e3a\u5c0f\u56e2\u56e2 id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_2 .. :try_end_ac} :catchall_b0

    .line 197
    :cond_ac
    goto/16 :goto_22

    .line 200
    :cond_ae
    goto :goto_b6

    .line 174
    :cond_af
    :goto_af
    return-void

    .line 198
    :catchall_b0
    move-exception p0

    .line 199
    const-string v1, "relabel"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    :goto_b6
    return-void
.end method

.method private static rename(Ljava/io/File;Ljava/io/File;)Z
    .registers 2

    .line 332
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    .line 333
    :catchall_5
    move-exception p0

    .line 334
    const/4 p0, 0x0

    return p0
.end method

.method private static seedPack(Landroid/content/Context;)V
    .registers 12

    move-object/from16 v0, p0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1
    new-instance v2, Ljava/io/File;
    const-string v3, "BydAutoMap/assets/voice/9527"
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;
    const-string v4, "isstts.cfg"
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    if-nez v4, :goto_ret

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;
    const-string v4, "tts"
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;
    const-string v4, "tts/voices"
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;
    const-string v4, "isstts.cfg"
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "wzw_voice/xtt_seed/isstts.cfg"
    const-wide/32 v6, 0x754
    invoke-static {v0, v5, v3, v6, v7}, Lcom/wzw/voice/VoiceXtt;->copyAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;J)Z

    new-instance v3, Ljava/io/File;
    const-string v4, "tts/parameter.cfg"
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "wzw_voice/xtt_seed/tts/parameter.cfg"
    const-wide/32 v6, 0x347
    invoke-static {v0, v5, v3, v6, v7}, Lcom/wzw/voice/VoiceXtt;->copyAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;J)Z

    new-instance v3, Ljava/io/File;
    const-string v4, "tts/languagedata_embedded.bin"
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "wzw_voice/xtt_seed/tts/languagedata_embedded.bin"
    const-wide/32 v6, 0x49b0e3
    invoke-static {v0, v5, v3, v6, v7}, Lcom/wzw/voice/VoiceXtt;->copyAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;J)Z

    new-instance v3, Ljava/io/File;
    const-string v4, "tts/voices/voicefont.bin"
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "wzw_voice/xtt_seed/tts/voices/voicefont.bin"
    const-wide/32 v6, 0x228d
    invoke-static {v0, v5, v3, v6, v7}, Lcom/wzw/voice/VoiceXtt;->copyAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;J)Z

    new-instance v3, Ljava/io/File;
    const-string v4, "tts/voices/nvzhongyin"
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "wzw_voice/xiaotuantuan"
    const-wide/32 v6, 0xc80a88
    invoke-static {v0, v5, v3, v6, v7}, Lcom/wzw/voice/VoiceXtt;->copyAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;J)Z

    const-string v3, "WZWXTT"
    const-string v4, "seedPack 9527 done"
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_ret
    return-void

    :catch_0
    move-exception v1

    const-string v2, "WZWXTT"
    const-string v3, "seedPack"
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
