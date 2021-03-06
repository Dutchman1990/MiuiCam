.class public Lcom/android/camera/ui/V6SeekbarPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "V6SeekbarPopup.java"

# interfaces
.implements Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;


# instance fields
.field private mBar:Lcom/android/camera/ui/V6SeekBar;

.field private mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private filterPreference(Lcom/android/camera/preferences/IconListPreference;)V
    .registers 8

    if-eqz p1, :cond_35

    const-string/jumbo v2, "pref_delay_capture_key"

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1b
    if-ge v2, v4, :cond_32

    aget-object v1, v3, v2

    const-string/jumbo v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_32
    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    :cond_35
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .registers 6

    const-string/jumbo v0, "pref_camera_face_beauty_mode_key"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string/jumbo v0, "pref_camera_face_beauty_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    :cond_16
    :goto_16
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/V6SeekBar;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    return-void

    :cond_32
    const-string/jumbo v0, "pref_delay_capture_mode"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "pref_delay_capture_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SeekbarPopup;->filterPreference(Lcom/android/camera/preferences/IconListPreference;)V

    goto :goto_16
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekbarPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekbarPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekbarPopupTexts;

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6SeekBar;->setOnValueChangedListener(Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;)V

    return-void
.end method

.method public onValueChanged(IZ)V
    .registers 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    if-eq p1, v0, :cond_31

    iput p1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setValue(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    new-instance v4, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x7

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_28
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_31
    return-void
.end method

.method public reloadPreference()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    iget v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setValue(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    iget v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SeekBar;->setEnabled(Z)V

    :cond_c
    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setOrientation(IZ)V

    return-void
.end method
