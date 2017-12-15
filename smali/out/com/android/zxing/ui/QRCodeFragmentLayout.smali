.class public Lcom/android/zxing/ui/QRCodeFragmentLayout;
.super Landroid/widget/RelativeLayout;
.source "QRCodeFragmentLayout.java"


# instance fields
.field private mDispatchTouchEvent:Z

.field private mFadeHide:Landroid/view/animation/Animation;

.field private mFadeShow:Landroid/view/animation/Animation;

.field private mViewFinderButton:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mDispatchTouchEvent:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mDispatchTouchEvent:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f05000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeShow:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f05000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeHide:Landroid/view/animation/Animation;

    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;

    invoke-direct {v1, p0}, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;-><init>(Lcom/android/zxing/ui/QRCodeFragmentLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
