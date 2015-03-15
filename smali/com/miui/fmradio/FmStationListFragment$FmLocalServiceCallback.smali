.class Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;
.super Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;
.source "FmStationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmStationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmLocalServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmStationListFragment;


# direct methods
.method private constructor <init>(Lcom/miui/fmradio/FmStationListFragment;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-direct {p0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/FmStationListFragment;Lcom/miui/fmradio/FmStationListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/FmStationListFragment;
    .param p2, "x1"    # Lcom/miui/fmradio/FmStationListFragment$1;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;-><init>(Lcom/miui/fmradio/FmStationListFragment;)V

    return-void
.end method


# virtual methods
.method public onFmAudioPathChanged(I)V
    .locals 0
    .param p1, "audiopath"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    return-void
.end method

.method public onFmRdsChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "rds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 421
    return-void
.end method

.method public onFmRecordError(II)V
    .locals 0
    .param p1, "errCode"    # I
    .param p2, "what"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    return-void
.end method

.method public onFmRecordStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 431
    return-void
.end method

.method public onFmRecordStop(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 441
    return-void
.end method

.method public onFmSeekCompleted(I)V
    .locals 2
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$4;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$4;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method

.method public onFmServiceDestroyed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    return-void
.end method

.method public onFmServiceError(II)V
    .locals 0
    .param p1, "errCode"    # I
    .param p2, "what"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    return-void
.end method

.method public onFmServiceReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mIsScanRequest:Z
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$200(Lcom/miui/fmradio/FmStationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "invoking failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFmSleepModeChange(Z)V
    .locals 0
    .param p1, "inSleepMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    return-void
.end method

.method public onFmTuneCompleted(I)V
    .locals 2
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$3;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$3;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method public onFmTurnedOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$2;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$2;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method

.method public onFmTurnedOn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mIsScanRequest:Z
    invoke-static {v0}, Lcom/miui/fmradio/FmStationListFragment;->access$200(Lcom/miui/fmradio/FmStationListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->startScan()V
    invoke-static {v0}, Lcom/miui/fmradio/FmStationListFragment;->access$300(Lcom/miui/fmradio/FmStationListFragment;)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$1;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$1;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method

.method public onHeadsetStateChanged(Z)V
    .locals 0
    .param p1, "headset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 446
    return-void
.end method

.method public onScanComplete(I)V
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    const/4 v3, 0x0

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->showScanDialog(Z)V
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmStationListFragment;->access$400(Lcom/miui/fmradio/FmStationListFragment;Z)V

    .line 500
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 501
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 502
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$7;

    invoke-direct {v3, p0, p1}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$7;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 515
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v3}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/miui/fmradio/IFmLocalService;->tuneFm(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmStationListFragment"

    const-string v3, "tuneFm failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScanStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method public onServiceClean()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/miui/fmradio/IFmLocalService;->unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->unbindService()V
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$900(Lcom/miui/fmradio/FmStationListFragment;)V

    .line 458
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    const/4 v2, 0x0

    # setter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmStationListFragment;->access$002(Lcom/miui/fmradio/FmStationListFragment;Lcom/miui/fmradio/IFmLocalService;)Lcom/miui/fmradio/IFmLocalService;

    .line 459
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "unregisterFmStateListener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStationScaned(I)V
    .locals 2
    .param p1, "freq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;

    invoke-direct {v1, p0, p1}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 495
    return-void
.end method
