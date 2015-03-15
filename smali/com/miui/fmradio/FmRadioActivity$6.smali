.class Lcom/miui/fmradio/FmRadioActivity$6;
.super Landroid/os/Handler;
.source "FmRadioActivity.java"


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
    .line 731
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$6;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 734
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 744
    :goto_0
    return-void

    .line 736
    :pswitch_0
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$6;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->updateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$900(Lcom/miui/fmradio/FmRadioActivity;I)V

    goto :goto_0

    .line 739
    :pswitch_1
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$6;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x4

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->doAnimation(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$1000(Lcom/miui/fmradio/FmRadioActivity;I)V

    goto :goto_0

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
