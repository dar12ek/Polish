.class public Lcom/miui/fmservice/FmService;
.super Landroid/app/Service;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmservice/FmService$ServiceStub;
    }
.end annotation


# static fields
.field public static final RECORD_DIRECTORY_PATH:Ljava/lang/String;

.field private static mAudioDevice:Ljava/lang/String;

.field private static mMuted:Z

.field private static mPrefs:Lcom/miui/fmservice/FmSharedPreferences;


# instance fields
.field fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

.field private mA2DPSampleFile:Ljava/io/File;

.field mA2dp:Landroid/media/MediaRecorder;

.field private mA2dpDeviceSupportInHal:Z

.field private mA2dpDisconnected:Z

.field private mAppShutdown:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mFMOn:Z

.field private mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

.field final mHandler:Landroid/os/Handler;

.field private mHeadsetPlugged:Z

.field private mInternalAntennaAvailable:Z

.field private mNotchFilterSet:Z

.field private mOverA2DP:Z

.field private mPlaybackInProgress:Z

.field private mReceiver:Lqcom/fmradio/FmReceiver;

.field mSampleStart:J

.field final mScreenOffHandler:Ljava/lang/Runnable;

.field final mScreenOnHandler:Ljava/lang/Runnable;

.field private mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceStartId:I

.field private mSingleRecordingInstanceSupported:Z

.field private mSpeakerPhoneOn:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private misAnalogModeSupported:Z

.field private misAnalogPathEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    const-string v0, "qcomfm_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/fmservice/FmService;->mMuted:Z

    .line 60
    const-string v0, "headset"

    sput-object v0, Lcom/miui/fmservice/FmService;->mAudioDevice:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "MIUI"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sound_recorder/fm_rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/fmservice/FmService;->RECORD_DIRECTORY_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    .line 55
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mHeadsetPlugged:Z

    .line 56
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mInternalAntennaAvailable:Z

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/fmservice/FmService;->mServiceStartId:I

    .line 61
    iput-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    .line 62
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mFMOn:Z

    .line 63
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    .line 64
    iput-object v3, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mHandler:Landroid/os/Handler;

    .line 66
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->misAnalogModeSupported:Z

    .line 67
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->misAnalogPathEnabled:Z

    .line 68
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mA2dpDisconnected:Z

    .line 71
    iput-object v3, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    .line 74
    iput-object v3, p0, Lcom/miui/fmservice/FmService;->mA2DPSampleFile:Ljava/io/File;

    .line 76
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/fmservice/FmService;->mSampleStart:J

    .line 82
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mNotchFilterSet:Z

    .line 86
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mA2dpDeviceSupportInHal:Z

    .line 88
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mAppShutdown:Z

    .line 89
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mSingleRecordingInstanceSupported:Z

    .line 353
    new-instance v0, Lcom/miui/fmservice/FmService$1;

    invoke-direct {v0, p0}, Lcom/miui/fmservice/FmService$1;-><init>(Lcom/miui/fmservice/FmService;)V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 409
    new-instance v0, Lcom/miui/fmservice/FmService$3;

    invoke-direct {v0, p0}, Lcom/miui/fmservice/FmService$3;-><init>(Lcom/miui/fmservice/FmService;)V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mScreenOnHandler:Ljava/lang/Runnable;

    .line 418
    new-instance v0, Lcom/miui/fmservice/FmService$4;

    invoke-direct {v0, p0}, Lcom/miui/fmservice/FmService$4;-><init>(Lcom/miui/fmservice/FmService;)V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mScreenOffHandler:Ljava/lang/Runnable;

    .line 455
    new-instance v0, Lcom/miui/fmservice/FmService$ServiceStub;

    invoke-direct {v0, p0, p0, v3}, Lcom/miui/fmservice/FmService$ServiceStub;-><init>(Lcom/miui/fmservice/FmService;Lcom/miui/fmservice/FmService;Lcom/miui/fmservice/FmService$1;)V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mBinder:Landroid/os/IBinder;

    .line 1485
    new-instance v0, Lcom/miui/fmservice/FmService$5;

    invoke-direct {v0, p0}, Lcom/miui/fmservice/FmService$5;-><init>(Lcom/miui/fmservice/FmService;)V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmservice/FmService;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/fmservice/FmService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/fmservice/FmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/fmservice/FmService;->mNotchFilterSet:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/fmservice/FmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/fmservice/FmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/fmservice/FmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmRadioReset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/fmservice/FmService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;
    .param p1, "x1"    # Lqcom/fmradio/FmRxRdsData;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/fmservice/FmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/fmservice/FmService;->mFMOn:Z

    return p1
