.class Lcom/miui/fmradio/FmRadioActivity$8;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;


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
    .line 1140
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity$8;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStationItemChanged(Lcom/miui/fmradio/StationItem;)V
    .locals 2
    .param p1, "item"    # Lcom/miui/fmradio/StationItem;

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity$8;->this$0:Lcom/miui/fmradio/FmRadioActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->access$600(Lcom/miui/fmradio/FmRadioActivity;I)V

    .line 1144
    return-void
.end method
