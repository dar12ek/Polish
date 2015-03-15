.class Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;
.super Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmLocalServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmRadioActivity;


# direct methods
.method private constructor <init>(Lcom/miui/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    invoke-direct {p0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/FmRadioActivity;Lcom/miui/fmradio/FmRadioActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/FmRadioActivity;
    .param p2, "x1"    # Lcom/miui/fmradio/FmRadioActivity$1;

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;-><init>(Lcom/miui/fmradio/FmRadioActivity;)V

    return-void
.end method


# virtual methods
.method public onFmAudioPathChanged(I)V
    .locals 2
    .param p1, "audiopath"    # I

    .prologue
    .line 924
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 925
    return-void
.end method

.method public onFmRdsChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "rds"    # Ljava/lang/String;

    .prologue
    .line 929
    invoke-static {p1}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 932
    :cond_1
    return-void
.end method

.method public onFmRecordError(II)V
    .locals 2
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 948
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 949
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    new-instance v1, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$3;-><init>(Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;II)V

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 980
    return-void
.end method

.method public onFmRecordStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 944
    return-void
.end method

.method public onFmRecordStop(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 984
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 985
    return-void
.end method

.method public onFmSeekCompleted(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 917
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 920
    :cond_0
    return-void
.end method

.method public onFmServiceDestroyed()V
    .locals 0

    .prologue
    .line 853
    return-void
.end method

.method public onFmServiceError(II)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 872
    packed-switch p1, :pswitch_data_0

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 874
    :pswitch_0
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    new-instance v3, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$1;

    invoke-direct {v3, p0}, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$1;-><init>(Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;)V

    invoke-virtual {v2, v3}, Lcom/miui/fmradio/FmRadioActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 882
    :pswitch_1
    const/4 v1, 0x0

    .line 883
    .local v1, "toastId":I
    if-nez p2, :cond_2

    .line 884
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;
    invoke-static {v2}, Lcom/miui/fmradio/FmRadioActivity;->access$1300(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/FrequencyPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/fmradio/FrequencyPicker;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 885
    const v1, 0x7f0a0030

    .line 892
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    .line 893
    move v0, v1

    .line 894
    .local v0, "tId":I
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    new-instance v3, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$2;

    invoke-direct {v3, p0, v0}, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$2;-><init>(Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;I)V

    invoke-virtual {v2, v3}, Lcom/miui/fmradio/FmRadioActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 887
    .end local v0    # "tId":I
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 888
    const v1, 0x7f0a002f

    goto :goto_1

    .line 889
    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 890
    const v1, 0x7f0a0015

    goto :goto_1

    .line 872
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFmServiceReady()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 835
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    invoke-static {v2}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v1

    .line 837
    .local v1, "freq":I
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mIsLaunchFromCreate:Z
    invoke-static {v2}, Lcom/miui/fmradio/FmRadioActivity;->access$1100(Lcom/miui/fmradio/FmRadioActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 838
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 839
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # setter for: Lcom/miui/fmradio/FmRadioActivity;->mIsLaunchFromCreate:Z
    invoke-static {v2, v4}, Lcom/miui/fmradio/FmRadioActivity;->access$1102(Lcom/miui/fmradio/FmRadioActivity;Z)Z

    .line 849
    return-void

    .line 841
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/miui/fmradio/IFmLocalService;->tuneFm(I)V

    .line 842
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v3, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmRadioActivity"

    const-string v3, "Turn fm on or tune fm failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFmSleepModeChange(Z)V
    .locals 2
    .param p1, "inSleepMode"    # Z

    .prologue
    .line 938
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 939
    return-void
.end method

.method public onFmTuneCompleted(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 910
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 913
    :cond_0
    return-void
.end method

.method public onFmTurnedOff()V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x2

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 868
    return-void
.end method

.method public onFmTurnedOn()V
    .locals 3

    .prologue
    .line 858
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/fmradio/IFmLocalService;->getCurrentFrequency()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/fmradio/StationItemHelper;->setCurrentFrequency(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v2, 0x1

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 863
    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmRadioActivity"

    const-string v2, "invoking failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHeadsetStateChanged(Z)V
    .locals 2
    .param p1, "headset"    # Z

    .prologue
    .line 989
    if-nez p1, :cond_0

    .line 990
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    new-instance v1, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$4;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$4;-><init>(Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 998
    return-void
.end method

.method public onScanComplete(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1026
    return-void
.end method

.method public onScanStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1016
    return-void
.end method

.method public onServiceClean()V
    .locals 3

    .prologue
    .line 1002
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1004
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/miui/fmradio/IFmLocalService;->unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->unbindService()V
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$1500(Lcom/miui/fmradio/FmRadioActivity;)V

    .line 1010
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v2, 0x0

    # setter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmRadioActivity;->access$702(Lcom/miui/fmradio/FmRadioActivity;Lcom/miui/fmradio/IFmLocalService;)Lcom/miui/fmradio/IFmLocalService;

    .line 1011
    return-void

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmRadioActivity"

    const-string v2, "onServiceClean failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStationScaned(I)V
    .locals 0
    .param p1, "freq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1021
    return-void
.end method
