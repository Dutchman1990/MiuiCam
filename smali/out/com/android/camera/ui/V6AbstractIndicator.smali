.class public abstract Lcom/android/camera/ui/V6AbstractIndicator;
.super Landroid/widget/RelativeLayout;
.source "V6AbstractIndicator.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# static fields
.field public static final TEXT_COLOR_DEFAULT:I

.field public static final TEXT_COLOR_SELECTED:I


# instance fields
.field protected mContent:Landroid/widget/TextView;

.field protected mExitView:Lcom/android/camera/ui/V6ModeExitView;

.field protected mImage:Lcom/android/camera/ui/TwoStateImageView;

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mOrientation:I

.field protected mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field protected mPopupRoot:Landroid/view/ViewGroup;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_DEFAULT:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_SELECTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public getPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object v0
.end method

.method protected getShowedColor()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_SELECTED:I

    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_DEFAULT:I

    goto :goto_8
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V
    .registers 11

    const/16 v2, -0xa

    iput-object p6, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iput-object p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iput-object p2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    iput-object p3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopupRoot:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eq v2, p4, :cond_14

    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x1

    :cond_14
    if-eq v2, p5, :cond_19

    iput p5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x1

    :cond_19
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    iget-object v3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TwoStateImageView;->setImageResource(I)V

    :cond_36
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6AbstractIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateImage()V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateTitle()V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateContent()V

    if-eqz v0, :cond_50

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6AbstractIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->requestLayout()V

    :cond_50
    return-void
.end method

.method protected isIndicatorSelected()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    :cond_2e
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->dismissPopup()Z

    const/4 v0, 0x0

    return v0
.end method

.method public recoverIfNeeded()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->showPopup()V

    return-void
.end method

.method public reloadPreference()V
    .registers 1

    return-void
.end method

.method public setActivated(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setActivated(Z)V

    :cond_c
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    :cond_c
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 9

    iput p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mOrientation:I

    neg-int p1, p1

    if-ltz p1, :cond_1c

    rem-int/lit16 p1, p1, 0x168

    :goto_7
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getRotation()F

    move-result v3

    float-to-int v2, v3

    if-ltz v2, :cond_21

    rem-int/lit16 v1, v2, 0x168

    :goto_10
    sub-int v0, p1, v1

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void

    :cond_1c
    rem-int/lit16 v3, p1, 0x168

    add-int/lit16 p1, v3, 0x168

    goto :goto_7

    :cond_21
    rem-int/lit16 v3, v2, 0x168

    add-int/lit16 v1, v3, 0x168

    goto :goto_10

    :cond_26
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xb4

    if-le v3, v4, :cond_32

    if-ltz v0, :cond_50

    add-int/lit16 v0, v0, -0x168

    :cond_32
    :goto_32
    if-eqz p2, :cond_53

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v4, v4, 0x10e

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_4f
    return-void

    :cond_50
    add-int/lit16 v0, v0, 0x168

    goto :goto_32

    :cond_53
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_4f
.end method

.method public setPressed(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateTitle()V

    return-void
.end method

.method public showPopup()V
    .registers 1

    return-void
.end method

.method protected updateContent()V
    .registers 1

    return-void
.end method

.method protected updateImage()V
    .registers 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "Camera5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateImage= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " default="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->isDefaultValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isIndicatorSelected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->isIndicatorSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-nez v0, :cond_69

    return-void

    :cond_69
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TwoStateImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEnable()Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_88
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_93
    return-void

    :cond_94
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->isDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->isIndicatorSelected()Z

    move-result v0

    :goto_a2
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/TwoStateImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_88

    :cond_ab
    move v0, v1

    goto :goto_a2

    :cond_ad
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->setVisibility(I)V

    goto :goto_93
.end method

.method protected updateTitle()V
    .registers 5

    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    instance-of v2, p0, Lcom/android/camera/ui/V6IndicatorButton;

    if-nez v2, :cond_25

    if-eqz v1, :cond_26

    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getShowedColor()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25
.end method
