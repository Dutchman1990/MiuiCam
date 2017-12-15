.class Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;
.super Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;
.source "ManualFocusPositionPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ManualFocusPositionPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalSlideViewAdapter"
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ManualFocusPositionPopup;[Ljava/lang/CharSequence;)V
    .registers 5

    iput-object p1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get4(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get6(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private drawText(ILandroid/graphics/Canvas;)V
    .registers 8

    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    neg-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;Z)V
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_2a

    const/high16 v0, -0x10000

    :goto_8
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_3b

    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_2c

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get5(Lcom/android/camera/ui/ManualFocusPositionPopup;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get7()[I

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_21
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 v0, p1, 0xa

    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->drawText(ILandroid/graphics/Canvas;)V

    :goto_29
    return-void

    :cond_2a
    const/4 v0, -0x1

    goto :goto_8

    :cond_2c
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get5(Lcom/android/camera/ui/ManualFocusPositionPopup;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get8()[I

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_21

    :cond_3b
    iget-object v2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_65

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get5(Lcom/android/camera/ui/ManualFocusPositionPopup;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get7()[I

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_4d
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get1(Lcom/android/camera/ui/ManualFocusPositionPopup;)F

    move-result v0

    neg-float v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get1(Lcom/android/camera/ui/ManualFocusPositionPopup;)F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_29

    :cond_65
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get0(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result v0

    goto :goto_4d
.end method

.method public getAlign(I)Landroid/graphics/Paint$Align;
    .registers 3

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    const/16 v0, 0x65

    return v0
.end method

.method public measureGap(I)F
    .registers 3

    rem-int/lit8 v0, p1, 0xa

    if-eqz v0, :cond_a

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_12

    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get3(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_12
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get2(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public measureWidth(I)F
    .registers 5

    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    div-int/lit8 v2, p1, 0xa

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_15
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->-get4(Lcom/android/camera/ui/ManualFocusPositionPopup;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
