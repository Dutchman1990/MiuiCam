.class final Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
.super Ljava/lang/Object;
.source "EdgeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EdgeGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    return-void
.end method

.method private reserve(I)I
    .registers 10

    const/4 v7, 0x0

    iget v5, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    iget v6, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    add-int v2, v6, p1

    iget-object v4, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    array-length v3, v4

    if-le v2, v3, :cond_15

    mul-int/lit8 v0, v3, 0x2

    new-array v1, v0, [C

    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v1, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    :cond_15
    return v5
.end method


# virtual methods
.method public append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_9

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float p1, v2

    float-to-int v2, p1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(I)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    if-eqz p2, :cond_31

    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v2, p1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float p1, v2

    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {p0, v2, p2}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(II)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    :cond_31
    return-object p0
.end method

.method public append(I)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(II)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
    .registers 12

    const/16 v8, 0x30

    const/4 v5, 0x0

    if-gez p1, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-eqz v5, :cond_12

    neg-int p1, p1

    if-gez p1, :cond_12

    const-string/jumbo v7, "-2147483648"

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    return-object p0

    :cond_12
    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->reserve(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    if-nez p1, :cond_27

    add-int/lit8 v4, v3, 0x1

    aput-char v8, v0, v3

    iget v7, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    return-object p0

    :cond_27
    if-eqz v5, :cond_30

    add-int/lit8 v4, v3, 0x1

    const/16 v7, 0x2d

    aput-char v7, v0, v3

    move v3, v4

    :cond_30
    const v2, 0x3b9aca00

    const/16 v6, 0xa

    move v4, v3

    :goto_36
    if-ge p1, v2, :cond_54

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v6, v6, -0x1

    if-ge v6, p2, :cond_59

    add-int/lit8 v3, v4, 0x1

    aput-char v8, v0, v4

    :goto_42
    move v4, v3

    goto :goto_36

    :goto_44
    div-int v1, p1, v2

    mul-int v7, v1, v2

    sub-int/2addr p1, v7

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v7, v1, 0x30

    int-to-char v7, v7

    aput-char v7, v0, v3

    if-eqz v2, :cond_56

    :cond_54
    move v3, v4

    goto :goto_44

    :cond_56
    iput v4, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    return-object p0

    :cond_59
    move v3, v4

    goto :goto_42
.end method

.method public append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->reserve(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    iget v2, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    return-object p0
.end method

.method public clear()Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    iget v2, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
