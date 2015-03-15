.class Lcom/miui/fmradio/FmRadioActivity$2;
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
    .line 625
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$2;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 628
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$2;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mBtnPower:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/miui/fmradio/FmRadioActivity;->access$100(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 629
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$2;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/miui/fmradio/FmRadioActivity;->access$300(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 630
    return-void
.end method
