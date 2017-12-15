.class public Lcom/android/camera/ui/HdrButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "HdrButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsVideo:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/HdrButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private doTapButton()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2b

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->showPopup()V

    :goto_26
    return-void

    :cond_27
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->dismissPopup()Z

    goto :goto_26

    :cond_2b
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->toggle()V

    goto :goto_26
.end method

.method private filterPreference()V
    .registers 11

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_f
    if-ge v5, v8, :cond_1d

    aget-object v3, v7, v5

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1d
    iget-boolean v5, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    if-eqz v5, :cond_4b

    sget-boolean v5, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-nez v5, :cond_44

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v5

    if-eqz v5, :cond_44

    :cond_2b
    :goto_2b
    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5, v2}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5, v4}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_43

    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5, v6}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    :cond_43
    return-void

    :cond_44
    const-string/jumbo v5, "on"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_4b
    sget-boolean v5, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v5, :cond_6c

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v5

    if-eqz v5, :cond_6c

    :cond_55
    sget-boolean v5, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v5, :cond_5f

    const-string/jumbo v5, "normal"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5f
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v5

    if-nez v5, :cond_2b

    const-string/jumbo v5, "auto"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_6c
    const-string/jumbo v5, "live"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    :goto_79
    array-length v5, v0

    if-ge v1, v5, :cond_55

    const-string/jumbo v5, "normal"

    aget-object v7, v0, v1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e01b9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    :cond_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_79
.end method

.method private findCurrentIndex()I
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private getPreferenceSize()I
    .registers 3

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

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

.method private initializePopup()V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    return-void

    :cond_16
    const-string/jumbo v1, "HdrButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4f
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isPopupShown()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private notifyClickToDispatcher()V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f090067

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    return-void
.end method

.method private notifyPopupVisibleChange(Z)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v1, 0x4

    const v2, 0x7f090067

    const/4 v3, 0x3

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method private toggle()V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_19

    const/4 v0, 0x0

    :cond_19
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    :cond_21
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    return-void
.end method


# virtual methods
.method public couldBeVisible()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    move v0, v2

    :goto_1f
    return v0

    :cond_20
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_35

    move v0, v1

    goto :goto_1f

    :cond_35
    move v0, v2

    goto :goto_1f
.end method

.method public dismissPopup()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

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
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->dismissPopup()Z

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_14
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_3

    :pswitch_18
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HdrButton;->notifyPopupVisibleChange(Z)V

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
    .registers 3

    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->enableControls(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    :cond_c
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public initializeXml(Z)V
    .registers 8

    const/16 v4, 0x8

    iput-boolean p1, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    if-eqz p1, :cond_39

    const v1, 0x7f060009

    :goto_9
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/preferences/IconListPreference;

    iput-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->filterPreference()V

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_3d

    :cond_35
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    return-void

    :cond_39
    const v1, 0x7f060005

    goto :goto_9

    :cond_3d
    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v3, 0x0

    :goto_46
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->refreshValue()V

    return-void

    :cond_4d
    move v3, v4

    goto :goto_46
.end method

.method public isOverridden()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCameraOpen()V
    .registers 8

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->clearAnimation()V

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v5

    if-nez v5, :cond_21

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v5

    if-nez v5, :cond_21

    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_25

    :cond_21
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    return-void

    :cond_25
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v5

    iget-boolean v6, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    if-ne v5, v6, :cond_3f

    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_36

    move v2, v3

    :cond_36
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    if-eqz v1, :cond_5f

    move-object v2, v4

    :goto_3c
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    :cond_3f
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_52

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    :cond_52
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->refreshValue()V

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    :cond_5e
    return-void

    :cond_5f
    const-string/jumbo v2, "off"

    goto :goto_3c
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_11
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->doTapButton()V

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void
.end method

.method public onCreate()V
    .registers 2

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HdrButton;->initializeXml(Z)V

    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    return-void
.end method

.method public refreshValue()V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_43

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->findCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setImageResource(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_43
    return-void
.end method

.method public reloadPreference()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->refreshValue()V

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_12
    return-void
.end method

.method public setOrientation(IZ)V
    .registers 3

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    return-void
.end method

.method public showPopup()V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TopPopupParent;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    :cond_1f
    return-void
.end method

.method public updateHdrAccordingFlash(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_1f
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string/jumbo v1, "auto"

    :goto_28
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    const-string/jumbo v1, "off"

    goto :goto_28

    :cond_33
    const-string/jumbo v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "off"

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_2e

    :cond_4f
    const-string/jumbo v1, "torch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "off"

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_2e
.end method

.method public updateVisible()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->couldBeVisible()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_45

    const/4 v1, 0x1

    :goto_c
    if-eq v0, v1, :cond_44

    if-eqz v0, :cond_47

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->isFlashPressed()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->updateHdrAccordingFlash(Ljava/lang/String;)V

    :cond_3b
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    if-eqz v0, :cond_4b

    move v1, v2

    :goto_41
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    :cond_44
    return-void

    :cond_45
    move v1, v2

    goto :goto_c

    :cond_47
    const-string/jumbo v1, "off"

    goto :goto_11

    :cond_4b
    const/16 v1, 0x8

    goto :goto_41
.end method
