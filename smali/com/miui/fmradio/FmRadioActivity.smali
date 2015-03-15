.class public Lcom/miui/fmradio/FmRadioActivity;
.super Lmiui/app/Activity;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;,
        Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;,
        Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;,
        Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBtnList:Landroid/widget/ImageButton;

.field private mBtnMenu:Landroid/widget/ImageButton;

.field private mBtnPower:Landroid/widget/ImageButton;

.field private mBtnPowerLarge:Landroid/widget/ImageButton;

.field private mBtnScan:Landroid/widget/ImageButton;

.field private mBtnSeekB:Landroid/widget/ImageButton;

.field private mBtnSeekF:Landroid/widget/ImageButton;

.field private mFltOn:Landroid/widget/FrameLayout;

.field private mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

.field private mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mIsLaunchFromCreate:Z

.field private mLltControl:Landroid/widget/LinearLayout;

.field private mLltFreq:Landroid/widget/LinearLayout;

.field private mLltOff:Landroid/widget/LinearLayout;

.field private mLltStates:Landroid/widget/LinearLayout;

.field private mLocalServiceCallback:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

.field private mLockSettings:Landroid/security/ChooseLockSettingsHelper;

.field private mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

.field private mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

.field private mRecordTimer:Landroid/widget/Chronometer;

.field private mService:Lcom/miui/fmradio/IFmLocalService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mToast:Landroid/widget/Toast;

.field private mTxtDivider:Landroid/widget/TextView;

.field private mTxtFreq:Landroid/widget/TextView;

.field private mTxtFreqRep:Landroid/widget/TextView;

.field private mTxtLabel:Landroid/widget/TextView;

.field private mTxtLabelOff:Landroid/widget/TextView;

