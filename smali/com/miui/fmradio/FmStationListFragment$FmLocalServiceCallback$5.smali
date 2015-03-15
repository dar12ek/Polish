.class Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->onScanStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 466
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v2, v2, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    const/4 v3, 0x1

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->showScanDialog(Z)V
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmStationListFragment;->access$400(Lcom/miui/fmradio/FmStationListFragment;Z)V

    .line 467
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v2, v2, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmStationListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;

    .line 468
    .local v0, "d":Lcom/miui/fmradio/FmStationListFragment$ScanDialog;
    if-eqz v0, :cond_0

    .line 470
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v2, v2, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/fmradio/IFmLocalService;->getCurrentFrequency()I

    move-result v2

    invoke-static {v2}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmStationListFragment"

    const-string v3, "getCurrentFrequency failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
