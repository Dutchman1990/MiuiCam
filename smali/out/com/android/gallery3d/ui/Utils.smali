.class public Lcom/android/gallery3d/ui/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final IS_DEBUG_BUILD:Z

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/16 v10, 0x100

    const/4 v7, 0x1

    new-array v6, v10, [J

    sput-object v6, Lcom/android/gallery3d/ui/Utils;->sCrcTable:[J

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v8, "eng"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v8, "userdebug"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_1b
    sput-boolean v6, Lcom/android/gallery3d/ui/Utils;->IS_DEBUG_BUILD:Z

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v10, :cond_43

    int-to-long v2, v0

    const/4 v1, 0x0

    :goto_22
    const/16 v6, 0x8

    if-ge v1, v6, :cond_3c

    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_39

    const-wide v4, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    :goto_30
    shr-long v8, v2, v7

    xor-long v2, v8, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_37
    move v6, v7

    goto :goto_1b

    :cond_39
    const-wide/16 v4, 0x0

    goto :goto_30

    :cond_3c
    sget-object v6, Lcom/android/gallery3d/ui/Utils;->sCrcTable:[J

    aput-wide v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_43
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .registers 2

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    return-void
.end method

.method public static nextPowerOf2(I)I
    .registers 2

    if-lez p0, :cond_6

    const/high16 v0, 0x40000000    # 2.0f

    if-le p0, v0, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 v0, p0, 0x1

    return v0
.end method