.end method

.method private fmOff()Z
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/fmservice/FmService;->fmOff(Z)Z

    move-result v0

    return v0
.end method

.method private fmOff(Z)Z
    .locals 2
    .param p1, "fromMediaButton"    # Z

    .prologue
    .line 845
    const/4 v0, 0x0

    .line 847
    .local v0, "bStatus":Z
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmOperationsOff()V

    .line 849
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->disable()Z

    move-result v0

    .line 852
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 855
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stop()V

    .line 856
    return v0
.end method

.method private fmOn()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 707
    const/4 v1, 0x0

    .line 708
    .local v1, "bStatus":Z
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 710
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-nez v4, :cond_0

    .line 712
    :try_start_0
    new-instance v4, Lqcom/fmradio/FmReceiver;

    const-string v5, "/dev/radio0"

    iget-object v6, p0, Lcom/miui/fmservice/FmService;->fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

    invoke-direct {v4, v5, v6}, Lqcom/fmradio/FmReceiver;-><init>(Ljava/lang/String;Lqcom/fmradio/FmRxEvCallbacksAdaptor;)V

    iput-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :cond_0
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v4, :cond_3

    .line 719
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 721
    const/4 v1, 0x1

    .line 722
    const-string v4, "Fm:FmService"

    const-string v5, "mReceiver.already enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :goto_0
    if-ne v1, v7, :cond_6

    .line 743
    invoke-virtual {p0, v8}, Lcom/miui/fmservice/FmService;->setLowPowerMode(Z)Z

    move-result v1

    .line 744
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLowPowerMode done, Status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 747
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    if-nez v4, :cond_1

    .line 748
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    .line 749
    const-string v4, "Fm:FmService"

    const-string v5, "mAudioManager.setFmRadioOn = true \n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v4, "Fm:FmService"

    const-string v5, "mAudioManager.setFmRadioOn done \n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_1
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v4, :cond_2

    .line 755
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lqcom/fmradio/FmReceiver;->registerRdsGroupProcessing(I)Z

    move-result v1

    .line 758
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerRdsGroupProcessing done, Status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_2
    invoke-static {}, Lcom/miui/fmservice/FmSharedPreferences;->getAutoAFSwitch()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/fmservice/FmService;->enableAutoAF(Z)Z

    move-result v1

    .line 761
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableAutoAF done, Status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v4, v8}, Lqcom/fmradio/FmReceiver;->setInternalAntenna(Z)Z

    move-result v1

    .line 765
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInternalAntenna done, Status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->readInternalAntennaAvailable()V

    .line 770
    const/4 v1, 0x1

    .line 771
    iput-boolean v7, p0, Lcom/miui/fmservice/FmService;->mFMOn:Z

    .line 772
    invoke-virtual {p0, v7}, Lcom/miui/fmservice/FmService;->enableStereo(Z)Z

    .line 781
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_3
    :goto_1
    return v1

    .line 713
    :catch_0
    move-exception v3

    .line 714
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "FmReceiver service not available!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 725
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :cond_4
    invoke-static {}, Lcom/miui/fmservice/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v2

    .line 726
    .local v2, "config":Lqcom/fmradio/FmConfig;
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: RadioBand   :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getRadioBand()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: Emphasis    :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getEmphasis()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: ChSpacing   :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: RdsStd      :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: LowerLimit  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: UpperLimit  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-static {}, Lcom/miui/fmservice/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lqcom/fmradio/FmReceiver;->enable(Lqcom/fmradio/FmConfig;)Z

    move-result v1

    .line 733
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isSpeakerEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 734
    invoke-direct {p0, v8}, Lcom/miui/fmservice/FmService;->setAudioPath(Z)Z

    .line 738
    :goto_2
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mReceiver.enable done, Status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 736
    :cond_5
    invoke-direct {p0, v7}, Lcom/miui/fmservice/FmService;->setAudioPath(Z)Z

    goto :goto_2

    .line 774
    .end local v2    # "config":Lqcom/fmradio/FmConfig;
    :cond_6
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 778
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stop()V

    goto/16 :goto_1
