.class public Lcom/miui/fmradio/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final MAX_FREQUENCY:I

.field public static final MIN_FREQUENCY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x1a5e0

    invoke-static {v0}, Lcom/miui/fmradio/Utils;->toUnifiedFrequency(I)I

    move-result v0

    sput v0, Lcom/miui/fmradio/Utils;->MAX_FREQUENCY:I

    .line 33
    const v0, 0x153d8

    invoke-static {v0}, Lcom/miui/fmradio/Utils;->toUnifiedFrequency(I)I

    move-result v0

    sput v0, Lcom/miui/fmradio/Utils;->MIN_FREQUENCY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatFrequency(I)Ljava/lang/String;
    .locals 4
    .param p0, "freq"    # I

    .prologue
    .line 37
    const-string v0, "%d.%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/miui/fmradio/Utils;->getMHZ(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/miui/fmradio/Utils;->getKHZ(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDefaultFrequency()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x2238

    return v0
.end method

.method public static final getFrequency(F)I
    .locals 1
    .param p0, "freq"    # F

    .prologue
    .line 69
    const/high16 v0, 0x42c80000

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static final getKHZ(I)I
    .locals 1
    .param p0, "frequency"    # I

    .prologue
    .line 57
    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static final getMHZ(I)I
    .locals 1
    .param p0, "frequency"    # I

    .prologue
    .line 53
    div-int/lit8 v0, p0, 0x64

    return v0
.end method

.method public static final getMaxFrequency()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/miui/fmradio/Utils;->MAX_FREQUENCY:I

    return v0
.end method

.method public static final getMinFrequency()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/miui/fmradio/Utils;->MIN_FREQUENCY:I

    return v0
.end method

.method public static final isValidFrequency(I)Z
    .locals 1
    .param p0, "frequency"    # I

    .prologue
    .line 41
    sget v0, Lcom/miui/fmradio/Utils;->MAX_FREQUENCY:I

    if-gt p0, v0, :cond_0

    sget v0, Lcom/miui/fmradio/Utils;->MIN_FREQUENCY:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toServiceUsedFrequency(I)I
    .locals 2
    .param p0, "unifiedFreq"    # I

    .prologue
    .line 77
    int-to-float v0, p0

    const/high16 v1, 0x41200000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static toUnifiedFrequency(I)I
    .locals 2
    .param p0, "uniqueFreq"    # I

    .prologue
    .line 81
    int-to-float v0, p0

    const/high16 v1, 0x41200000

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
