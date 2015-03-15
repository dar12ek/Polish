.class Lcom/miui/fmradio/FmRadioActivity$1;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Lmiui/app/OnStatusBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRadioActivity;->initUI()V
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
    .line 184
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$1;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusBarHeightChange(I)V
    .locals 2
    .param p1, "statusBarHeight"    # I

    .prologue
    .line 187
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$1;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mBtnPower:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$100(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 188
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 189
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$1;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mBtnPower:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$100(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$1;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$200(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 191
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 192
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity$1;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    # getter for: Lcom/miui/fmradio/FmRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/miui/fmradio/FmRadioActivity;->access$200(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-void
.end method
