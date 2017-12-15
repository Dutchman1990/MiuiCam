.class public Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingPopupWhiteBalance.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;,
        Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;
    }
.end annotation


# static fields
.field private static sWhiteBalanceManual:Ljava/lang/String;

.field private static sWhiteBalanceMeasure:Ljava/lang/String;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mCurrentKValue:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

.field private mListView:Lcom/android/camera/ui/HorizontalListView;

.field private mOnBackListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemWidth:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Lcom/android/camera/ui/HorizontalListView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    new-instance v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mOnBackListener:Landroid/view/View$OnClickListener;

    sget-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string/jumbo v0, ""

    sget-object v1, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_1c
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0087

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceMeasure:Ljava/lang/String;

    :cond_32
    return-void
.end method

.method private notifyToDispatcher(ZZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const-string/jumbo v4, "pref_qc_manual_whitebalance_k_value_key"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_8
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .registers 9

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    new-instance v1, Lcom/android/camera/ui/NumericListAdapter;

    const/16 v2, 0x7d0

    const/16 v3, 0x1f40

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/NumericListAdapter;-><init>(III)V

    iput-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    new-instance v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;Lcom/android/camera/ui/NumericListAdapter;)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemWidth:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v9, v1}, Landroid/widget/GridView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v9}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentIndex:I

    if-eq v0, v9, :cond_be

    const/4 v11, 0x1

    :goto_26
    sget-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    :try_start_3a
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager;->getCameraProxy()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v6

    if-eqz v6, :cond_68

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getWBCT()I

    move-result v7

    if-eqz v7, :cond_68

    iput v7, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Current WB CCT = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_68} :catch_c1

    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    iget v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/NumericListAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v10

    const/4 v0, -0x1

    if-eq v10, v0, :cond_84

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/NumericListAdapter;->getItemValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    :cond_84
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setKValue(I)V

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "manual_whitebalance_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :goto_9e
    if-eqz v11, :cond_b4

    iput v9, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentIndex:I

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x6

    const/4 v3, 0x3

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_b4
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void

    :cond_be
    const/4 v11, 0x0

    goto/16 :goto_26

    :catch_c1
    move-exception v8

    const-string/jumbo v0, "Camera"

    const-string/jumbo v1, "Can\'t get current WB CCT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :cond_cc
    sget-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceMeasure:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iput v9, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentIndex:I

    return-void

    :cond_e7
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_9e
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemWidth:I

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemHeight:I

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mOnBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/ui/NumericListAdapter;->getItemValue(I)I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    if-ne v0, v2, :cond_2a

    const/4 v1, 0x1

    :goto_b
    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    iget v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setKValue(I)V

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v2}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->notifyToDispatcher(ZZ)V

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v2, p3}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void

    :cond_2a
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/camera/ui/GridSettingPopup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalListView;->setEnabled(Z)V

    :cond_c
    return-void
.end method

.method public show(Z)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/camera/ui/GridSettingPopup;->show(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HorizontalListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    :cond_18
    return-void
.end method
