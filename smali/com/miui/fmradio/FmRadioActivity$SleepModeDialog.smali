.class public Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;
.super Landroid/app/DialogFragment;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SleepModeDialog"
.end annotation


# static fields
.field public static final FRAG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1053
    const-class v0, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;->FRAG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1052
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1057
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1058
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a000d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1059
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1061
    .local v1, "itemEntries":[Ljava/lang/String;
    new-instance v2, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog$1;

    invoke-direct {v2, p0, v1}, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog$1;-><init>(Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1074
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
