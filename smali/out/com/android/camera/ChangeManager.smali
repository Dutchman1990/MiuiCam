.class public Lcom/android/camera/ChangeManager;
.super Ljava/lang/Object;
.source "ChangeManager.java"


# instance fields
.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    return-void
.end method


# virtual methods
.method public check(I)Z
    .registers 3

    iget v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public clear(I)V
    .registers 4

    iget v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    return-void
.end method

.method public request(I)V
    .registers 3

    iget v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    return-void
.end method
