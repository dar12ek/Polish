.class public Lcom/miui/fmradio/StationItemHelper;
.super Ljava/lang/Object;
.source "StationItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;,
        Lcom/miui/fmradio/StationItemHelper$Station;
    }
.end annotation


# static fields
.field private static mStationItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/fmradio/StationItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mStationListListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationListListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static addOrUpdateSingleStation(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const v4, 0x7f0a0020

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "inList":Z
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 231
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 234
    :cond_0
    const/4 v2, 0x0

    .line 235
    .local v2, "item":Lcom/miui/fmradio/StationItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 236
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/miui/fmradio/StationItem;
    check-cast v2, Lcom/miui/fmradio/StationItem;

    .line 237
    .restart local v2    # "item":Lcom/miui/fmradio/StationItem;
    iget v3, v2, Lcom/miui/fmradio/StationItem;->frequency:I

    if-ne v3, p1, :cond_3

    .line 238
    if-eqz p2, :cond_2

    iget-object v3, v2, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/miui/fmradio/StationItem;->type:I

    if-eq v3, p3, :cond_2

    .line 239
    :cond_1
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/StationItem;

    iput-object p2, v3, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    .line 240
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/StationItem;

    iput p3, v3, Lcom/miui/fmradio/StationItem;->type:I

    .line 241
    invoke-static {p0, p1, p2, p3}, Lcom/miui/fmradio/StationItemHelper;->updateSingleStationInDataBase(Landroid/content/Context;ILjava/lang/String;I)V

    .line 243
    :cond_2
    const/4 v1, 0x1

    .line 235
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_4
    if-nez v1, :cond_6

    .line 247
    new-instance v2, Lcom/miui/fmradio/StationItem;

    .end local v2    # "item":Lcom/miui/fmradio/StationItem;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {v2, p1, v3, p3}, Lcom/miui/fmradio/StationItem;-><init>(ILjava/lang/String;I)V

    .line 248
    .restart local v2    # "item":Lcom/miui/fmradio/StationItem;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 249
    :cond_5
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {p0, p1, p2, p3}, Lcom/miui/fmradio/StationItemHelper;->addSingleStationInDataBase(Landroid/content/Context;ILjava/lang/String;I)V

    .line 252
    :cond_6
    if-eqz v2, :cond_7

    .line 253
    invoke-static {v2}, Lcom/miui/fmradio/StationItemHelper;->notifyStationListChange(Lcom/miui/fmradio/StationItem;)V

    .line 255
    :cond_7
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/miui/fmradio/StationItemHelper;->checkStationDivider(Landroid/content/Context;I)V

    .line 256
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/miui/fmradio/StationItemHelper;->checkStationDivider(Landroid/content/Context;I)V

    .line 257
    invoke-static {}, Lcom/miui/fmradio/StationItemHelper;->sortByFrequency()V

    .line 258
    return-void

    .end local v2    # "item":Lcom/miui/fmradio/StationItem;
    :cond_8
    move-object v3, p2

    .line 247
    goto :goto_1
.end method

.method private static addSingleStationInDataBase(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 261
    invoke-static {p1, p2, p3}, Lcom/miui/fmradio/StationItemHelper;->createContentValues(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 262
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/StationItemHelper$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 263
    return-void
.end method

.method private static checkStationDivider(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v2, -0x1

    .line 113
    invoke-static {p0, p1}, Lcom/miui/fmradio/StationItemHelper;->hasSpecifiedStations(Landroid/content/Context;I)Z

    move-result v1

    .line 114
    .local v1, "has":Z
    invoke-static {p0, p1}, Lcom/miui/fmradio/StationItemHelper;->findSpecifiedStationsDivider(Landroid/content/Context;I)I

    move-result v0

    .line 115
    .local v0, "dividerIndex":I
    if-eqz v1, :cond_1

    .line 116
    if-ne v0, v2, :cond_0

    .line 117
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/miui/fmradio/StationItem$StationitemDivider;

    const/4 v4, 0x0

    const-string v5, "divider"

    invoke-direct {v3, v4, v5, p1}, Lcom/miui/fmradio/StationItem$StationitemDivider;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    if-eq v0, v2, :cond_0

    .line 121
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clearNormalItems(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 162
    const-string v2, "type=0"

    .line 163
    .local v2, "where":Ljava/lang/String;
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/fmradio/StationItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/StationItem;

    .line 165
    .local v0, "item":Lcom/miui/fmradio/StationItem;
    iget v3, v0, Lcom/miui/fmradio/StationItem;->type:I

    if-nez v3, :cond_0

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 169
    .end local v0    # "item":Lcom/miui/fmradio/StationItem;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/miui/fmradio/StationItemHelper$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    invoke-static {v5}, Lcom/miui/fmradio/StationItemHelper;->notifyStationListChange(Lcom/miui/fmradio/StationItem;)V

    .line 171
    return-void
.end method

.method private static createContentValues(ILjava/lang/String;I)Landroid/content/ContentValues;
    .locals 3
    .param p0, "freq"    # I
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 298
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "label"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v1, "frequnecy"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    return-object v0
.end method

.method public static deleteSingleStation(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I

    .prologue
    .line 272
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 273
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 276
    :cond_0
    const/4 v1, 0x0

    .line 277
    .local v1, "item":Lcom/miui/fmradio/StationItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 278
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/miui/fmradio/StationItem;
    check-cast v1, Lcom/miui/fmradio/StationItem;

    .line 279
    .restart local v1    # "item":Lcom/miui/fmradio/StationItem;
    iget v3, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    if-ne v3, p1, :cond_3

    .line 280
    iget v2, v1, Lcom/miui/fmradio/StationItem;->type:I

    .line 281
    .local v2, "type":I
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 282
    invoke-static {p0, v2}, Lcom/miui/fmradio/StationItemHelper;->checkStationDivider(Landroid/content/Context;I)V

    .line 283
    invoke-static {p0, p1}, Lcom/miui/fmradio/StationItemHelper;->deleteSingleStationInDataBase(Landroid/content/Context;I)V

    .line 287
    .end local v2    # "type":I
    :cond_1
    if-eqz v1, :cond_2

    .line 288
    invoke-static {v1}, Lcom/miui/fmradio/StationItemHelper;->notifyStationListChange(Lcom/miui/fmradio/StationItem;)V

    .line 290
    :cond_2
    return-void

    .line 277
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static deleteSingleStationInDataBase(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I

    .prologue
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frequnecy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/StationItemHelper$Station;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public static findSpecifiedStationsDivider(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 100
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 101
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 103
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 104
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/StationItem;

    .line 105
    .local v1, "item":Lcom/miui/fmradio/StationItem;
    instance-of v2, v1, Lcom/miui/fmradio/StationItem$StationitemDivider;

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/miui/fmradio/StationItem;->type:I

    if-ne v2, p1, :cond_1

    .line 109
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/miui/fmradio/StationItem;
    :goto_1
    return v0

    .line 103
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/miui/fmradio/StationItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "item":Lcom/miui/fmradio/StationItem;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getCurrentFrequency(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const-string v2, "com.miui.fmradio_preferences"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "pre_cur_freq"

    invoke-static {}, Lcom/miui/fmradio/Utils;->getDefaultFrequency()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "freq":I
    invoke-static {v0}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const-string v2, "Fm:FmStationItemHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current frequency "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, reset it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v0, 0x2238

    .line 133
    :cond_0
    return v0
.end method

.method public static getNormalStationItemCount(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 217
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 220
    .local v0, "count":I
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/fmradio/StationItem;

    .line 221
    .local v2, "item":Lcom/miui/fmradio/StationItem;
    iget v3, v2, Lcom/miui/fmradio/StationItem;->type:I

    if-nez v3, :cond_1

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "item":Lcom/miui/fmradio/StationItem;
    :cond_2
    return v0
.end method

.method public static getStationItem(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pos"    # I

    .prologue
    .line 189
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 190
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 192
    :cond_0
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/StationItem;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStationItemByFreq(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I

    .prologue
    .line 196
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 197
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 199
    :cond_0
    const/4 v2, 0x0

    .line 200
    .local v2, "result":Lcom/miui/fmradio/StationItem;
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/StationItem;

    .line 201
    .local v1, "item":Lcom/miui/fmradio/StationItem;
    iget v3, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    if-ne v3, p1, :cond_1

    .line 202
    move-object v2, v1

    goto :goto_0

    .line 205
    .end local v1    # "item":Lcom/miui/fmradio/StationItem;
    :cond_2
    return-object v2
.end method

.method public static getStationItemCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 210
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 212
    :cond_0
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static hasSpecifiedStations(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "has":Z
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 88
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->reloadItems(Landroid/content/Context;)V

    .line 90
    :cond_0
    sget-object v3, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/fmradio/StationItem;

    .line 91
    .local v2, "item":Lcom/miui/fmradio/StationItem;
    instance-of v3, v2, Lcom/miui/fmradio/StationItem$StationitemDivider;

    if-nez v3, :cond_1

    iget v3, v2, Lcom/miui/fmradio/StationItem;->type:I

    if-ne v3, p1, :cond_1

    .line 92
    const/4 v0, 0x1

    .line 96
    .end local v2    # "item":Lcom/miui/fmradio/StationItem;
    :cond_2
    return v0
.end method

.method private static notifyStationListChange(Lcom/miui/fmradio/StationItem;)V
    .locals 3
    .param p0, "item"    # Lcom/miui/fmradio/StationItem;

    .prologue
    .line 71
    sget-object v2, Lcom/miui/fmradio/StationItemHelper;->mStationListListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    .line 72
    .local v1, "l":Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;
    invoke-interface {v1, p0}, Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;->onStationItemChanged(Lcom/miui/fmradio/StationItem;)V

    goto :goto_0

    .line 74
    .end local v1    # "l":Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;
    :cond_0
    return-void
.end method

.method public static registerStationListChangeListener(Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;)V
    .locals 1
    .param p0, "l"    # Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    .prologue
    .line 63
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationListListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method private static reloadItems(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 137
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/StationItemHelper$Station;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/fmradio/StationItemHelper$Station;->COLUMNS:[Ljava/lang/String;

    const-string v5, "type DESC, frequnecy"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    const-string v0, "label"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "label":Ljava/lang/String;
    const-string v0, "frequnecy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 148
    .local v7, "freq":I
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 149
    .local v9, "type":I
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/fmradio/StationItem;

    invoke-direct {v1, v7, v8, v9}, Lcom/miui/fmradio/StationItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v7    # "freq":I
    .end local v8    # "label":Ljava/lang/String;
    .end local v9    # "type":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 152
    :cond_2
    if-eqz v6, :cond_3

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/fmradio/StationItemHelper;->checkStationDivider(Landroid/content/Context;I)V

    .line 157
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/fmradio/StationItemHelper;->checkStationDivider(Landroid/content/Context;I)V

    .line 158
    invoke-static {}, Lcom/miui/fmradio/StationItemHelper;->sortByFrequency()V

    .line 159
    return-void
.end method

.method public static setCurrentFrequency(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I

    .prologue
    .line 77
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 79
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pre_cur_freq"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private static sortByFrequency()V
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/fmradio/StationItemHelper$1;

    invoke-direct {v1}, Lcom/miui/fmradio/StationItemHelper$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 186
    return-void
.end method

.method public static unregisterStationListChangeListener(Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;)V
    .locals 1
    .param p0, "l"    # Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    .prologue
    .line 67
    sget-object v0, Lcom/miui/fmradio/StationItemHelper;->mStationListListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method private static updateSingleStationInDataBase(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freq"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frequnecy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "where":Ljava/lang/String;
    invoke-static {p1, p2, p3}, Lcom/miui/fmradio/StationItemHelper;->createContentValues(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 268
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/fmradio/StationItemHelper$Station;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 269
    return-void
.end method
