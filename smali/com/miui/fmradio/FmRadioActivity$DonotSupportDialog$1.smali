.class Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog$1;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog$1;->this$0:Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog$1;->this$0:Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1046
    return-void
.end method
