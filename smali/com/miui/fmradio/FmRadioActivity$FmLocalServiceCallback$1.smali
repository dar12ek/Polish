.class Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$1;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->onFmServiceError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$1;->this$1:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$1;->this$1:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

    iget-object v0, v0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->showDonotSupportDialog()V
    invoke-static {v0}, Lcom/miui/fmradio/FmRadioActivity;->access$1200(Lcom/miui/fmradio/FmRadioActivity;)V

    .line 878
    return-void
.end method