.field private mTxtSleep:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 91
    new-instance v0, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;-><init>(Lcom/miui/fmradio/FmRadioActivity;Lcom/miui/fmradio/FmRadioActivity$1;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLocalServiceCallback:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

    .line 709
    new-instance v0, Lcom/miui/fmradio/FmRadioActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmRadioActivity$5;-><init>(Lcom/miui/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 731
    new-instance v0, Lcom/miui/fmradio/FmRadioActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmRadioActivity$6;-><init>(Lcom/miui/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    .line 813
    new-instance v0, Lcom/miui/fmradio/FmRadioActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmRadioActivity$7;-><init>(Lcom/miui/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    .line 1139
    new-instance v0, Lcom/miui/fmradio/FmRadioActivity$8;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmRadioActivity$8;-><init>(Lcom/miui/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPower:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/fmradio/FmRadioActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmRadioActivity;->doAnimation(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/fmradio/FmRadioActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mIsLaunchFromCreate:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/miui/fmradio/FmRadioActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/miui/fmradio/FmRadioActivity;->mIsLaunchFromCreate:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/fmradio/FmRadioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/fmradio/FmRadioActivity;->showDonotSupportDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/FrequencyPicker;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/fmradio/FmRadioActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmRadioActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/fmradio/FmRadioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/fmradio/FmRadioActivity;->unbindService()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/fmradio/FmRadioActivity;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/fmradio/FmRadioActivity;->setSleepMode(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/fmradio/FmRadioActivity;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/fmradio/FmRadioActivity;->saveStation(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreqRep:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/fmradio/FmRadioActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/fmradio/FmRadioActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/IFmLocalService;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/fmradio/FmRadioActivity;Lcom/miui/fmradio/IFmLocalService;)Lcom/miui/fmradio/IFmLocalService;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;
    .param p1, "x1"    # Lcom/miui/fmradio/IFmLocalService;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/fmradio/FmRadioActivity;)Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLocalServiceCallback:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/fmradio/FmRadioActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmRadioActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmRadioActivity;->updateUi(I)V

    return-void
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 695
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/fmradio/FmLocalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 696
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 697
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/fmradio/FmRadioActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    const-string v1, "Fm:FmRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    return-void
.end method

.method private doAnimation(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 601
    packed-switch p1, :pswitch_data_0

    .line 666
    :goto_0
    return-void

    .line 604
    :pswitch_0
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    if-ne p1, v4, :cond_0

    const v0, 0x7f04000f

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 605
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabelOff:Landroid/widget/TextView;

    if-ne p1, v4, :cond_1

    const v0, 0x7f04000b

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 606
    if-ne p1, v4, :cond_2

    .line 607
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPower:Landroid/widget/ImageButton;

    const/high16 v1, 0x7f040000

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 608
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltFreq:Landroid/widget/LinearLayout;

    const v1, 0x7f040001

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 609
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    const v1, 0x7f040002

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 610
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltOff:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabelOff:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltControl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 622
    :goto_3
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPower:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 623
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 624
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltOff:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_3

    const v0, 0x7f040005

    :goto_4
    new-instance v2, Lcom/miui/fmradio/FmRadioActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/fmradio/FmRadioActivity$2;-><init>(Lcom/miui/fmradio/FmRadioActivity;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 604
    :cond_0
    const v0, 0x7f04000e

    goto :goto_1

    .line 605
    :cond_1
    const v0, 0x7f04000a

    goto :goto_2

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltControl:Landroid/widget/LinearLayout;

    const v1, 0x7f040003

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 616
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltOff:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabelOff:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltControl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 624
    :cond_3
    const v0, 0x7f040004

    goto :goto_4

    .line 635
    :pswitch_1
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v0, v3}, Lcom/miui/fmradio/FrequencyPicker;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 637
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreqRep:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreq:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreq:Landroid/widget/TextView;

    const v1, 0x7f040006

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 642
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    const v1, 0x7f040008

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 643
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    const v1, 0x7f04000d

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 644
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltStates:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltStates:Landroid/widget/LinearLayout;

    const v1, 0x7f040010

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 649
    :pswitch_2
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v0, v2}, Lcom/miui/fmradio/FrequencyPicker;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreq:Landroid/widget/TextView;

    const v1, 0x7f040007

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 652
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    const v1, 0x7f040009

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 653
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    const v1, 0x7f04000c

    new-instance v2, Lcom/miui/fmradio/FmRadioActivity$3;

    invoke-direct {v2, p0}, Lcom/miui/fmradio/FmRadioActivity$3;-><init>(Lcom/miui/fmradio/FmRadioActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 661
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltStates:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltStates:Landroid/widget/LinearLayout;

    const v1, 0x7f040011

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initPadUI()V
    .locals 7

    .prologue
    .line 198
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 199
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0d0010

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 200
    .local v0, "fl":Landroid/widget/FrameLayout;
    const v4, 0x7f030002

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 202
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRadioActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 203
    .local v1, "fm":Landroid/app/FragmentManager;
    sget-object v4, Lcom/miui/fmradio/FmStationListFragment;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/miui/fmradio/FmStationListFragment;

    iput-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    .line 204
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-nez v4, :cond_0

    .line 205
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 206
    .local v2, "ft":Landroid/app/FragmentTransaction;
    new-instance v4, Lcom/miui/fmradio/FmStationListFragment;

    invoke-direct {v4}, Lcom/miui/fmradio/FmStationListFragment;-><init>()V

    iput-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    .line 207
    const v4, 0x7f0d0013

    iget-object v5, p0, Lcom/miui/fmradio/FmRadioActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    sget-object v6, Lcom/miui/fmradio/FmStationListFragment;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 208
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 210
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    iget-object v5, p0, Lcom/miui/fmradio/FmRadioActivity;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    invoke-virtual {v4, v5}, Lcom/miui/fmradio/FmStationListFragment;->setOnStationItemClickListener(Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;)V

    .line 212
    const v4, 0x7f0d0016

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    .line 213
    const v4, 0x7f0d0014

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    .line 214
    const v4, 0x7f0d0015

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnScan:Landroid/widget/ImageButton;

    .line 216
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnScan:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    return-void
.end method

.method private initPhoneUI()V
    .locals 3

    .prologue
    .line 222
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 223
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d0010

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 224
    .local v0, "fl":Landroid/widget/FrameLayout;
    const v2, 0x7f030003

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 226
    const v2, 0x7f0d0016

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    .line 227
    const v2, 0x7f0d0014

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    .line 228
    const v2, 0x7f0d0017

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnList:Landroid/widget/ImageButton;

    .line 230
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnList:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 145
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPower:Landroid/widget/ImageButton;

    .line 146
    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    .line 148
    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreq:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0d0004

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreqRep:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtSleep:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0d000b

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtDivider:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mRecordTimer:Landroid/widget/Chronometer;

    .line 153
    const v0, 0x7f0d0006

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltOff:Landroid/widget/LinearLayout;

    .line 155
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFltOn:Landroid/widget/FrameLayout;

    .line 156
    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltControl:Landroid/widget/LinearLayout;

    .line 157
    const v0, 0x7f0d0003

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltFreq:Landroid/widget/LinearLayout;

    .line 158
    const v0, 0x7f0d0008

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/FrequencyPicker;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    .line 159
    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabelOff:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0d0007

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    .line 161
    const v0, 0x7f0d0009

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltStates:Landroid/widget/LinearLayout;

    .line 163
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPower:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FrequencyPicker;->setFrequency(I)V

    .line 168
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v0, p0}, Lcom/miui/fmradio/FrequencyPicker;->setFrequencyChangListener(Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;)V

    .line 170
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreq:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmRadioActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fontnumber.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 171
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreqRep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmRadioActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fontnumber.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 173
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreq:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreqRep:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v0, p0}, Lcom/miui/fmradio/FrequencyPicker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFltOn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/miui/fmradio/FmRadioActivity;->initPadUI()V

    .line 184
    :goto_0
    new-instance v0, Lcom/miui/fmradio/FmRadioActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmRadioActivity$1;-><init>(Lcom/miui/fmradio/FmRadioActivity;)V

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 195
    return-void

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmRadioActivity;->initPhoneUI()V

    goto :goto_0
.end method

.method private requestUpdateUi(I)V
    .locals 3
    .param p1, "animType"    # I

    .prologue
    .line 508
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 510
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 511
    return-void
.end method

.method private saveStation(ILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 753
    invoke-static {p0, p1, p2, p3}, Lcom/miui/fmradio/StationItemHelper;->addOrUpdateSingleStation(Landroid/content/Context;ILjava/lang/String;I)V

    .line 754
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const v0, 0x7f0a002c

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->showToast(I)V

    .line 755
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->requestUpdateUi(I)V

    .line 756
    return-void

    .line 754
    :cond_0
    const v0, 0x7f0a002d

    goto :goto_0
.end method

.method private setSleepMode(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    const v0, 0x7f0a0018

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/miui/fmradio/FmRadioActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->showToast(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p2

    invoke-interface {v0, v1, v2}, Lcom/miui/fmradio/IFmLocalService;->setDelayedStop(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    const-string v1, "Fm:FmRadioActivity"

    const-string v2, "setDelayedStop failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showDonotSupportDialog()V
    .locals 3

    .prologue
    .line 748
    new-instance v0, Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;

    invoke-direct {v0}, Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;-><init>()V

    .line 749
    .local v0, "d":Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRadioActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/FmRadioActivity$DonotSupportDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method private showSleepDlg()V
    .locals 3

    .prologue
    .line 776
    new-instance v0, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;

    invoke-direct {v0}, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;-><init>()V

    .line 777
    .local v0, "d":Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRadioActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/FmRadioActivity$SleepModeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method private showStationSaveDialog(Lcom/miui/fmradio/StationItem;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/fmradio/StationItem;

    .prologue
    .line 759
    new-instance v0, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;

    invoke-direct {v0}, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;-><init>()V

    .line 760
    .local v0, "d":Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->setEditParams(ZZLcom/miui/fmradio/StationItem;)V

    .line 761
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRadioActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/FmRadioActivity$EditStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method private showToast(I)V
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lcom/miui/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->showToast(Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 809
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    .line 810
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 811
    return-void
.end method

.method private startOneShotViewAnimation(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animId"    # I

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/fmradio/FmRadioActivity;->startOneShotViewAnimation(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 670
    return-void
.end method

.method private startOneShotViewAnimation(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animId"    # I
    .param p3, "endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 673
    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 674
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/miui/fmradio/FmRadioActivity$4;

    invoke-direct {v1, p0, p3, p1}, Lcom/miui/fmradio/FmRadioActivity$4;-><init>(Lcom/miui/fmradio/FmRadioActivity;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 691
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 692
    return-void
.end method

.method private unbindService()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    .line 707
    :cond_0
    return-void
.end method

.method private updateUi(I)V
    .locals 13
    .param p1, "animType"    # I

    .prologue
    const/4 v12, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 514
    const/4 v2, 0x0

    .line 515
    .local v2, "isFmOn":Z
    const v1, 0x153d8

    .line 516
    .local v1, "freq":I
    const/4 v3, 0x0

    .line 517
    .local v3, "isInSleepMode":Z
    const/4 v4, 0x0

    .line 518
    .local v4, "isRecording":Z
    const-wide/16 v6, 0x0

    .line 519
    .local v6, "recordingTimeInMillis":J
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v8, :cond_0

    .line 521
    :try_start_0
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v2

    .line 522
    if-eqz v2, :cond_0

    .line 523
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->getCurrentFrequency()I

    move-result v1

    .line 524
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isInSleepMode()Z

    move-result v3

    .line 525
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isRecording()Z

    move-result v4

    .line 526
    if-eqz v4, :cond_0

    .line 527
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->getRecordingTimeInMillis()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 535
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmRadioActivity;->doAnimation(I)V

    .line 536
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v8, :cond_c

    if-eqz v2, :cond_c

    .line 537
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 538
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 540
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mFltOn:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 541
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreq:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtFreqRep:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    if-eqz v3, :cond_5

    .line 545
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtSleep:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    :goto_1
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v8}, Lcom/miui/fmradio/FrequencyPicker;->getFrequency()I

    move-result v8

    if-eq v8, v1, :cond_1

    .line 551
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v8, v1}, Lcom/miui/fmradio/FrequencyPicker;->setFrequency(I)V

    .line 554
    :cond_1
    invoke-static {p0, v1}, Lcom/miui/fmradio/StationItemHelper;->getStationItemByFreq(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;

    move-result-object v5

    .line 556
    .local v5, "item":Lcom/miui/fmradio/StationItem;
    if-eqz v4, :cond_6

    .line 557
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Landroid/widget/Chronometer;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_2

    .line 558
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-virtual {v8, v11, v12}, Landroid/widget/Chronometer;->setBase(J)V

    .line 559
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v8, v9}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 560
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Landroid/widget/Chronometer;->start()V

    .line 567
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v8}, Lcom/miui/fmradio/FrequencyPicker;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_a

    .line 568
    if-eqz v5, :cond_7

    .line 569
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    iget-object v11, v5, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    :goto_3
    if-eqz v3, :cond_8

    .line 577
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtSleep:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    :goto_4
    iget-object v11, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtDivider:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    move v8, v9

    :goto_5
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    .line 585
    :cond_3
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltStates:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 592
    :cond_4
    :goto_6
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltOff:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 598
    .end local v5    # "item":Lcom/miui/fmradio/StationItem;
    :goto_7
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "Fm:FmRadioActivity"

    const-string v11, "updateUi failed"

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 547
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtSleep:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 563
    .restart local v5    # "item":Lcom/miui/fmradio/StationItem;
    :cond_6
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Landroid/widget/Chronometer;->stop()V

    .line 564
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v8, v10}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_2

    .line 572
    :cond_7
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 579
    :cond_8
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtSleep:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_9
    move v8, v10

    .line 582
    goto :goto_5

    .line 588
    :cond_a
    iget-object v9, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    if-nez v5, :cond_b

    const-string v8, ""

    :goto_8
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltStates:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 588
    :cond_b
    iget-object v8, v5, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    goto :goto_8

    .line 594
    .end local v5    # "item":Lcom/miui/fmradio/StationItem;
    :cond_c
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mLltOff:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 596
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_7
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 122
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 123
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 124
    const-string v2, "extra_key_tune_freq"

    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 125
    .local v1, "freq":I
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v2, :cond_0

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v2}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v2, v1}, Lcom/miui/fmradio/IFmLocalService;->tuneFm(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "freq":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 140
    return-void

    .line 130
    .restart local v1    # "freq":I
    :cond_1
    :try_start_1
    invoke-static {p0, v1}, Lcom/miui/fmradio/StationItemHelper;->setCurrentFrequency(Landroid/content/Context;I)V

    .line 131
    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v2, v1}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmRadioActivity"

    const-string v3, "Call service failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 260
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0002

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0017

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d000e

    if-eq v0, v1, :cond_1

    .line 262
    const-string v0, "Fm:FmRadioActivity"

    const-string v1, "FmService not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 269
    :sswitch_0
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, v2, v3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 270
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-nez v0, :cond_2

    .line 271
    invoke-direct {p0}, Lcom/miui/fmradio/FmRadioActivity;->bindService()V

    goto :goto_0

    .line 274
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmLocalService;->turnFmOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v1, "Fm:FmRadioActivity"

    const-string v2, "Turn fm on or off failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 277
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v1, v0}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 286
    :sswitch_1
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, v2, v3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 288
    :try_start_2
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/fmradio/IFmLocalService;->seekFm(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 291
    :catch_1
    move-exception v0

    .line 292
    const-string v1, "Fm:FmRadioActivity"

    const-string v2, "Seek fm backward failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 296
    :sswitch_2
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, v2, v3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 298
    :try_start_3
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/fmradio/IFmLocalService;->seekFm(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 301
    :catch_2
    move-exception v0

    .line 302
    const-string v1, "Fm:FmRadioActivity"

    const-string v2, "Seek fm forward failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 306
    :sswitch_3
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, v2, v3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/fmradio/FmStationListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    invoke-virtual {p0, v0, v2}, Lcom/miui/fmradio/FmRadioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 311
    :sswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/fmradio/FmRadioActivity;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_0

    .line 314
    :sswitch_5
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->scanOption()V

    goto/16 :goto_0

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x7f0d0002 -> :sswitch_0
        0x7f0d0007 -> :sswitch_4
        0x7f0d000e -> :sswitch_0
        0x7f0d0014 -> :sswitch_1
        0x7f0d0015 -> :sswitch_5
        0x7f0d0016 -> :sswitch_2
        0x7f0d0017 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 103
    const-string v0, "Fm:FmRadioActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRadioActivity;->setRequestedOrientation(I)V

    .line 109
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->setVolumeControlStream(I)V

    .line 110
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->setContentView(I)V

    .line 111
    invoke-direct {p0}, Lcom/miui/fmradio/FmRadioActivity;->bindService()V

    .line 112
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p0, v2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 113
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mLockSettings:Landroid/security/ChooseLockSettingsHelper;

    .line 115
    invoke-direct {p0}, Lcom/miui/fmradio/FmRadioActivity;->initUI()V

    .line 116
    iput-boolean v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mIsLaunchFromCreate:Z

    .line 117
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    invoke-static {v0}, Lcom/miui/fmradio/StationItemHelper;->registerStationListChangeListener(Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;)V

    .line 118
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRadioActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 247
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v1, :cond_0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    iget-object v2, p0, Lcom/miui/fmradio/FmRadioActivity;->mLocalServiceCallback:Lcom/miui/fmradio/FmRadioActivity$FmLocalServiceCallback;

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmRadioActivity;->unbindService()V

    .line 255
    iget-object v1, p0, Lcom/miui/fmradio/FmRadioActivity;->mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    invoke-static {v1}, Lcom/miui/fmradio/StationItemHelper;->unregisterStationListChangeListener(Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;)V

    .line 256
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmRadioActivity"

    const-string v2, "unregisterFmStateListener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFrequencyChanged(I)V
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v0, :cond_0

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v0, p1}, Lcom/miui/fmradio/IFmLocalService;->tuneFm(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    const-string v1, "Fm:FmRadioActivity"

    const-string v2, "tune fm failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 408
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 504
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 411
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/miui/fmradio/FmRadioActivity;->showSleepDlg()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmRadioActivity"

    const-string v5, "showSleepDlg failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 419
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    .line 421
    :try_start_1
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->cancelDelayedStop()V

    .line 422
    const v4, 0x7f0a0019

    invoke-direct {p0, v4}, Lcom/miui/fmradio/FmRadioActivity;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 423
    :catch_1
    move-exception v0

    .line 424
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmRadioActivity"

    const-string v5, "Cancel sleep mode failed."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    .line 430
    const/4 v1, 0x0

    .line 432
    .local v1, "freq":I
    :try_start_2
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->getCurrentFrequency()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 436
    :goto_1
    invoke-static {p0, v1}, Lcom/miui/fmradio/StationItemHelper;->getStationItemByFreq(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;

    move-result-object v3

    .line 437
    .local v3, "stationItem":Lcom/miui/fmradio/StationItem;
    if-nez v3, :cond_1

    .line 438
    new-instance v4, Lcom/miui/fmradio/StationItem;

    const v5, 0x7f0a0020

    invoke-virtual {p0, v5}, Lcom/miui/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/miui/fmradio/StationItem;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/miui/fmradio/FmRadioActivity;->showStationSaveDialog(Lcom/miui/fmradio/StationItem;)V

    goto :goto_0

    .line 433
    .end local v3    # "stationItem":Lcom/miui/fmradio/StationItem;
    :catch_2
    move-exception v0

    .line 434
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmRadioActivity"

    const-string v5, "Get current frequency failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "stationItem":Lcom/miui/fmradio/StationItem;
    :cond_1
    invoke-direct {p0, v3}, Lcom/miui/fmradio/FmRadioActivity;->showStationSaveDialog(Lcom/miui/fmradio/StationItem;)V

    goto :goto_0

    .line 446
    .end local v1    # "freq":I
    .end local v3    # "stationItem":Lcom/miui/fmradio/StationItem;
    :pswitch_3
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    .line 448
    :try_start_3
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->startRecord()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 449
    :catch_3
    move-exception v0

    .line 450
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmRadioActivity"

    const-string v5, "StartRecord failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 455
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_4
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    .line 457
    :try_start_4
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->stopRecord()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 458
    :catch_4
    move-exception v0

    .line 459
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmRadioActivity"

    const-string v5, "Stop record failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 464
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 465
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.android.soundrecorder"

    const-string v5, "com.android.soundrecorder.RecordPreviewActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const/high16 v4, 0x80000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 467
    const v4, 0x8000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 468
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string v4, "fmrec://"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRadioActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 475
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_6
    :try_start_5
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 476
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->turnFmOff()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 481
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRadioActivity;->finish()V

    goto/16 :goto_0

    .line 478
    :catch_5
    move-exception v0

    .line 479
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmRadioActivity"

    const-string v5, "Turn fm off failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 485
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_7
    :try_start_6
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 486
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/miui/fmradio/IFmLocalService;->setAudioPath(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 488
    :catch_6
    move-exception v0

    .line 489
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmRadioActivity"

    const-string v5, "Switch to headset failed"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 494
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_8
    :try_start_7
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 495
    iget-object v4, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/miui/fmradio/IFmLocalService;->setAudioPath(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 497
    :catch_7
    move-exception v0

    .line 498
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmRadioActivity"

    const-string v5, "Switch to headset failed"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x7f0d0027
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 331
    const/4 v3, 0x0

    .line 332
    .local v3, "isFmOn":Z
    const/4 v4, 0x0

    .line 333
    .local v4, "isInSleepMode":Z
    const/4 v5, 0x0

    .line 334
    .local v5, "isRecording":Z
    const/4 v0, 0x2

    .line 335
    .local v0, "audioPath":I
    const v2, 0x153d8

    .line 336
    .local v2, "freq":I
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v8, :cond_0

    .line 338
    :try_start_0
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v3

    .line 339
    if-eqz v3, :cond_0

    .line 340
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isInSleepMode()Z

    move-result v4

    .line 341
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isRecording()Z

    move-result v5

    .line 342
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->getCurrentFrequency()I

    move-result v2

    .line 343
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->getAudioPath()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 350
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v8, :cond_1

    if-nez v3, :cond_2

    .line 351
    :cond_1
    const/4 v8, 0x0

    .line 403
    :goto_1
    return v8

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "Fm:FmRadioActivity"

    const-string v9, "Update options menu failed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 354
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v8

    if-nez v8, :cond_4

    .line 355
    const v8, 0x7f0d0027

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 356
    const v8, 0x7f0d0028

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    :goto_2
    if-eqz v4, :cond_6

    .line 368
    const v8, 0x7f0d0029

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 369
    const v8, 0x7f0d002a

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 375
    :goto_3
    sget-boolean v8, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v8, :cond_7

    .line 376
    const v8, 0x7f0d002c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 377
    const v8, 0x7f0d002d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 378
    const v8, 0x7f0d002e

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 387
    :goto_4
    invoke-static {p0, v2}, Lcom/miui/fmradio/StationItemHelper;->getStationItemByFreq(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;

    move-result-object v6

    .line 388
    .local v6, "item":Lcom/miui/fmradio/StationItem;
    const v8, 0x7f0d002b

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 390
    .local v7, "saveMenu":Landroid/view/MenuItem;
    if-eqz v6, :cond_9

    iget v8, v6, Lcom/miui/fmradio/StationItem;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 391
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 399
    :goto_5
    iget-object v8, p0, Lcom/miui/fmradio/FmRadioActivity;->mLockSettings:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 400
    const v8, 0x7f0d002c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    :cond_3
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 358
    .end local v6    # "item":Lcom/miui/fmradio/StationItem;
    .end local v7    # "saveMenu":Landroid/view/MenuItem;
    :cond_4
    const/4 v8, 0x2

    if-ne v0, v8, :cond_5

    .line 359
    const v8, 0x7f0d0028

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 360
    const v8, 0x7f0d0027

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 362
    :cond_5
    const v8, 0x7f0d0027

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 363
    const v8, 0x7f0d0028

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 371
    :cond_6
    const v8, 0x7f0d0029

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 372
    const v8, 0x7f0d002a

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 379
    :cond_7
    if-eqz v5, :cond_8

    .line 380
    const v8, 0x7f0d002c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 381
    const v8, 0x7f0d002d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 383
    :cond_8
    const v8, 0x7f0d002c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 384
    const v8, 0x7f0d002d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 392
    .restart local v6    # "item":Lcom/miui/fmradio/StationItem;
    .restart local v7    # "saveMenu":Landroid/view/MenuItem;
    :cond_9
    if-eqz v6, :cond_a

    .line 393
    const v8, 0x7f0a0009

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 394
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 396
    :cond_a
    const v8, 0x7f0a0008

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 397
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 238
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mIsLaunchFromCreate:Z

    if-nez v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/miui/fmradio/FmRadioActivity;->bindService()V

    .line 241
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x2

    .line 782
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmRadioActivity;->doAnimation(I)V

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    iget-object v0, p0, Lcom/miui/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 787
    const/4 v0, 0x0

    return v0
.end method
