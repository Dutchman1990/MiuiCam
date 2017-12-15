.class public Lcom/android/camera/ui/SubScreenIndicatorButton;
.super Lcom/android/camera/ui/V6AbstractIndicator;
.source "SubScreenIndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field private mOverrideValue:Ljava/lang/String;

.field private mParentPopup:Lcom/android/camera/ui/SubScreenPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setClickable(Z)V

    return-void
.end method

.method private initializePopup()V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    return-void

    :cond_16
    const-string/jumbo v0, "SubScreenIndicatorButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to initialize popup, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPopup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_51
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private notifyMessageToDispatcher(I)V
    .registers 8

    const-string/jumbo v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMessageDispatcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-nez v0, :cond_21

    return-void

    :cond_21
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x3

    move v1, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SubScreenPopup;->dismissChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    const/4 v0, 0x1

    return v0

    :cond_19
    return v1
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_26

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->reloadPreference()V

    const/4 v0, 0x1

    return v0

    :cond_15
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_10

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .registers 8

    invoke-super/range {p0 .. p6}, Lcom/android/camera/ui/V6AbstractIndicator;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V

    check-cast p7, Lcom/android/camera/ui/SubScreenPopup;

    iput-object p7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    return-void
.end method

.method public isOverridden()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onOtherPopupShowed(I)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isOverridden()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_15
    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    return v4

    :cond_1c
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    return v4

    :cond_20
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_97

    if-ne v0, v4, :cond_97

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4d

    :cond_42
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_4d
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isOverridden()Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_93

    :cond_67
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->showPopup()V

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_76
    :goto_76
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8d

    :cond_82
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v1, :cond_8d

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->notifyMessageToDispatcher(I)V

    :cond_8d
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->notifyMessageToDispatcher(I)V

    return v4

    :cond_93
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    goto :goto_76

    :cond_97
    return v4
.end method

.method public reloadPreference()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->updateContent()V

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_c
    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    :cond_9
    return-void
.end method

.method public showPopup()V
    .registers 4

    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SubScreenPopup;->showChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    :cond_16
    return-void
.end method

.method protected updateContent()V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    if-nez v1, :cond_5

    return-void

    :cond_5
    const-string/jumbo v1, "pref_skin_beautify_skin_color_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string/jumbo v1, "pref_skin_beautify_slim_face_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string/jumbo v1, "pref_skin_beautify_skin_smooth_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string/jumbo v1, "pref_skin_beautify_enlarge_eye_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    :cond_41
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getSkinBeautifyHumanReadableValue(Landroid/content/Context;Lcom/android/camera/preferences/ListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4e
    return-void

    :cond_4f
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e

    :cond_6c
    const-string/jumbo v1, "pref_focus_position_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e

    :cond_8b
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e
.end method
