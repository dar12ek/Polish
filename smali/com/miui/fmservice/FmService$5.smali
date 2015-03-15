.class Lcom/miui/fmservice/FmService$5;
.super Lqcom/fmradio/FmRxEvCallbacksAdaptor;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmservice/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmservice/FmService;


# direct methods
.method constructor <init>(Lcom/miui/fmservice/FmService;)V
    .locals 0

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    invoke-direct {p0}, Lqcom/fmradio/FmRxEvCallbacksAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public FmRxEvDisableReceiver()V
    .locals 2

    .prologue
    .line 1492
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvDisableReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    return-void
.end method

.method public FmRxEvEnableReceiver()V
    .locals 2

    .prologue
    .line 1488
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvEnableReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    return-void
.end method

.method public FmRxEvRadioReset()V
    .locals 2

    .prologue
    .line 1496
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvRadioReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0}, Lcom/miui/fmservice/FmService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    const-string v0, "Fm:FmService"

    const-string v1, "FM Radio reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # invokes: Lcom/miui/fmservice/FmService;->fmRadioReset()Z
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$600(Lcom/miui/fmservice/FmService;)Z

    .line 1502
    :cond_0
    return-void
.end method

.method public FmRxEvRadioTuneStatus(I)V
    .locals 4
    .param p1, "frequency"    # I

    .prologue
    .line 1529
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmRxEvRadioTuneStatus: Tuned Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1533
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    invoke-virtual {v1}, Lcom/miui/fmservice/FmService;->clearStationInfo()V

    .line 1535
    :cond_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    const/4 v2, 0x0

    # setter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1, v2}, Lcom/miui/fmservice/FmService;->access$702(Lcom/miui/fmservice/FmService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 1536
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1537
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/fmservice/IFmServiceCallback;->onTuneComplete(I)V

    .line 1539
    :cond_1
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    const/4 v2, 0x1

    # setter for: Lcom/miui/fmservice/FmService;->mFMOn:Z
    invoke-static {v1, v2}, Lcom/miui/fmservice/FmService;->access$902(Lcom/miui/fmservice/FmService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    :goto_0
    return-void

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvRdsAfInfo()V
    .locals 2

    .prologue
    .line 1664
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvRdsAfInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    return-void
.end method

.method public FmRxEvRdsGroupData()V
    .locals 2

    .prologue
    .line 1629
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvRdsGroupData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return-void
.end method

.method public FmRxEvRdsLockStatus(Z)V
    .locals 4
    .param p1, "bRDSSupported"    # Z

    .prologue
    .line 1553
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmRxEvRdsLockStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1556
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/fmservice/IFmServiceCallback;->onStationRDSSupported(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    :cond_0
    :goto_0
    return-void

    .line 1558
    :catch_0
    move-exception v0

    .line 1559
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvRdsPsInfo()V
    .locals 3

    .prologue
    .line 1633
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvRdsPsInfo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->getPSInfo()Lqcom/fmradio/FmRxRdsData;

    move-result-object v1

    # setter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v0, v1}, Lcom/miui/fmservice/FmService;->access$702(Lcom/miui/fmservice/FmService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 1637
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1639
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PI: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getPrgmId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PTY: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getPrgmType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PS: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getPrgmServices()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_0
    return-void
.end method

.method public FmRxEvRdsRtInfo()V
    .locals 3

    .prologue
    .line 1647
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvRdsRtInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->getRTInfo()Lqcom/fmradio/FmRxRdsData;

    move-result-object v1

    # setter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v0, v1}, Lcom/miui/fmservice/FmService;->access$702(Lcom/miui/fmservice/FmService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 1652
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1654
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PI: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getPrgmId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PTY: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getPrgmType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RT: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getRadioText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_0
    return-void
.end method

.method public FmRxEvSearchCancelled()V
    .locals 3

    .prologue
    .line 1618
    const-string v1, "Fm:FmService"

    const-string v2, "FmRxEvSearchCancelled: Cancelled the on-going search operation."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1621
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/fmservice/IFmServiceCallback;->onSearchComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    :cond_0
    :goto_0
    return-void

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvSearchComplete(I)V
    .locals 4
    .param p1, "frequency"    # I

    .prologue
    .line 1594
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmRxEvSearchComplete: Tuned Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    const/4 v2, 0x0

    # setter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1, v2}, Lcom/miui/fmservice/FmService;->access$702(Lcom/miui/fmservice/FmService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 1599
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1600
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/fmservice/IFmServiceCallback;->onSearchComplete(I)V

    .line 1602
    :cond_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    const/4 v2, 0x1

    # setter for: Lcom/miui/fmservice/FmService;->mFMOn:Z
    invoke-static {v1, v2}, Lcom/miui/fmservice/FmService;->access$902(Lcom/miui/fmservice/FmService;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1606
    :goto_0
    return-void

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvSearchInProgress()V
    .locals 2

    .prologue
    .line 1582
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvSearchInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    return-void
.end method

.method public FmRxEvSearchListComplete()V
    .locals 2

    .prologue
    .line 1614
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvSearchListComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return-void
.end method

.method public FmRxEvServiceAvailable(Z)V
    .locals 2
    .param p1, "signal"    # Z

    .prologue
    .line 1568
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvServiceAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    if-eqz p1, :cond_0

    .line 1570
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvServiceAvailable: Tuned frequency is above signal threshold level"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :goto_0
    return-void

    .line 1573
    :cond_0
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvServiceAvailable: Tuned frequency is below signal threshold level"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FmRxEvStereoStatus(Z)V
    .locals 3
    .param p1, "stereo"    # Z

    .prologue
    .line 1564
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FmRxEvStereoStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    return-void
.end method
