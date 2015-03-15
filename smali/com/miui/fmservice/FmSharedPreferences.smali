.class public Lcom/miui/fmservice/FmSharedPreferences;
.super Ljava/lang/Object;
.source "FmSharedPreferences.java"


# static fields
.field private static LAST_AF_JUMP_VALUE:Ljava/lang/String;

.field private static mAFAutoSwitch:Z

.field private static mCountry:I

.field private static mFMConfiguration:Lqcom/fmradio/FmConfig;

.field private static mFrequencyBand_Stepsize:I

.field private static mListIndex:I

.field private static mNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRecordDuration:I

.field private static mTunedFrequency:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "last_af_jump_value"

    sput-object v0, Lcom/miui/fmservice/FmSharedPreferences;->LAST_AF_JUMP_VALUE:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mNameMap:Ljava/util/Map;

    .line 97
    const v0, 0x17f34

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mTunedFrequency:I

    .line 98
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    .line 100
    const/16 v0, 0x8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mCountry:I

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/fmservice/FmSharedPreferences;->mAFAutoSwitch:Z

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mRecordDuration:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmservice/FmSharedPreferences;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lqcom/fmradio/FmConfig;

    invoke-direct {v0}, Lqcom/fmradio/FmConfig;-><init>()V

    sput-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    .line 107
    invoke-virtual {p0}, Lcom/miui/fmservice/FmSharedPreferences;->Load()V

    .line 108
    return-void
.end method

.method public static getAutoAFSwitch()Z
    .locals 1

    .prologue
    .line 664
    sget-boolean v0, Lcom/miui/fmservice/FmSharedPreferences;->mAFAutoSwitch:Z

    return v0
.end method

.method public static getFMConfiguration()Lqcom/fmradio/FmConfig;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    return-object v0
.end method

.method public static isRBDSStd()Z
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCountry(I)V
    .locals 7
    .param p0, "nCountryCode"    # I

    .prologue
    const/16 v6, 0x32

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 333
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 334
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 335
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 336
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 337
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x155cc

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 338
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a5e0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 340
    packed-switch p0, :pswitch_data_0

    .line 615
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid: countryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/16 p0, 0x8

    .line 619
    :goto_0
    sput p0, Lcom/miui/fmservice/FmSharedPreferences;->mCountry:I

    .line 620
    const-string v0, "Fm:FmSharedPreferences"

    const-string v1, "====================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Country     :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioBand   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getRadioBand()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emphasis    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getEmphasis()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChSpacing   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RdsStd      :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LowerLimit  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpperLimit  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v0, "Fm:FmSharedPreferences"

    const-string v1, "====================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void

    .line 345
    :pswitch_0
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 346
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 347
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 348
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 349
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x155cc

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 350
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 351
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 357
    :pswitch_1
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 364
    :pswitch_2
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 365
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 366
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 367
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x128e0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 368
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 369
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 375
    :pswitch_3
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 376
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 377
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 378
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 379
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a5e0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 380
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 388
    :pswitch_4
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15694

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 389
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 395
    :pswitch_5
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 396
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 402
    :pswitch_6
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 408
    :pswitch_7
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 409
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 410
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x155cc

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 411
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 412
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 418
    :pswitch_8
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x153d8

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 419
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 425
    :pswitch_9
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 431
    :pswitch_a
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 432
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 433
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 439
    :pswitch_b
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 445
    :pswitch_c
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 453
    :pswitch_d
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 454
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 455
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 461
    :pswitch_e
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 467
    :pswitch_f
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x16378

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 468
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x19fa0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 469
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 475
    :pswitch_10
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 476
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 477
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 483
    :pswitch_11
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 484
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 485
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 491
    :pswitch_12
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 492
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 493
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 494
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 500
    :pswitch_13
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 501
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 502
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 503
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 504
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15824

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 505
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 506
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 512
    :pswitch_14
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 518
    :pswitch_15
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x157c0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 519
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a1f8

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 520
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 526
    :pswitch_16
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 532
    :pswitch_17
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 533
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 534
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x157c0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 535
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 541
    :pswitch_18
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 542
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 543
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 549
    :pswitch_19
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 555
    :pswitch_1a
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x157c0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 556
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 562
    :pswitch_1b
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 568
    :pswitch_1c
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 574
    :pswitch_1d
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 580
    :pswitch_1e
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 586
    :pswitch_1f
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 592
    :pswitch_20
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 598
    :pswitch_21
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 604
    :pswitch_22
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 605
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 606
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 607
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 608
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15824

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 609
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 610
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public Load()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    const-string v1, "Fm:FmSharedPreferences"

    const-string v2, "Load preferences "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/miui/fmservice/FmSharedPreferences;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/miui/fmservice/FmSharedPreferences;->mContext:Landroid/content/Context;

    const-string v2, "fmradio_prefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "last_frequency"

    const v2, 0x17f34

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/miui/fmservice/FmSharedPreferences;->mTunedFrequency:I

    .line 139
    const-string v1, "last_record_duration"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/miui/fmservice/FmSharedPreferences;->mRecordDuration:I

    .line 140
    sget-object v1, Lcom/miui/fmservice/FmSharedPreferences;->LAST_AF_JUMP_VALUE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/fmservice/FmSharedPreferences;->mAFAutoSwitch:Z

    .line 142
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/miui/fmservice/FmSharedPreferences;->setCountry(I)V

    .line 144
    const-string v1, "last_list_index"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/miui/fmservice/FmSharedPreferences;->mListIndex:I

    goto :goto_0
.end method
