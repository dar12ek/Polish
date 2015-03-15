.class public Lcom/miui/fmradio/FmStationListActivity;
.super Lmiui/app/Activity;
.source "FmStationListActivity.java"


# instance fields
.field private mFragment:Lcom/miui/fmradio/FmStationListFragment;

.field private mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 82
    new-instance v0, Lcom/miui/fmradio/FmStationListActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmStationListActivity$1;-><init>(Lcom/miui/fmradio/FmStationListActivity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    return-void
.end method

.method private initUi()V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 71
    const-class v0, Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/FmStationListFragment;

    iput-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    .line 73
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/miui/fmradio/FmStationListFragment;

    invoke-direct {v1}, Lcom/miui/fmradio/FmStationListFragment;-><init>()V

    iput-object v1, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    .line 76
    const v1, 0x7f0d0010

    iget-object v3, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 77
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    iget-object v1, p0, Lcom/miui/fmradio/FmStationListActivity;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FmStationListFragment;->setOnStationItemClickListener(Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmStationListActivity;->setContentView(I)V

    .line 21
    invoke-direct {p0}, Lcom/miui/fmradio/FmStationListActivity;->initUi()V

    .line 22
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 27
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->abortScan()V

    .line 30
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->scanOption()V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->addStationOption()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x7f0d0025
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->scanOption()V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListActivity;->mFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->refreshList()V

    goto :goto_0
.end method
