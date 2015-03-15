.class Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$4;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->onHeadsetStateChanged(Z)V
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
    .line 990
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$4;->this$1:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$4;->this$1:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

    iget-object v0, v0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const v1, 0x7f0a0015

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->showToast(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$1400(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 994
    return-void
.end method
