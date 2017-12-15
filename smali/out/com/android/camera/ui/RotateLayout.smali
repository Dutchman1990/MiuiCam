.class public Lcom/android/camera/ui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotateLayout;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    const/4 v3, 0x0

    sub-int v1, p4, p2

    sub-int v0, p5, p3

    iget v2, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_18

    :goto_a
    return-void

    :sswitch_b
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_a

    :sswitch_11
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_a

    nop

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_b
        0x5a -> :sswitch_11
        0xb4 -> :sswitch_b
        0x10e -> :sswitch_11
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_6e

    :goto_8
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/RotateLayout;->setMeasuredDimension(II)V

    iget v2, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_80

    :goto_10
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    return-void

    :sswitch_1a
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_8

    :sswitch_2c
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_8

    :sswitch_3e
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_10

    :sswitch_49
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_10

    :sswitch_55
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_10

    :sswitch_62
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_10

    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_1a
        0x5a -> :sswitch_2c
        0xb4 -> :sswitch_1a
        0x10e -> :sswitch_2c
    .end sparse-switch

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_3e
        0x5a -> :sswitch_49
        0xb4 -> :sswitch_55
        0x10e -> :sswitch_62
    .end sparse-switch
.end method

.method public setOrientation(IZ)V
    .registers 4

    rem-int/lit16 p1, p1, 0x168

    iget v0, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
