.class public Lcom/android/camera/ui/ScreenView$SeekBarIndicator;
.super Landroid/widget/LinearLayout;
.source "ScreenView.java"

# interfaces
.implements Lcom/android/camera/ui/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SeekBarIndicator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ScreenView;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setDrawingCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method public fastOffset(I)Z
    .registers 4

    iget v0, p0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->mLeft:I

    if-eq v0, p1, :cond_10

    iget v0, p0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->mRight:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->mLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->mRight:I

    iput p1, p0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->mLeft:I

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
