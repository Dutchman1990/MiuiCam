.class public Lcom/android/camera/ui/ModeView;
.super Landroid/widget/RelativeLayout;
.source "ModeView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field private mColumnCount:I

.field protected mCurrentMode:Ljava/lang/String;

.field private mDisabledIndicator:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mFirstSelectedItem:I

.field protected mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/V6IndicatorButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsAnimating:Z

.field private mItemWidth:I

.field protected mKeepExitButtonGone:Z

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mOrientation:I

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field protected mRotatables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/Rotatable;",
            ">;"
        }
    .end annotation
.end field

.field private mRowCount:I

.field private mSettingScreen:Lcom/android/camera/ui/ScreenView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    return-void
.end method

.method private initScreenView(I)V
    .registers 4

    const/4 v0, 0x3

    const/16 v1, 0x9

    if-ge p1, v1, :cond_14

    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/camera/ui/ModeView;->mRowCount:I

    if-ge p1, v0, :cond_12

    :goto_f
    iput p1, p0, Lcom/android/camera/ui/ModeView;->mColumnCount:I

    :goto_11
    return-void

    :cond_12
    move p1, v0

    goto :goto_f

    :cond_14
    iput v0, p0, Lcom/android/camera/ui/ModeView;->mRowCount:I

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mColumnCount:I

    goto :goto_11
.end method

.method private resetOtherSettings(Lcom/android/camera/ui/V6IndicatorButton;)V
    .registers 4

    iget v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    if-ltz v0, :cond_1b

    iget v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->resetSettings()V

    :cond_1b
    return-void
.end method


# virtual methods
.method public dismissAllPopup()V
    .registers 4

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->getPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->dismissPopup()Z

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 12

    const-string/jumbo v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ModeView dispacherMessage mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " receiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " extra1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " extra2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_7a

    check-cast p5, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-direct {p0, p5}, Lcom/android/camera/ui/ModeView;->resetOtherSettings(Lcom/android/camera/ui/V6IndicatorButton;)V

    const/4 v0, 0x1

    return v0

    :cond_7a
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->onPopupChange()V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_a1

    instance-of v0, p5, Lcom/android/camera/ui/V6IndicatorButton;

    if-eqz v0, :cond_a1

    move-object v0, p5

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->isItemSelected()Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    :cond_a1
    :goto_a1
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f09008e

    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    instance-of v0, p5, Lcom/android/camera/ui/V6IndicatorButton;

    if-eqz v0, :cond_bf

    const-string/jumbo v0, "Camera5"

    const-string/jumbo v1, "call indicatorbutton reloadPreference"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p5, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {p5}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    :cond_bf
    const/4 v0, 0x0

    return v0

    :cond_c1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    goto :goto_a1
.end method

.method public getCurrentPopup()Landroid/view/View;
    .registers 4

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->getPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    return-object v2

    :cond_1d
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSelectedItemKey()Ljava/lang/String;
    .registers 4

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->isItemSelected()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1d
    const/4 v2, 0x0

    return-object v2
.end method

.method protected initIndicators(Ljava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x9

    add-int/lit8 v20, v3, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/ModeView;->initScreenView(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ModeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    const/4 v9, 0x0

    :goto_21
    move/from16 v0, v20

    if-ge v9, v0, :cond_cf

    new-instance v2, Lcom/android/camera/ui/ModeGridView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ModeView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/ui/ModeView;->mRowCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/ModeView;->mColumnCount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/ModeGridView;-><init>(Landroid/content/Context;Lcom/android/camera/ui/ScreenView;IIIII)V

    const/16 v17, 0x0

    :goto_44
    const/16 v3, 0x9

    move/from16 v0, v17

    if-ge v0, v3, :cond_58

    mul-int/lit8 v3, v9, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int v19, v17, v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-lt v0, v3, :cond_62

    :cond_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/ScreenView;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    :cond_62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ModeView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v11

    check-cast v11, Lcom/android/camera/preferences/IconListPreference;

    if-eqz v11, :cond_cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/camera/ui/ModeView;->updatePreference(Lcom/android/camera/preferences/IconListPreference;)V

    const v3, 0x7f040025

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/V6IndicatorButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ModeView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/ModeView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v16, v0

    move-object/from16 v12, p0

    invoke-virtual/range {v10 .. v16}, Lcom/android/camera/ui/V6IndicatorButton;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/android/camera/ui/V6IndicatorButton;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    invoke-virtual {v10}, Lcom/android/camera/ui/V6IndicatorButton;->isItemSelected()Z

    move-result v3

    if-eqz v3, :cond_c1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    :cond_c1
    invoke-virtual {v2, v10}, Lcom/android/camera/ui/ModeGridView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cb
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_44

    :cond_cf
    return-void
.end method

.method public initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/MessageDispacher;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/ui/MessageDispacher;",
            "I)V"
        }
    .end annotation

    const/4 v4, -0x2

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/camera/ui/ModeView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iput-object p3, p0, Lcom/android/camera/ui/ModeView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v1, 0x7f090063

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ScreenView;

    iput-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const v2, 0x7f020116

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ScreenView;->setSeekPointResource(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenView;->removeAllScreens()V

    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ScreenView;->setOverScrollRatio(F)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeView;->dismissAllPopup()V

    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/ModeView;->initIndicators(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    return-void
.end method

.method public isItemSelected()Z
    .registers 3

    iget v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .registers 5

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_b
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6IndicatorButton;->overrideSettings([Ljava/lang/String;)V

    goto :goto_11

    :cond_21
    return-void
.end method

.method public reloadPreferences()V
    .registers 5

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    iget v2, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->reloadPreference()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public removePopup()V
    .registers 5

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->getPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->getPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2b
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/PopupManager;->removeOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    goto :goto_6

    :cond_35
    return-void
.end method

.method public resetSelectedFlag()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    return-void
.end method

.method public resetSettings()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget v1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6IndicatorButton;->resetSettings()V

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public setEnabled(Z)V
    .registers 6

    iput-boolean p1, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractIndicator;->setEnabled(Z)V

    goto :goto_8

    :cond_24
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 6

    iput p1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6AbstractIndicator;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method protected updatePreference(Lcom/android/camera/preferences/IconListPreference;)V
    .registers 4

    const-string/jumbo v0, "pref_camera_shader_coloreffect_key"

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getEntries()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getEntryValues()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_23
    return-void
.end method
