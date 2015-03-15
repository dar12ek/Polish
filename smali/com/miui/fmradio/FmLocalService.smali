.class public Lcom/miui/fmradio/FmLocalService;
.super Landroid/app/Service;
.source "FmLocalService.java"

# interfaces
.implements Lcom/miui/fmradio/IFmScanListener;
.implements Lcom/miui/fmradio/IFmStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FmLocalService$AudioFocusListener;,
        Lcom/miui/fmradio/FmLocalService$HeadsetListener;,
        Lcom/miui/fmradio/FmLocalService$MediaButtonListener;,
        Lcom/miui/fmradio/FmLocalService$LocalBinder;
    }
.end annotation


# static fields
.field public static final RECORD_DIRECTORY_PATH:Ljava/lang/String;

.field private static sIsInstantiated:Z


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPath:I

.field private mDelayStopRunnable:Ljava/lang/Runnable;

.field private mFmManager:Lcom/miui/fmradio/IFmServiceManager;

.field private mFmRecorder:Lcom/miui/fmradio/FmRecorder;

.field private mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

.field private mFmState:I

.field private mFmStateListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/miui/fmradio/IFmLocalServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

.field private mIsSeeking:Z

.field private mIsTuning:Z

.field private mLocalBinder:Lcom/miui/fmradio/FmLocalService$LocalBinder;

.field private mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSleepAtPhoneTime:J

.field private mStablePhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTurnOffAtPhoneTime:J

.field private mTurnOffByMediaButton:Z

