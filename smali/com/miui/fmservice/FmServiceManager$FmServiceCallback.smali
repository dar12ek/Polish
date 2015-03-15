.class Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;
.super Lcom/miui/fmservice/IFmServiceCallback$Stub;
.source "FmServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmservice/FmServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmservice/FmServiceManager;


# direct methods
.method private constructor <init>(Lcom/miui/fmservice/FmServiceManager;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    invoke-direct {p0}, Lcom/miui/fmservice/IFmServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmservice/FmServiceManager;Lcom/miui/fmservice/FmServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p2, "x1"    # Lcom/miui/fmservice/FmServiceManager$1;

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;-><init>(Lcom/miui/fmservice/FmServiceManager;)V

    return-void
.end method


# virtual methods
.method public onAlternateFrequencyChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    return-void
.end method

.method public onAudioUpdate(Z)V
    .locals 0
    .param p1, "bStereo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    return-void
.end method

.method public onDisabled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public onEnabled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "bMuted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    return-void
.end method

.method public onProgramServiceChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    return-void
.end method

.method public onRadioReset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 241
    return-void
.end method

.method public onRadioTextChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    return-void
.end method

.method public onRecordingStopped()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 329
    return-void
.end method

.method public onSearchComplete(I)V
    .locals 3
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->toUnifiedFrequency(I)I

    move-result p1

    .line 288
    const-string v0, "Fm:FmServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # setter for: Lcom/miui/fmservice/FmServiceManager;->mFrequency:I
    invoke-static {v0, p1}, Lcom/miui/fmservice/FmServiceManager;->access$402(Lcom/miui/fmservice/FmServiceManager;I)I

    .line 290
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z
    invoke-static {v0}, Lcom/miui/fmservice/FmServiceManager;->access$700(Lcom/miui/fmservice/FmServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    const/4 v1, 0x0

    # setter for: Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z
    invoke-static {v0, v1}, Lcom/miui/fmservice/FmServiceManager;->access$702(Lcom/miui/fmservice/FmServiceManager;Z)Z

    .line 292
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mScanedCount:I
    invoke-static {v1}, Lcom/miui/fmservice/FmServiceManager;->access$800(Lcom/miui/fmservice/FmServiceManager;)I

    move-result v1

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmScanCompleted(I)V
    invoke-static {v0, v1}, Lcom/miui/fmservice/FmServiceManager;->access$1100(Lcom/miui/fmservice/FmServiceManager;I)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmSeekCompleted(I)V
    invoke-static {v0, p1}, Lcom/miui/fmservice/FmServiceManager;->access$1200(Lcom/miui/fmservice/FmServiceManager;I)V

    goto :goto_0
.end method

.method public onSearchListComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    return-void
.end method

.method public onSignalStrengthChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    return-void
.end method

.method public onStationRDSSupported(Z)V
    .locals 4
    .param p1, "bRDSSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    const-string v1, ""

    .line 316
    .local v1, "rds":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;
    invoke-static {v2}, Lcom/miui/fmservice/FmServiceManager;->access$000(Lcom/miui/fmservice/FmServiceManager;)Lcom/miui/fmservice/IFmService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;
    invoke-static {v2}, Lcom/miui/fmservice/FmServiceManager;->access$000(Lcom/miui/fmservice/FmServiceManager;)Lcom/miui/fmservice/IFmService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/fmservice/IFmService;->getRadioText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 323
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmRdsChanged(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/miui/fmservice/FmServiceManager;->access$1300(Lcom/miui/fmservice/FmServiceManager;Ljava/lang/String;)V

    .line 324
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmServiceManager"

    const-string v3, "Get radio text failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTuneComplete(I)V
    .locals 2
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->toUnifiedFrequency(I)I

    move-result p1

    .line 271
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # setter for: Lcom/miui/fmservice/FmServiceManager;->mFrequency:I
    invoke-static {v0, p1}, Lcom/miui/fmservice/FmServiceManager;->access$402(Lcom/miui/fmservice/FmServiceManager;I)I

    .line 272
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mIsStarting:Z
    invoke-static {v0}, Lcom/miui/fmservice/FmServiceManager;->access$500(Lcom/miui/fmservice/FmServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmTurnedOn()V
    invoke-static {v0}, Lcom/miui/fmservice/FmServiceManager;->access$600(Lcom/miui/fmservice/FmServiceManager;)V

    .line 274
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    const/4 v1, 0x0

    # setter for: Lcom/miui/fmservice/FmServiceManager;->mIsStarting:Z
    invoke-static {v0, v1}, Lcom/miui/fmservice/FmServiceManager;->access$502(Lcom/miui/fmservice/FmServiceManager;Z)Z

    .line 283
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z
    invoke-static {v0}, Lcom/miui/fmservice/FmServiceManager;->access$700(Lcom/miui/fmservice/FmServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # ++operator for: Lcom/miui/fmservice/FmServiceManager;->mScanedCount:I
    invoke-static {v0}, Lcom/miui/fmservice/FmServiceManager;->access$804(Lcom/miui/fmservice/FmServiceManager;)I

    .line 278
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmStationScaned(I)V
    invoke-static {v0, p1}, Lcom/miui/fmservice/FmServiceManager;->access$900(Lcom/miui/fmservice/FmServiceManager;I)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmTuneCompleted(I)V
    invoke-static {v0, p1}, Lcom/miui/fmservice/FmServiceManager;->access$1000(Lcom/miui/fmservice/FmServiceManager;I)V

    goto :goto_0
.end method

.method public onTuneStatusChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    return-void
.end method
