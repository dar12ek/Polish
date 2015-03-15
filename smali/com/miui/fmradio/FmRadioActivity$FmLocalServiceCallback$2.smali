.class Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$2;
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

.field final synthetic val$tId:I


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;I)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$2;->this$1:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

    iput p2, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$2;->val$tId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$2;->this$1:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

    iget-object v0, v0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    iget v1, p0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback$2;->val$tId:I

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->showToast(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$1400(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 898
    return-void
.end method
