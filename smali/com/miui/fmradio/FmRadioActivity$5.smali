.class Lcom/miui/fmradio/FmRadioActivity$5;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 709
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$5;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 717
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$5;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    invoke-static {p2}, Lcom/miui/fmradio/IFmLocalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    # setter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmRadioActivity;->access$702(Lcom/miui/fmradio/FmRadioActivity;Lcom/miui/fmradio/IFmLocalService;)Lcom/miui/fmradio/IFmLocalService;

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$5;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity$5;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mLocalServiceCallback:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;
    invoke-static {v2}, Lcom/miui/fmradio/FmRadioActivity;->access$800(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->registerFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V

    .line 720
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$5;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->initFmService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$5;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v2, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 725
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmRadioActivity"

    const-string v2, "initFmService failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 712
    const-string v0, "Fm:FmRadioActivity"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void
.end method