.end method

.method private fmOperationsOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 788
    iget-boolean v1, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    if-eqz v1, :cond_0

    .line 790
    iput-boolean v3, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    .line 791
    const/4 v1, 0x1

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 793
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 794
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 796
    const-string v1, "Fm:FmService"

    const-string v2, "audioManager.setFmRadioOn = false \n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->unMute()Z

    .line 798
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stopFM()V

    .line 800
    const-string v1, "Fm:FmService"

    const-string v2, "audioManager.setFmRadioOn false done \n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_1
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isAnalogModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 804
    const-string v1, "hw.fm.isAnalog"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iput-boolean v3, p0, Lcom/miui/fmservice/FmService;->misAnalogPathEnabled:Z

    .line 807
    :cond_2
    return-void
.end method

.method private fmOperationsReset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 813
    iget-boolean v1, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    if-eqz v1, :cond_0

    .line 815
    iput-boolean v3, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    .line 816
    const/4 v1, 0x1

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 819
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 820
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 822
    const-string v1, "Fm:FmService"

    const-string v2, "audioManager.setFmRadioOn = false \n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->unMute()Z

    .line 824
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->resetFM()V

    .line 826
    const-string v1, "Fm:FmService"

    const-string v2, "audioManager.setFmRadioOn false done \n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_1
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isAnalogModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 830
    const-string v1, "hw.fm.isAnalog"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iput-boolean v3, p0, Lcom/miui/fmservice/FmService;->misAnalogPathEnabled:Z

    .line 833
    :cond_2
    return-void
.end method

.method private fmRadioReset()Z
    .locals 3

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 867
    .local v0, "bStatus":Z
    const-string v1, "Fm:FmService"

    const-string v2, "fmRadioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmOperationsReset()V

    .line 872
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 874
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->reset()Z

    move-result v0

    .line 875
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 877
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stop()V

    .line 878
    return v0
.end method

.method private gotoIdleState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 431
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 432
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 433
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 434
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 439
    invoke-virtual {p0, v4}, Lcom/miui/fmservice/FmService;->stopForeground(Z)V

    .line 440
    return-void
.end method

