.class public Lcom/android/camera/ui/GridSettingTextPopup;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingTextPopup.java"


# instance fields
.field private mSavedGridViewWidth:I

.field private mSavedPopupWidth:I

.field private mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initializeSplitLine()V
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v0, :cond_1c

    move v1, v2

    :goto_18
    invoke-direct {p0, v1, v4, v4}, Lcom/android/camera/ui/GridSettingTextPopup;->setSplitLineParameters(IZZ)V

    return-void

    :cond_1c
    move v1, v0

    goto :goto_18
.end method

.method private setGridViewParameters(I)I
    .registers 5

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v0
.end method

.method private setGridViewSoundEffects(Z)V
    .registers 5

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridView:Landroid/widget/GridView;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    return-void
.end method

.method private setSplitLineParameters(IZZ)V
    .registers 8

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v1}, Lcom/android/camera/ui/SplitLineDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/SplitLineDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    iget v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mDisplayColumnNum:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v1, p2, p3}, Lcom/android/camera/ui/SplitLineDrawer;->setBorderVisible(ZZ)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getItemResId()I
    .registers 2

    const v0, 0x7f04000e

    return v0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .registers 7

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mHasImage:Z

    const-string/jumbo v0, "pref_audio_focus_mode_key"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "pref_audio_focus_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    :goto_19
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    invoke-direct {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->initializeSplitLine()V

    return-void

    :cond_20
    const-string/jumbo v0, "pref_camera_tilt_shift_mode"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v0, "pref_camera_tilt_shift_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    goto :goto_19

    :cond_37
    iput-boolean v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mIgnoreSameItemClick:Z

    goto :goto_19
.end method

.method protected notifyToDispatcher(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingTextPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridViewHeight:I

    return-void
.end method

.method public restoreFromShrink()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->updateBackground()V

    iget v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedPopupWidth:I

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedPopupWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedPopupWidth:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingTextPopup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    iget v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedGridViewWidth:I

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedGridViewWidth:I

    invoke-direct {p0, v1}, Lcom/android/camera/ui/GridSettingTextPopup;->setGridViewParameters(I)I

    iput v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedGridViewWidth:I

    :cond_20
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/GridSettingTextPopup;->setGridViewSoundEffects(Z)V

    invoke-direct {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->initializeSplitLine()V

    return-void
.end method

.method public shrink(I)V
    .registers 5

    const/4 v2, 0x0

    const v1, 0x7f020015

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GridSettingTextPopup;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedPopupWidth:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingTextPopup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/GridSettingTextPopup;->setGridViewParameters(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedGridViewWidth:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/GridSettingTextPopup;->setGridViewSoundEffects(Z)V

    invoke-direct {p0, p1, v2, v2}, Lcom/android/camera/ui/GridSettingTextPopup;->setSplitLineParameters(IZZ)V

    return-void
.end method

.method protected updateItemView(ILandroid/view/View;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;->updateItemView(ILandroid/view/View;)V

    if-eqz p2, :cond_3f

    const v1, 0x7f090031

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mContext:Landroid/content/Context;

    const v2, 0x7f0f001e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mDisableKeys:Ljava/util/List;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_3f

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mDisableKeys:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3f
.end method
