.class public Lcom/android/camera/ui/FlashButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "FlashButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCameraOpened:Z

.field private mDispatching:Z

.field private mIsVideo:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "FlashButton"

    sput-object v0, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/FlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private doTapButton()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1d

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->triggerPopup()V

    :goto_1c
    return-void

    :cond_1d
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->toggle()V

    goto :goto_1c
.end method

.method private findCurrentIndex()I
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private getPreferenceSize()I
    .registers 3

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v1, v0

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static getRestoredFlashMode()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_restored_flashmode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isPopupShown()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private notifyClickToDispatcher()V
    .registers 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f090066

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    return-void
.end method

.method private notifyPopupVisibleChange(Z)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v1, 0x4

    const v2, 0x7f090066

    const/4 v3, 0x3

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method private setRestoredFlashMode(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p1, :cond_14

    const-string/jumbo v1, "pref_camera_restored_flashmode_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_14
    const-string/jumbo v1, "pref_camera_restored_flashmode_key"

    const-string/jumbo v2, "torch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :goto_20
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    :cond_24
    iget-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-eqz v2, :cond_2c

    const-string/jumbo p1, "off"

    goto :goto_20

    :cond_2c
    const-string/jumbo p1, "auto"

    goto :goto_20
.end method

.method private toggle()V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1a

    const/4 v0, 0x0

    :cond_1a
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->notifyClickToDispatcher()V

    return-void
.end method

.method private triggerPopup()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_21

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->showPopup()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    goto :goto_21
.end method


# virtual methods
.method public avoidTorchOpen()Z
    .registers 5

    const-string/jumbo v0, "torch"

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo v1, "live"

    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCameraOpened:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_38
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    :goto_40
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    const/4 v0, 0x1

    return v0

    :cond_45
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_hdr_key"

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string/jumbo v0, "auto"

    :goto_57
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_5c
    const-string/jumbo v0, "off"

    goto :goto_57

    :cond_60
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_40

    :cond_69
    const/4 v0, 0x0

    return v0
.end method

.method public dismissPopup()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    packed-switch p1, :pswitch_data_26

    :cond_3
    :goto_3
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_14
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->notifyClickToDispatcher()V

    goto :goto_3

    :pswitch_18
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FlashButton;->notifyPopupVisibleChange(Z)V

    goto :goto_3

    :pswitch_data_26
    .packed-switch 0x3
        :pswitch_18
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public enableControls(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->enableControls(Z)V

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    return-void
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected initializePopup()V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    return-void

    :cond_16
    sget-object v1, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4e
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initializeXml(Z)V
    .registers 6

    const/4 v3, 0x0

    iput-boolean p1, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-eqz p1, :cond_2f

    const v1, 0x7f060008

    :goto_8
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/preferences/IconListPreference;

    iput-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_27
    iput-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    return-void

    :cond_2f
    const v1, 0x7f060004

    goto :goto_8

    :cond_33
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->avoidTorchOpen()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    :cond_42
    return-void
.end method

.method public isFlashPressed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    return v0
.end method

.method public isOverridden()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keepSetValue(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    goto :goto_19

    :cond_1e
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public onCameraOpen()V
    .registers 8

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    iput-boolean v5, p0, Lcom/android/camera/ui/FlashButton;->mCameraOpened:Z

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_19
    iput-boolean v4, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    return-void

    :cond_1f
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_42

    const/4 v1, 0x0

    :goto_2a
    iget-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-nez v3, :cond_34

    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v3

    if-eqz v3, :cond_4b

    :cond_34
    :goto_34
    if-eqz v1, :cond_3c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v5, :cond_54

    :cond_3c
    iput-boolean v4, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    return-void

    :cond_42
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    goto :goto_2a

    :cond_4b
    if-eqz v1, :cond_34

    const-string/jumbo v3, "torch"

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_54
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v1}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-gt v3, v5, :cond_68

    iput-boolean v4, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    return-void

    :cond_68
    iput-boolean v5, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_80

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    :cond_80
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_99

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    :cond_99
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_11
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->doTapButton()V

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void
.end method

.method public onCreate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->initializeXml(Z)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onResume()V

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->avoidTorchOpen()Z

    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    if-nez p1, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public overrideValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    return-void
.end method

.method public refreshValue()V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_43

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setImageResource(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_43
    return-void
.end method

.method public reloadPreference()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    :cond_7
    return-void
.end method

.method public restoreKeptValue()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isFlashPressed()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_11

    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    :cond_11
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    :cond_1a
    return-void
.end method

.method public setOrientation(IZ)V
    .registers 3

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    if-nez v0, :cond_6

    const/16 p1, 0x8

    :cond_6
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    return-void
.end method

.method public showPopup()V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TopPopupParent;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    :cond_1f
    return-void
.end method

.method public updateFlashModeAccordingHdr(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isFlashPressed()Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    move-object v0, v1

    :goto_e
    const-string/jumbo v2, "auto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string/jumbo v2, "auto"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_2c
    const-string/jumbo v2, "normal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string/jumbo v2, "off"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    goto :goto_26

    :cond_45
    const-string/jumbo v2, "live"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string/jumbo v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string/jumbo v2, "off"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    goto :goto_26

    :cond_67
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    goto :goto_26

    :cond_6b
    invoke-direct {p0, v3}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public updatePopup(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-eq p1, v0, :cond_f

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    :cond_c
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->triggerPopup()V

    :cond_f
    return-void
.end method