.field private mTurnOffByUser:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sound_recorder/fm_rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FmLocalService;->RECORD_DIRECTORY_PATH:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/fmradio/FmLocalService;->sIsInstantiated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    .line 98
    new-instance v0, Lcom/miui/fmradio/FmLocalService$1;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmLocalService$1;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    .line 184
    new-instance v0, Lcom/miui/fmradio/FmLocalService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmLocalService$LocalBinder;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mLocalBinder:Lcom/miui/fmradio/FmLocalService$LocalBinder;

    .line 960
    new-instance v0, Lcom/miui/fmradio/FmLocalService$2;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmLocalService$2;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mDelayStopRunnable:Ljava/lang/Runnable;

    .line 1106
    new-instance v0, Lcom/miui/fmradio/FmLocalService$3;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmLocalService$3;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    .line 1322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1323
    new-instance v0, Lcom/miui/fmradio/FmLocalService$4;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmLocalService$4;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mStablePhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private abandonAudioFoucus()V
    .locals 2

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    .line 1272
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyServiceReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyFmTurnedOn()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/fmradio/FmLocalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmScanCompleted(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmRecordStarted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/fmradio/FmLocalService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/miui/fmradio/FmLocalService;->notifyFmRecordError(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->showRecordNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmRecordStoped(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyFmSleepModeChange()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/fmradio/FmLocalService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyHeadsetStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/fmradio/FmLocalService;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffAtPhoneTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyServiceClean()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/fmradio/FmLocalService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->checkProgressForeground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyFmTurnedOff()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/fmradio/FmLocalService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/miui/fmradio/FmLocalService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/miui/fmradio/FmLocalService;->mSleepAtPhoneTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/miui/fmradio/FmLocalService;)Lcom/miui/fmradio/IFmServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/miui/fmradio/FmLocalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByUser:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/miui/fmradio/FmLocalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByMediaButton:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmPhoneStateListener()V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmMediaButtonListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/fmradio/FmLocalService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/miui/fmradio/FmLocalService;->notifyFmServiceError(II)V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->abandonAudioFoucus()V

    return-void
.end method

.method static synthetic access$3100(Lcom/miui/fmradio/FmLocalService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/miui/fmradio/FmLocalService;)Lcom/miui/fmradio/FmLocalService$AudioFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/fmradio/FmLocalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmTuneCompleted(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/fmradio/FmLocalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmSeekCompleted(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/fmradio/FmLocalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmAudioPathChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmRdsChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyFmScanStarted()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/fmradio/FmLocalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmStationScaned(I)V

    return-void
.end method

.method private cancelFmNotification()V
    .locals 1

    .prologue
    .line 1103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->stopForeground(Z)V

    .line 1104
    return-void
.end method

.method private checkProgressForeground()Z
    .locals 6

    .prologue
    .line 366
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 367
    .local v3, "pInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v1, 0x1

    .line 368
    .local v1, "inForeground":Z
    if-nez v3, :cond_1

    .line 369
    const/4 v1, 0x0

    .line 378
    :cond_0
    :goto_0
    return v1

    .line 371
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 372
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 373
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_3

    const/4 v1, 0x1

    .line 374
    :goto_1
    goto :goto_0

    .line 373
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private checkSysState()Z
    .locals 1

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized destroyFmService()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-nez v0, :cond_0

    .line 347
    const-string v0, "Fm:FmLocalService"

    const-string v1, "Service has already been destroyed, skip!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :goto_0
    monitor-exit p0

    return-void

    .line 351
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 352
    const-string v0, "Fm:FmLocalService"

    const-string v1, "Service initing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 356
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    if-ne v0, v2, :cond_2

    .line 357
    const-string v0, "Fm:FmLocalService"

    const-string v1, "Destroying, skip!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :cond_2
    const/4 v0, 0x6

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 362
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private getAudioPathInner()I
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->getAudioPath()I

    move-result v0

    .line 953
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isClientActive()Z
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCall()Z
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyFmAudioPathChanged(I)V
    .locals 6
    .param p1, "audiopath"    # I

    .prologue
    .line 490
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 491
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 492
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 494
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmAudioPathChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmAudioPathChanged Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 500
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 499
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 500
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 501
    return-void
.end method

.method private notifyFmRdsChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "rds"    # Ljava/lang/String;

    .prologue
    .line 504
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 505
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 506
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 508
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmRdsChanged(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmRdsChanged Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 514
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 513
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 514
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 515
    return-void
.end method

.method private notifyFmRecordError(II)V
    .locals 6
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 589
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 590
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 591
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 593
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1, p2}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmRecordError(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmRecordError Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 599
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 598
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 599
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 600
    return-void
.end method

.method private notifyFmRecordStarted(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 575
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 576
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 577
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 579
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmRecordStarted(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    :catch_0
    move-exception v1

    .line 581
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmRecordStarted Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 585
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 584
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 585
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 586
    return-void
.end method

.method private notifyFmRecordStoped(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 603
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 604
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 605
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 607
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmRecordStop(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    :catch_0
    move-exception v1

    .line 609
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmRecordStop Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 613
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 612
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 613
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 614
    return-void
.end method

.method private notifyFmScanCompleted(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 561
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 562
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 563
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 565
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onScanComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    :catch_0
    move-exception v1

    .line 567
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onScanComplete failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 571
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 570
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 571
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 572
    return-void
.end method

.method private notifyFmScanStarted()V
    .locals 6

    .prologue
    .line 532
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 533
    :try_start_0
    const-string v3, "Fm:FmLocalService"

    const-string v5, "nofityFmScanStated"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 535
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 537
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onScanStart()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    :catch_0
    move-exception v1

    .line 539
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onScanStart failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 543
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 542
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 543
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 544
    return-void
.end method

.method private notifyFmSeekCompleted(I)V
    .locals 6
    .param p1, "frequency"    # I

    .prologue
    .line 476
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 477
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 478
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 480
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmSeekCompleted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmSeekCompleted Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 486
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 485
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 486
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    return-void
.end method

.method private notifyFmServiceError(II)V
    .locals 6
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 518
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 519
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 520
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 522
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1, p2}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmServiceError(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    :catch_0
    move-exception v1

    .line 524
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmServiceError Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 528
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 527
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 528
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 529
    return-void
.end method

.method private notifyFmSleepModeChange()V
    .locals 10

    .prologue
    .line 617
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 618
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 619
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 621
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    iget-wide v6, p0, Lcom/miui/fmradio/FmLocalService;->mSleepAtPhoneTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v3, v4}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmSleepModeChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 622
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v4, "Callback onFmSleepModeChnge Failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 627
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 626
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 627
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 628
    return-void
.end method

.method private notifyFmStationScaned(I)V
    .locals 6
    .param p1, "freq"    # I

    .prologue
    .line 547
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 548
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 549
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 551
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onStationScaned(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :catch_0
    move-exception v1

    .line 553
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onStationScaned"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 557
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 556
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 557
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 558
    return-void
.end method

.method private notifyFmTuneCompleted(I)V
    .locals 6
    .param p1, "frequency"    # I

    .prologue
    .line 462
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 463
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 464
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 466
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmTuneCompleted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmTuneCompleted Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 472
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 471
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 472
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 473
    return-void
.end method

.method private notifyFmTurnedOff()V
    .locals 6

    .prologue
    .line 448
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 449
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 450
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 452
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmTurnedOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmTurnedOff Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 458
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 457
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 458
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 459
    return-void
.end method

.method private notifyFmTurnedOn()V
    .locals 6

    .prologue
    .line 434
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 435
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 436
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 438
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmTurnedOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmTurnedOn Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 444
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 443
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 444
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    return-void
.end method

.method private notifyHeadsetStateChanged(Z)V
    .locals 6
    .param p1, "headset"    # Z

    .prologue
    .line 631
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 632
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 633
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 635
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onHeadsetStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 636
    :catch_0
    move-exception v1

    .line 637
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmHeadsetStateChanged Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 641
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 640
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 641
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 642
    return-void
.end method

.method private notifyServiceClean()V
    .locals 6

    .prologue
    .line 646
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 647
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 648
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 650
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onServiceClean()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onServiceClean Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 656
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 655
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 656
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 657
    return-void
.end method

.method private notifyServiceReady()V
    .locals 6

    .prologue
    .line 420
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 421
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 422
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 424
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmServiceReady()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmServiceReady failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 430
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 429
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 430
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    return-void
.end method

.method private registerFmMediaButtonListener()V
    .locals 3

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    if-nez v0, :cond_0

    .line 1133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1134
    const-string v1, "com.miui.fmradio.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1135
    new-instance v1, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;-><init>(Lcom/miui/fmradio/FmLocalService;Lcom/miui/fmradio/FmLocalService$1;)V

    iput-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    .line 1136
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    invoke-virtual {p0, v1, v0}, Lcom/miui/fmradio/FmLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1138
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/fmradio/FmMediaButtonIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1142
    :cond_0
    return-void
.end method

.method private registerFmPhoneStateListener()V
    .locals 3

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mStablePhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1307
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1309
    :cond_0
    return-void
.end method

.method private registerHeadsetListener()V
    .locals 2

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    if-nez v0, :cond_0

    .line 1202
    new-instance v0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/fmradio/FmLocalService$HeadsetListener;-><init>(Lcom/miui/fmradio/FmLocalService;Lcom/miui/fmradio/FmLocalService$1;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    .line 1204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1205
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1206
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1207
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    invoke-virtual {p0, v1, v0}, Lcom/miui/fmradio/FmLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1209
    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 4

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    if-nez v0, :cond_0

    .line 1261
    new-instance v0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;-><init>(Lcom/miui/fmradio/FmLocalService;Lcom/miui/fmradio/FmLocalService$1;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    .line 1262
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1265
    :cond_0
    return-void
.end method

.method private setAudioPathInner(I)V
    .locals 1
    .param p1, "audiopath"    # I

    .prologue
    .line 929
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0, p1}, Lcom/miui/fmradio/IFmServiceManager;->setAudioPath(I)V

    .line 932
    :cond_0
    return-void
.end method

.method private showFmNotification(IZ)V
    .locals 8

    .prologue
    const/high16 v7, 0x7f0a0000

    const v6, 0x7f02002a

    const/4 v4, 0x0

    .line 1057
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1060
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/fmradio/FmRadioActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1061
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1062
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1064
    const v0, 0x7f0a0025

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/miui/fmradio/FmLocalService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1066
    const/4 v0, 0x0

    .line 1067
    if-eqz p2, :cond_1

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/miui/fmradio/FmLocalService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1071
    :cond_1
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1072
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1073
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1074
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1075
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1076
    invoke-virtual {p0, v7}, Lcom/miui/fmradio/FmLocalService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1077
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1078
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/fmradio/FmLocalService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private showRecordNotification(Ljava/lang/String;)V
    .locals 6

    .prologue
    const v5, 0x7f0a001a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1082
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1083
    const-string v1, "com.android.soundrecorder"

    const-string v2, "com.android.soundrecorder.RecordPreviewActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1085
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fmrec://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1088
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1090
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1091
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1092
    const v2, 0x7f02002a

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1093
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v5, v2}, Lcom/miui/fmradio/FmLocalService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1094
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v5, v2}, Lcom/miui/fmradio/FmLocalService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1095
    const v2, 0x7f0a001b

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmLocalService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1096
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1099
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1100
    return-void
.end method

.method private unregisterFmMediaButtonListener()V
    .locals 3

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    .line 1149
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/fmradio/FmMediaButtonIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1153
    :cond_0
    return-void
.end method

.method private unregisterFmPhoneStateListener()V
    .locals 3

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1315
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1316
    return-void
.end method

.method private unregisterHeadsetListener()V
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    .line 1216
    :cond_0
    return-void
.end method


# virtual methods
.method public abortScanStations()V
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->abortScanStation()V

    .line 1050
    :cond_0
    return-void
.end method

.method public cancelDelayedStop()V
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mDelayStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 982
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/fmradio/FmLocalService;->mSleepAtPhoneTime:J

    .line 983
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 984
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 987
    :cond_0
    return-void
.end method

.method public getAudioPath()I
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getCurrentFrequency()I
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->getCurrentFrequency()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordingTimeInMillis()J
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmRecorder;->getRecordingTimeInMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized initFmService()V
    .locals 3

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 331
    const-string v0, "Fm:FmLocalService"

    const-string v1, "Destroying, pending init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :goto_0
    monitor-exit p0

    return-void

    .line 335
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    if-eqz v0, :cond_1

    .line 336
    const-string v0, "Fm:FmLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not init service mFmState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 340
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 341
    invoke-static {p0}, Lcom/miui/fmservice/FmServiceManager;->getFmServiceManager(Landroid/content/Context;)Lcom/miui/fmradio/IFmServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    .line 342
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0, p0, p0}, Lcom/miui/fmradio/IFmServiceManager;->initFmServiceManager(Lcom/miui/fmradio/IFmStateCallback;Lcom/miui/fmradio/IFmScanListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 815
    monitor-enter p0

    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFmServiceReady()Z
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->isFmServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSleepMode()Z
    .locals 4

    .prologue
    .line 990
    iget-wide v0, p0, Lcom/miui/fmradio/FmLocalService;->mSleepAtPhoneTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mLocalBinder:Lcom/miui/fmradio/FmLocalService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 316
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 317
    new-instance v0, Lcom/miui/fmradio/FmRecorder;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    .line 319
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    .line 320
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 321
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 322
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPowerManager:Landroid/os/PowerManager;

    .line 323
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 324
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mActivityManager:Landroid/app/ActivityManager;

    .line 325
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->registerHeadsetListener()V

    .line 326
    sput-boolean v2, Lcom/miui/fmradio/FmLocalService;->sIsInstantiated:Z

    .line 327
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 389
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 390
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterHeadsetListener()V

    .line 391
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmPhoneStateListener()V

    .line 392
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmMediaButtonListener()V

    .line 393
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->abandonAudioFoucus()V

    .line 394
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/fmradio/FmLocalService;->sIsInstantiated:Z

    .line 395
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 396
    return-void
.end method

.method public onFmAudioPathChanged(I)V
    .locals 3
    .param p1, "audiopath"    # I

    .prologue
    .line 774
    iput p1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    .line 775
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 776
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 777
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 778
    return-void
.end method

.method public onFmRdsChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "rds"    # Ljava/lang/String;

    .prologue
    .line 782
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 783
    .local v0, "msg":Landroid/os/Message;
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "rds":Ljava/lang/String;
    :cond_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 784
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 785
    return-void
.end method

.method public onFmSeekCompleted(I)V
    .locals 3
    .param p1, "frequency"    # I

    .prologue
    .line 762
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    invoke-static {p0, p1}, Lcom/miui/fmradio/StationItemHelper;->setCurrentFrequency(Landroid/content/Context;I)V

    .line 764
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/miui/fmradio/FmLocalService;->showFmNotification(IZ)V

    .line 765
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsSeeking:Z

    .line 766
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 767
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 768
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 770
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public declared-synchronized onFmServiceDestroyed()V
    .locals 1

    .prologue
    .line 679
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    .line 680
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 681
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->initFmService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :goto_0
    monitor-exit p0

    return-void

    .line 684
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->stopSelf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFmServiceError(II)V
    .locals 3
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 740
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 741
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 742
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 746
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 744
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->destroyFmService()V

    goto :goto_0
.end method

.method public declared-synchronized onFmServiceReady()V
    .locals 2

    .prologue
    .line 665
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 666
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 667
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->destroyFmService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :goto_1
    monitor-exit p0

    return-void

    .line 665
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 669
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFmTuneCompleted(I)V
    .locals 3
    .param p1, "frequency"    # I

    .prologue
    const/4 v2, 0x0

    .line 750
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    invoke-static {p0, p1}, Lcom/miui/fmradio/StationItemHelper;->setCurrentFrequency(Landroid/content/Context;I)V

    .line 752
    invoke-direct {p0, p1, v2}, Lcom/miui/fmradio/FmLocalService;->showFmNotification(IZ)V

    .line 753
    iput-boolean v2, p0, Lcom/miui/fmradio/FmLocalService;->mIsTuning:Z

    .line 754
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 755
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 756
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 758
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onFmTurnedOff()V
    .locals 4

    .prologue
    .line 715
    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffAtPhoneTime:J

    .line 717
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->cancelFmNotification()V

    .line 718
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->stopRecord()V

    .line 719
    iget-boolean v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByMediaButton:Z

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 723
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 731
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 734
    :cond_2
    return-void

    .line 725
    :cond_3
    iget-boolean v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByUser:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByMediaButton:Z

    if-nez v0, :cond_1

    .line 728
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->destroyFmService()V

    goto :goto_0
.end method

.method public onFmTurnedOn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 694
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 695
    iput-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsSeeking:Z

    .line 696
    iput-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsTuning:Z

    .line 697
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->checkSysState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    # getter for: Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->mAudioState:I
    invoke-static {v0}, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->access$2100(Lcom/miui/fmradio/FmLocalService$AudioFocusListener;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 699
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/miui/fmradio/FmLocalService;->turnFmOff(ZZ)V

    .line 711
    :cond_1
    :goto_0
    return-void

    .line 702
    :cond_2
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->registerFmMediaButtonListener()V

    .line 703
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->registerFmPhoneStateListener()V

    .line 704
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->getCurrentFrequency()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/miui/fmradio/FmLocalService;->showFmNotification(IZ)V

    .line 705
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->requestAudioFocus()V

    .line 706
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 708
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->getAudioPathInner()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 709
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmLocalService;->setAudioPathInner(I)V

    goto :goto_0
.end method

.method public onScanComplete(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 801
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 802
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 803
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 804
    return-void
.end method

.method public onScanStart()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 790
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 384
    const/4 v0, 0x2

    return v0
.end method

.method public onStationScaned(I)V
    .locals 3
    .param p1, "freq"    # I

    .prologue
    .line 794
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 795
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 796
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 797
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->destroyFmService()V

    .line 311
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public registerFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    .locals 3
    .param p1, "l"    # Lcom/miui/fmradio/IFmLocalServiceCallback;

    .prologue
    .line 399
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 401
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v1}, Lcom/miui/fmradio/IFmServiceManager;->isFmServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    const-string v1, "Fm:FmLocalService"

    const-string v2, "registerFmStateListener onFmServiceReady()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :try_start_1
    invoke-interface {p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmServiceReady()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 401
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmLocalService"

    const-string v2, "Callback onFmServiceReady failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scanStations()V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->scanStations()V

    .line 1044
    :cond_0
    return-void
.end method

.method public seekFm(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .prologue
    const/4 v4, 0x4

    .line 891
    iget v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsSeeking:Z

    if-eqz v1, :cond_2

    .line 896
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 897
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 898
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 902
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v1, :cond_0

    .line 903
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsSeeking:Z

    .line 904
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v1, p1}, Lcom/miui/fmradio/IFmServiceManager;->seekFm(Z)Z

    goto :goto_0
.end method

.method public setAudioPath(I)V
    .locals 2
    .param p1, "audiopath"    # I

    .prologue
    const/4 v1, 0x2

    .line 936
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    iget-boolean v0, v0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsHeadsetPluged:Z

    if-nez v0, :cond_1

    .line 937
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    if-eq v0, v1, :cond_0

    .line 938
    iput v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    .line 939
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmAudioPathChanged(I)V

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->setAudioPathInner(I)V

    goto :goto_0

    .line 944
    :cond_2
    iput p1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    .line 945
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmAudioPathChanged(I)V

    goto :goto_0
.end method

.method public setDelayedStop(J)V
    .locals 2
    .param p1, "delayedMillis"    # J

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/fmradio/FmLocalService;->mSleepAtPhoneTime:J

    .line 971
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mDelayStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 973
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 978
    return-void
.end method

.method public startRecord()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 998
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    if-nez v5, :cond_2

    .line 1003
    new-instance v5, Lcom/miui/fmradio/FmRecorder;

    invoke-direct {v5, p0}, Lcom/miui/fmradio/FmRecorder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    .line 1006
    :cond_2
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xa060009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1007
    .local v4, "quality":I
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/miui/fmradio/FmLocalService;->RECORD_DIRECTORY_PATH:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1009
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1010
    invoke-direct {p0, v8, v7}, Lcom/miui/fmradio/FmLocalService;->notifyFmRecordError(II)V

    goto :goto_0

    .line 1014
    :cond_3
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getCurrentFrequency()I

    move-result v2

    .line 1015
    .local v2, "freq":I
    const v5, 0x7f0a0013

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/miui/fmradio/FmLocalService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1016
    .local v3, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v5, ".mp3"

    invoke-static {p0, v3, v5}, Lmiui/util/RecordingNameUtils;->generatFMRecordName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1018
    .local v1, "file":Ljava/io/File;
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    invoke-virtual {v5, v6}, Lcom/miui/fmradio/FmRecorder;->setRecorderListener(Lcom/miui/fmradio/FmRecorder$FmRecorderListener;)V

    .line 1019
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/miui/fmradio/FmRecorder;->startRecord(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmRecorder;->stopRecord()V

    .line 1026
    :cond_0
    return-void
.end method

.method public tuneFm(I)V
    .locals 5
    .param p1, "frequency"    # I

    .prologue
    const/4 v4, 0x4

    .line 909
    iget v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsSeeking:Z

    if-eqz v1, :cond_2

    .line 914
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 915
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 916
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 920
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v1, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getCurrentFrequency()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 922
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsTuning:Z

    .line 923
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v1, p1}, Lcom/miui/fmradio/IFmServiceManager;->tuneFm(I)Z

    goto :goto_0
.end method

.method public turnFmOff()V
    .locals 2

    .prologue
    .line 856
    monitor-enter p0

    .line 857
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/fmradio/FmLocalService;->turnFmOff(ZZ)V

    .line 858
    monitor-exit p0

    .line 859
    return-void

    .line 858
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnFmOff(ZZ)V
    .locals 3
    .param p1, "fromUser"    # Z
    .param p2, "fromMediaButton"    # Z

    .prologue
    .line 862
    monitor-enter p0

    .line 863
    :try_start_0
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 864
    const-string v0, "Fm:FmLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FM is not on, skip. mFmState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    monitor-exit p0

    .line 888
    :goto_0
    return-void

    .line 867
    :cond_0
    iput-boolean p1, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByUser:Z

    .line 868
    iput-boolean p2, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByMediaButton:Z

    .line 870
    if-eqz p1, :cond_1

    .line 872
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmPhoneStateListener()V

    .line 875
    :cond_1
    if-nez p2, :cond_2

    .line 876
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmMediaButtonListener()V

    .line 879
    :cond_2
    if-eqz p1, :cond_3

    .line 880
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->abandonAudioFoucus()V

    .line 883
    :cond_3
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_4

    .line 884
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 885
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->turnFmOff()V

    .line 887
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnFmOn()V
    .locals 1

    .prologue
    .line 821
    monitor-enter p0

    .line 822
    :try_start_0
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->turnFmOn(I)V

    .line 823
    monitor-exit p0

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnFmOn(I)V
    .locals 5
    .param p1, "frequency"    # I

    .prologue
    const/4 v2, 0x5

    .line 827
    monitor-enter p0

    .line 828
    :try_start_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->checkSysState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 829
    const-string v1, "Fm:FmLocalService"

    const-string v2, "turnFmOn but state error, skip!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    monitor-exit p0

    .line 853
    :goto_0
    return-void

    .line 833
    :cond_0
    iget v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    if-eq v1, v2, :cond_1

    .line 834
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 836
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 837
    monitor-exit p0

    goto :goto_0

    .line 852
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 840
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v1, :cond_3

    .line 841
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 842
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    iget-boolean v1, v1, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsHeadsetPluged:Z

    if-nez v1, :cond_2

    .line 843
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 845
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 847
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v1, p1}, Lcom/miui/fmradio/IFmServiceManager;->turnFmOn(I)V

    .line 848
    iget v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->getAudioPathInner()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 849
    iget v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    invoke-direct {p0, v1}, Lcom/miui/fmradio/FmLocalService;->setAudioPathInner(I)V

    .line 852
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    .locals 2
    .param p1, "l"    # Lcom/miui/fmradio/IFmLocalServiceCallback;

    .prologue
    .line 414
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 416
    monitor-exit v1

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
