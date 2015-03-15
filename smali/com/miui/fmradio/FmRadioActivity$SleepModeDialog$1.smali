.class Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog$1;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;

.field final synthetic val$itemEntries:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog$1;->this$0:Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;

    iput-object p2, p0, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog$1;->val$itemEntries:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 1063
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog$1;->this$0:Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, "items":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v1

    if-gt p2, v2, :cond_0

    .line 1066
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog$1;->this$0:Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1067
    .local v0, "a":Landroid/app/Activity;
    instance-of v2, v0, Lcom/miui/fmradio/FmRadioActivity;

    if-eqz v2, :cond_0

    .line 1068
    check-cast v0, Lcom/miui/fmradio/FmRadioActivity;

    .end local v0    # "a":Landroid/app/Activity;
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog$1;->val$itemEntries:[Ljava/lang/String;

    aget-object v2, v2, p2

    aget-object v3, v1, p2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->setSleepMode(Ljava/lang/String;J)V
    invoke-static {v0, v2, v3, v4}, Lcom/miui/fmradio/FmRadioActivity;->access$1600(Lcom/miui/fmradio/FmRadioActivity;Ljava/lang/String;J)V

    .line 1071
    :cond_0
    return-void
.end method
