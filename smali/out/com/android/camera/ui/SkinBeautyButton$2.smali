.class Lcom/android/camera/ui/SkinBeautyButton$2;
.super Ljava/lang/Object;
.source "SkinBeautyButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SkinBeautyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SkinBeautyButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SkinBeautyButton;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x1

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return v1

    :cond_e
    const/16 v0, 0xa

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-static {v0}, Lcom/android/camera/ui/SkinBeautyButton;->-wrap1(Lcom/android/camera/ui/SkinBeautyButton;)V

    return v1

    :cond_18
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-static {v0}, Lcom/android/camera/ui/SkinBeautyButton;->-wrap0(Lcom/android/camera/ui/SkinBeautyButton;)V

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-static {v0}, Lcom/android/camera/ui/SkinBeautyButton;->-wrap1(Lcom/android/camera/ui/SkinBeautyButton;)V

    goto :goto_d
.end method
