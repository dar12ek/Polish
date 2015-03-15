.class Lcom/miui/fmradio/FmRadioActivity$EditStationDialog$1;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Lcom/miui/fmradio/StationEditDialog$EditStationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog$1;->this$0:Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStationChanged(ILjava/lang/String;I)V
    .locals 2
    .param p1, "newFreq"    # I
    .param p2, "newLabel"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog$1;->this$0:Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;

    invoke-virtual {v1}, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1131
    .local v0, "a":Landroid/app/Activity;
    instance-of v1, v0, Lcom/miui/fmradio/FmRadioActivity;

    if-eqz v1, :cond_0

    .line 1132
    check-cast v0, Lcom/miui/fmradio/FmRadioActivity;

    .end local v0    # "a":Landroid/app/Activity;
    # invokes: Lcom/miui/fmradio/FmRadioActivity;->saveStation(ILjava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/miui/fmradio/FmRadioActivity;->access$1700(Lcom/miui/fmradio/FmRadioActivity;ILjava/lang/String;I)V

    .line 1134
    :cond_0
    return-void
.end method