.method private resetA2dpPlayback()V
    .locals 6

    .prologue
    .line 323
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    if-nez v3, :cond_0

    .line 350
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2DPSampleFile:Ljava/io/File;

    if-eqz v3, :cond_1

    .line 328
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2DPSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    :cond_1
    :goto_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, "ioBusyUnVoteIntent":Landroid/content/Intent;
    const-string v3, "com.android.server.CpuGovernorService.voteType"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v2}, Lcom/miui/fmservice/FmService;->sendBroadcast(Landroid/content/Intent;)V

    .line 342
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 344
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 345
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 346
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 347
    .end local v2    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 348
    .local v1, "exception":Ljava/lang/Exception;
    const-string v3, "Fm:FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop failed with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Fm:FmService"

    const-string v4, "Not able to delete file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private resetFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 246
    const-string v0, "Fm:FmService"

    const-string v1, "resetFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    .line 249
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->resetA2dpPlayback()V

    .line 255
    :goto_0
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    .line 256
    return-void

    .line 251
    :cond_0
    const-string v0, "Fm:FmService"

    const-string v1, "FMRadio: sending the intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/high16 v0, 0x80000

    const-string v1, ""

    invoke-static {v0, v2, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_0
.end method

.method private setAudioPath(Z)Z
    .locals 5
    .param p1, "analogMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 678
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-nez v2, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v1

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isAnalogModeEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_2

    .line 682
    const-string v2, "Fm:FmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Analog Path already is set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 685
    :cond_2
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isAnalogModeSupported()Z

    move-result v2

    if-nez v2, :cond_3

    .line 686
    const-string v2, "Fm:FmService"

    const-string v3, "Analog Path is not supported "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    :cond_3
    const-string v2, "hw.fm.digitalpath"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 693
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v2, p1}, Lqcom/fmradio/FmReceiver;->setAnalogMode(Z)Z

    move-result v0

    .line 694
    .local v0, "state":Z
    if-nez v0, :cond_4

    .line 695
    const-string v2, "Fm:FmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in toggling analog/digital path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 698
    :cond_4
    iput-boolean p1, p0, Lcom/miui/fmservice/FmService;->misAnalogPathEnabled:Z

    .line 699
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startFM()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 209
    const-string v0, "Fm:FmService"

    const-string v1, "In startFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mAppShutdown:Z

    if-ne v2, v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    if-eq v2, v0, :cond_0

    .line 215
    const-string v0, "Fm:FmService"

    const-string v1, "FM registering for registerMediaButtonEventReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isSpeakerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    .line 222
    invoke-static {v2, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 227
    :goto_1
    const-string v0, "Fm:FmService"

    const-string v1, "FMRadio: Requesting to start FM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/high16 v0, 0x80000

    const-string v1, ""

    invoke-static {v0, v2, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 230
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_1
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 425
    const-string v0, "Fm:FmService"

    const-string v1, "in stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->gotoIdleState()V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmservice/FmService;->mFMOn:Z

    .line 428
    return-void
.end method

.method private stopFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    const-string v0, "Fm:FmService"

    const-string v1, "In stopFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 236
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    .line 237
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->stopA2dpPlayback()V

    .line 242
    :goto_0
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    .line 243
    return-void

    .line 239
    :cond_0
    const/high16 v0, 0x80000

    const-string v1, ""

    invoke-static {v0, v2, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 3

    .prologue
    .line 1253
    const/4 v0, 0x0

    .line 1254
    .local v0, "bCommandSent":Z
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1256
    const-string v1, "Fm:FmService"

    const-string v2, "cancelSearch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->cancelSearch()Z

    move-result v0

    .line 1259
    :cond_0
    return v0
.end method

.method public clearStationInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1476
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmRxRdsData;->setRadioText(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0, v2}, Lqcom/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 1479
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0, v2}, Lqcom/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 1480
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmRxRdsData;->setPrgmServices(Ljava/lang/String;)V

    .line 1482
    :cond_0
    return-void
.end method

.method public enableAutoAF(Z)Z
    .locals 3

    .prologue
    .line 1417
    const/4 v0, 0x0

    .line 1418
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1420
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAutoAF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->enableAFjump(Z)Z

    move-result v0

    .line 1423
    :cond_0
    return v0
.end method

.method public enableSpeaker(Z)V
    .locals 4
    .param p1, "speakerOn"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 914
    iput-boolean p1, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    .line 915
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isAnalogModeSupported()Z

    move-result v0

    .line 916
    .local v0, "analogmode":Z
    if-nez p1, :cond_1

    .line 917
    if-eqz v0, :cond_0

    .line 918
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stopFM()V

    .line 919
    invoke-direct {p0, v2}, Lcom/miui/fmservice/FmService;->setAudioPath(Z)Z

    .line 921
    :cond_0
    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 922
    if-eqz v0, :cond_1

    .line 923
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    .line 928
    :cond_1
    iget-boolean v1, p0, Lcom/miui/fmservice/FmService;->mA2dpDeviceSupportInHal:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 929
    iget-boolean v1, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    if-ne v2, v1, :cond_2

    if-eq v2, p1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    .line 932
    :cond_3
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stopFM()V

    .line 933
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    .line 936
    :cond_4
    if-eqz p1, :cond_6

    .line 937
    if-eqz v0, :cond_5

    .line 938
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stopFM()V

    .line 939
    sget-boolean v1, Lcom/miui/fmservice/FmService;->mMuted:Z

    if-eqz v1, :cond_7

    .line 940
    invoke-direct {p0, v3}, Lcom/miui/fmservice/FmService;->setAudioPath(Z)Z

    .line 947
    :cond_5
    :goto_0
    invoke-static {v2, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 948
    if-eqz v0, :cond_6

    .line 949
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    .line 952
    :cond_6
    return-void

    .line 942
    :cond_7
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->mute()Z

    .line 943
    invoke-direct {p0, v3}, Lcom/miui/fmservice/FmService;->setAudioPath(Z)Z

    .line 944
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->unMute()Z

    goto :goto_0
.end method

.method public enableStereo(Z)Z
    .locals 3

    .prologue
    .line 1437
    const/4 v0, 0x0

    .line 1438
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1440
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableStereo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setStereoMode(Z)Z

    move-result v0

    .line 1443
    :cond_0
    return v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1295
    const-string v0, ""

    .line 1296
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    if-eqz v1, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0}, Lqcom/fmradio/FmRxRdsData;->getRadioText()Ljava/lang/String;

    move-result-object v0

    .line 1299
    if-nez v0, :cond_0

    .line 1301
    const-string v0, ""

    .line 1304
    :cond_0
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Radio Text: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    return-object v0
.end method

.method public isAnalogModeEnabled()Z
    .locals 1

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->misAnalogPathEnabled:Z

    return v0
.end method

.method public isAnalogModeSupported()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->misAnalogModeSupported:Z

    return v0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mFMOn:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 1074
    sget-boolean v0, Lcom/miui/fmservice/FmService;->mMuted:Z

    return v0
.end method

.method public isSpeakerEnabled()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    return v0
.end method

.method public isWiredHeadsetAvailable()Z
    .locals 1

    .prologue
    .line 1472
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mHeadsetPlugged:Z

    return v0
.end method

.method public mute()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1036
    const/4 v1, 0x1

    .line 1037
    .local v1, "bCommandSent":Z
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return v4

    .line 1039
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1040
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v2, "Fm:FmService"

    const-string v3, "mute:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    if-eqz v0, :cond_0

    .line 1043
    sput-boolean v4, Lcom/miui/fmservice/FmService;->mMuted:Z

    .line 1044
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 107
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 109
    new-instance v4, Lcom/miui/fmservice/FmSharedPreferences;

    invoke-direct {v4, p0}, Lcom/miui/fmservice/FmSharedPreferences;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/miui/fmservice/FmService;->mPrefs:Lcom/miui/fmservice/FmSharedPreferences;

    .line 110
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;

    .line 111
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 112
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/fmservice/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 113
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 114
    const-string v4, "ro.fm.analogpath.supported"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/fmservice/FmService;->misAnalogModeSupported:Z

    .line 116
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->registerScreenOnOffListener()V

    .line 117
    const-string v4, "ro.fm.mulinst.recording.support"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    iput-boolean v5, p0, Lcom/miui/fmservice/FmService;->mSingleRecordingInstanceSupported:Z

    .line 123
    :cond_0
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 124
    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 125
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 128
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v4, "isA2dpDeviceSupported"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "valueStr":Ljava/lang/String;
    const-string v4, "=true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/fmservice/FmService;->mA2dpDeviceSupportInHal:Z

    .line 130
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " is A2DP device Supported In HAL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/miui/fmservice/FmService;->mA2dpDeviceSupportInHal:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    const-string v0, "Fm:FmService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "Fm:FmService"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/fmservice/FmService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    iput-object v2, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmOff()Z

    .line 158
    const-string v0, "Fm:FmService"

    const-string v1, "onDestroy: unbindFromService completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 161
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 162
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/fmservice/FmService;->setLowPowerMode(Z)Z

    .line 174
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isWiredHeadsetAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    .line 176
    :cond_0
    const-string v0, "Fm:FmService"

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 181
    const-string v1, "Fm:FmService"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput p2, p0, Lcom/miui/fmservice/FmService;->mServiceStartId:I

    .line 185
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 188
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 189
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 135
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 193
    const-string v0, "Fm:FmService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->unregisterCallbacks()V

    .line 197
    invoke-virtual {p0, v2}, Lcom/miui/fmservice/FmService;->setLowPowerMode(Z)Z

    .line 198
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return v2

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->gotoIdleState()V

    goto :goto_0
.end method

.method public readInternalAntennaAvailable()V
    .locals 3

    .prologue
    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmservice/FmService;->mInternalAntennaAvailable:Z

    .line 448
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getInternalAntenna()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/fmservice/FmService;->mInternalAntennaAvailable:Z

    .line 451
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInternalAntenna: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/fmservice/FmService;->mInternalAntennaAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    return-void
.end method

.method public registerCallbacks(Lcom/miui/fmservice/IFmServiceCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/miui/fmservice/IFmServiceCallback;

    .prologue
    .line 985
    iput-object p1, p0, Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;

    .line 986
    return-void
.end method

.method public registerScreenOnOffListener()V
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Lcom/miui/fmservice/FmService$2;

    invoke-direct {v1, p0}, Lcom/miui/fmservice/FmService$2;-><init>(Lcom/miui/fmservice/FmService;)V

    iput-object v1, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/fmservice/FmService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 404
    .end local v0    # "iFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public scan(I)Z
    .locals 9
    .param p1, "pty"    # I

    .prologue
    const/16 v8, 0x1f

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1147
    const/4 v6, 0x0

    .line 1148
    .local v6, "bCommandSent":Z
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_2

    .line 1150
    const-string v0, "Fm:FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scan:  PTY: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-static {}, Lcom/miui/fmservice/FmSharedPreferences;->isRBDSStd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1154
    if-lez p1, :cond_0

    const/16 v0, 0x17

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_3

    if-gt p1, v8, :cond_3

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lqcom/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v6

    .line 1188
    :cond_2
    :goto_0
    return v6

    .line 1164
    :cond_3
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, v3, v2, v3}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    move-result v6

    goto :goto_0

    .line 1172
    :cond_4
    if-lez p1, :cond_5

    if-gt p1, v8, :cond_5

    .line 1174
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lqcom/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v6

    goto :goto_0

    .line 1182
    :cond_5
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, v3, v2, v3}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    move-result v6

    goto :goto_0
.end method

.method public seek(Z)Z
    .locals 5
    .param p1, "up"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1108
    const/4 v0, 0x0

    .line 1109
    .local v0, "bCommandSent":Z
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1111
    if-ne p1, v3, :cond_1

    .line 1113
    const-string v1, "Fm:FmService"

    const-string v2, "seek:  Up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1, v4, v3, v3}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    .line 1125
    :goto_0
    const/4 v0, 0x1

    .line 1127
    :cond_0
    return v0

    .line 1120
    :cond_1
    const-string v1, "Fm:FmService"

    const-string v2, "seek:  Down"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1, v4, v3, v4}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    goto :goto_0
