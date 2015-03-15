.class public Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;
.super Landroid/app/DialogFragment;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditStationDialog"
.end annotation


# static fields
.field public static final FRAG_TAG:Ljava/lang/String;


# instance fields
.field private mHasFavorCheck:Z

.field private mIsAdd:Z

.field private mStationItem:Lcom/miui/fmradio/StationItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1079
    const-class v0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->FRAG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1078
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1093
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1094
    if-eqz p1, :cond_0

    .line 1095
    const-string v3, "com.miui.fmradio:state_is_add"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mIsAdd:Z

    .line 1096
    const-string v3, "com.miui.fmradio:state_has_favor"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mHasFavorCheck:Z

    .line 1097
    const-string v3, "com.miui.fmradio:state_freq"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1098
    .local v0, "freq":I
    const-string v3, "com.miui.fmradio:state_label"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "label":Ljava/lang/String;
    const-string v3, "com.miui.fmradio:state_type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1100
    .local v2, "type":I
    invoke-static {v0}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1101
    new-instance v3, Lcom/miui/fmradio/StationItem;

    invoke-direct {v3, v0, v1, v2}, Lcom/miui/fmradio/StationItem;-><init>(ILjava/lang/String;I)V

    iput-object v3, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mStationItem:Lcom/miui/fmradio/StationItem;

    .line 1104
    .end local v0    # "freq":I
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1127
    new-instance v0, Lcom/miui/fmradio/StationEditDialog;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mIsAdd:Z

    iget-boolean v3, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mHasFavorCheck:Z

    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mStationItem:Lcom/miui/fmradio/StationItem;

    new-instance v5, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog$1;

    invoke-direct {v5, p0}, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog$1;-><init>(Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/miui/fmradio/StationEditDialog;-><init>(Landroid/content/Context;ZZLcom/miui/fmradio/StationItem;Lcom/miui/fmradio/StationEditDialog$EditStationListener;)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1108
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1109
    const-string v0, "com.miui.fmradio:state_is_add"

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mIsAdd:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1110
    const-string v0, "com.miui.fmradio:state_has_favor"

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mHasFavorCheck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1112
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mStationItem:Lcom/miui/fmradio/StationItem;

    if-eqz v0, :cond_0

    .line 1113
    const-string v0, "com.miui.fmradio:state_freq"

    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mStationItem:Lcom/miui/fmradio/StationItem;

    iget v1, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1114
    const-string v0, "com.miui.fmradio:state_label"

    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mStationItem:Lcom/miui/fmradio/StationItem;

    iget-object v1, v1, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const-string v0, "com.miui.fmradio:state_type"

    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mStationItem:Lcom/miui/fmradio/StationItem;

    iget v1, v1, Lcom/miui/fmradio/StationItem;->type:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1117
    :cond_0
    return-void
.end method

.method public setEditParams(ZZLcom/miui/fmradio/StationItem;)V
    .locals 0
    .param p1, "isAdd"    # Z
    .param p2, "hasFavorCheck"    # Z
    .param p3, "si"    # Lcom/miui/fmradio/StationItem;

    .prologue
    .line 1120
    iput-boolean p1, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mIsAdd:Z

    .line 1121
    iput-boolean p2, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mHasFavorCheck:Z

    .line 1122
    iput-object p3, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->mStationItem:Lcom/miui/fmradio/StationItem;

    .line 1123
    return-void
.end method
