.class Lcom/miui/fmradio/FmStationListActivity$1;
.super Ljava/lang/Object;
.source "FmStationListActivity.java"

# interfaces
.implements Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmStationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmStationListActivity;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListActivity$1;->this$0:Lcom/miui/fmradio/FmStationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStationItemClick(Lcom/miui/fmradio/StationItem;)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/fmradio/FmStationListActivity$1;->this$0:Lcom/miui/fmradio/FmStationListActivity;

    const-class v2, Lcom/miui/fmradio/FmRadioActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v1, "extra_key_tune_freq"

    iget v2, p1, Lcom/miui/fmradio/StationItem;->frequency:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListActivity$1;->this$0:Lcom/miui/fmradio/FmStationListActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/miui/fmradio/FmStationListActivity;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity$1;->this$0:Lcom/miui/fmradio/FmStationListActivity;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListActivity;->finish()V

    .line 90
    return-void
.end method