.end method

.method public setLowPowerMode(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1373
    .line 1374
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1376
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLowPowerMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    if-eqz p1, :cond_1

    .line 1379
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmReceiver;->setPowerMode(I)Z

    move-result v0

    .line 1386
    :cond_0
    :goto_0
    return v0

    .line 1383
    :cond_1
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1, v0}, Lqcom/fmradio/FmReceiver;->setPowerMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public stopA2dpPlayback()V
    .locals 5

    .prologue
    .line 301
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 319
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2DPSampleFile:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 306
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2DPSampleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :cond_1
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 313
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 314
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 315
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "Fm:FmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop failed with exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Fm:FmService"

    const-string v3, "Not able to delete file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public tune(I)Z
    .locals 7
    .param p1, "frequency"    # I

    .prologue
    .line 1084
    const/4 v0, 0x0

    .line 1085
    .local v0, "bCommandSent":Z
    int-to-double v3, p1

    const-wide v5, 0x408f400000000000L

    div-double v1, v3, v5

    .line 1087
    .local v1, "doubleFrequency":D
    const-string v3, "Fm:FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tuneRadio:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v3, :cond_0

    .line 1090
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v3, p1}, Lqcom/fmradio/FmReceiver;->setStation(I)Z

    .line 1091
    const/4 v0, 0x1

    .line 1093
    :cond_0
    return v0
.end method

.method public unMute()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1054
    const/4 v1, 0x1

    .line 1055
    .local v1, "bCommandSent":Z
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isMuted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v1

    .line 1057
    :cond_1
    const-string v2, "Fm:FmService"

    const-string v3, "unMute:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1059
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1061
    sput-boolean v4, Lcom/miui/fmservice/FmService;->mMuted:Z

    .line 1062
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1063
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    goto :goto_0
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;

    .line 993
    return-void
.end method
