.class Lcom/miui/fmradio/FmRadioActivity$7;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$7;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStationItemClick(Lcom/miui/fmradio/StationItem;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/fmradio/StationItem;

    .prologue
    .line 817
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$7;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$7;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$7;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    iget v2, p1, Lcom/miui/fmradio/StationItem;->frequency:I

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->tuneFm(I)V

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$7;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    iget v2, p1, Lcom/miui/fmradio/StationItem;->frequency:I

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmRadioActivity"

    const-string v2, "tune Fm failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
