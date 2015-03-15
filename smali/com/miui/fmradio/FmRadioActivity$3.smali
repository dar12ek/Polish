.class Lcom/miui/fmradio/FmRadioActivity$3;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRadioActivity;->doAnimation(I)V
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
    .line 653
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$3;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 656
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$3;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mTxtFreqRep:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/miui/fmradio/FmRadioActivity;->access$400(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$3;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mTxtFreq:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/miui/fmradio/FmRadioActivity;->access$500(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$3;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v2}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 659
    return-void
.end method
