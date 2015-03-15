.class public Lcom/miui/fmradio/FrequencyPicker;
.super Landroid/view/View;
.source "FrequencyPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;
    }
.end annotation


# instance fields
.field private mDegreePaint:Landroid/graphics/Paint;

.field private mDrawableMask:Landroid/graphics/drawable/Drawable;

.field private mDrawablePointer:Landroid/graphics/drawable/Drawable;

.field private mDrawableScale:Landroid/graphics/drawable/Drawable;

.field private mFrequencyChangedListener:Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;

.field private mLastMotionX:F

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private mOffsetX:F

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mStartMotionY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/fmradio/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/fmradio/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawablePointer:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawableScale:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 72
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mMaximumFlingVelocity:I

    .line 73
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mMinimumFlingVelocity:I

    .line 75
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mDegreePaint:Landroid/graphics/Paint;

    .line 76
    iget-object v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mDegreePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mDegreePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41a00000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    return-void
.end method

.method private adjustForFrequency()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 268
    iget v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    invoke-direct {p0, v2}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequency(F)I

    move-result v0

    .line 269
    .local v0, "toFreq":I
    invoke-direct {p0, v0}, Lcom/miui/fmradio/FrequencyPicker;->computeOffset(I)I

    move-result v1

    .line 270
    .local v1, "toOffSetX":I
    int-to-float v2, v1

    iget v3, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 286
    :goto_0
    return-void

    .line 273
    :cond_0
    const/16 v2, 0x21fc

    if-ge v0, v2, :cond_3

    .line 274
    const/16 v0, 0x21fc

    .line 278
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/fmradio/FrequencyPicker;->computeOffset(I)I

    move-result v1

    .line 279
    iget-object v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_2

    .line 280
    iget-object v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 283
    :cond_2
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40200000

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v2, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    .line 284
    iget-object v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    float-to-int v4, v4

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 285
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->invalidate()V

    goto :goto_0

    .line 275
    :cond_3
    const/16 v2, 0x2a30

    if-le v0, v2, :cond_1

    .line 276
    const/16 v0, 0x2a30

    goto :goto_1
.end method

.method private computeFrequency(F)I
    .locals 4
    .param p1, "offsetX"    # F

    .prologue
    const/high16 v3, 0x41200000

    .line 101
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequencyAccurately(F)F

    move-result v1

    .line 102
    .local v1, "freq":F
    const/high16 v0, 0x40a00000

    .line 103
    .local v0, "accuracy":F
    rem-float v2, v1, v3

    .line 104
    .local v2, "remain":F
    div-float v3, v1, v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0xa

    int-to-float v1, v3

    .line 105
    cmpl-float v3, v2, v0

    if-ltz v3, :cond_0

    float-to-int v3, v1

    add-int/lit8 v3, v3, 0xa

    :goto_0
    return v3

    :cond_0
    float-to-int v3, v1

    goto :goto_0
.end method

.method private computeFrequencyAccurately(F)F
    .locals 2
    .param p1, "offsetX"    # F

    .prologue
    .line 97
    const/high16 v0, 0x41980000

    div-float v0, p1, v0

    const/high16 v1, 0x41200000

    mul-float/2addr v0, v1

    const v1, 0x4607f000

    add-float/2addr v0, v1

    return v0
.end method

.method private computeOffset(I)I
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 109
    add-int/lit16 v0, p1, -0x21fc

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x13

    return v0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityX"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 256
    :cond_0
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    .line 257
    const/16 v0, 0x21fc

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FrequencyPicker;->computeOffset(I)I

    move-result v5

    .line 258
    .local v5, "minOffSet":I
    const/16 v0, 0x2a30

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FrequencyPicker;->computeOffset(I)I

    move-result v6

    .line 259
    .local v6, "maxOffSet":I
    if-lez p1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    float-to-int v1, v1

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 264
    :goto_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->invalidate()V

    .line 265
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    float-to-int v1, v1

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private notifyFrequencyChanged(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/miui/fmradio/FrequencyPicker;->mFrequencyChangedListener:Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/miui/fmradio/FrequencyPicker;->mFrequencyChangedListener:Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;->onFrequencyChanged(I)V

    .line 292
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 159
    iget-object v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    if-nez v2, :cond_0

    .line 186
    :goto_0
    return-void

    .line 163
    :cond_0
    iget v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    invoke-direct {p0, v2}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequency(F)I

    move-result v0

    .line 164
    .local v0, "freq":I
    iget-object v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    .line 166
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    .line 167
    invoke-direct {p0}, Lcom/miui/fmradio/FrequencyPicker;->adjustForFrequency()V

    .line 168
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->invalidate()V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 173
    iget-object v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    .line 174
    iget v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    invoke-direct {p0, v2}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequencyAccurately(F)F

    move-result v2

    const v3, 0x4628c000

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 175
    const/16 v2, 0x2a30

    invoke-direct {p0, v2}, Lcom/miui/fmradio/FrequencyPicker;->computeOffset(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    .line 180
    :cond_2
    :goto_1
    iget v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    invoke-direct {p0, v2}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequency(F)I

    move-result v1

    .line 181
    .local v1, "freq1":I
    if-eq v1, v0, :cond_3

    .line 182
    invoke-direct {p0, v1}, Lcom/miui/fmradio/FrequencyPicker;->notifyFrequencyChanged(I)V

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->invalidate()V

    goto :goto_0

    .line 176
    .end local v1    # "freq1":I
    :cond_4
    iget v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    invoke-direct {p0, v2}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequencyAccurately(F)F

    move-result v2

    const v3, 0x4607f000

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 177
    const/16 v2, 0x21fc

    invoke-direct {p0, v2}, Lcom/miui/fmradio/FrequencyPicker;->computeOffset(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    goto :goto_1
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequency(F)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    .line 127
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->getWidth()I

    move-result v7

    .line 130
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->getHeight()I

    move-result v2

    .line 131
    .local v2, "height":I
    iget-object v8, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawablePointer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 132
    .local v3, "pW":I
    iget-object v8, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawableScale:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 133
    .local v6, "sW":I
    iget-object v8, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawableScale:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 135
    .local v5, "sH":I
    const/16 v0, 0x21fc

    .local v0, "f":I
    :goto_0
    const/16 v8, 0x2a30

    if-gt v0, v8, :cond_0

    .line 136
    add-int/lit16 v8, v0, -0x21fc

    div-int/lit8 v1, v8, 0xa

    .line 137
    .local v1, "fC":I
    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    sub-float/2addr v8, v9

    mul-int/lit8 v9, v1, 0x13

    int-to-float v9, v9

    add-float v4, v8, v9

    .line 138
    .local v4, "sC":F
    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v4

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 139
    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    sub-float v8, v4, v8

    int-to-float v9, v7

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 150
    .end local v1    # "fC":I
    .end local v4    # "sC":F
    :cond_0
    iget-object v8, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v12, v12, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    iget-object v8, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    iget-object v8, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawablePointer:Landroid/graphics/drawable/Drawable;

    sub-int v9, v7, v3

    div-int/lit8 v9, v9, 0x2

    add-int v10, v7, v3

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v8, v9, v12, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v8, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawablePointer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    return-void

    .line 142
    .restart local v1    # "fC":I
    .restart local v4    # "sC":F
    :cond_1
    div-int/lit8 v8, v0, 0xa

    rem-int/lit8 v8, v8, 0xa

    if-nez v8, :cond_2

    .line 143
    div-int/lit8 v8, v0, 0xa

    div-int/lit8 v8, v8, 0xa

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    sub-float v9, v4, v9

    sub-int v10, v2, v5

    add-int/lit8 v10, v10, -0x14

    int-to-float v10, v10

    iget-object v11, p0, Lcom/miui/fmradio/FrequencyPicker;->mDegreePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    :cond_2
    iget-object v8, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawableScale:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    sub-float v9, v4, v9

    float-to-int v9, v9

    sub-int v10, v2, v5

    int-to-float v11, v6

    add-float/2addr v11, v4

    float-to-int v11, v11

    invoke-virtual {v8, v9, v10, v11, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    iget-object v8, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawableScale:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 135
    :cond_3
    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 83
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 84
    .local v1, "specMode":I
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->getMeasuredHeight()I

    move-result v0

    .line 85
    .local v0, "heightSize":I
    sparse-switch v1, :sswitch_data_0

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/miui/fmradio/FrequencyPicker;->setMeasuredDimension(II)V

    .line 94
    return-void

    .line 88
    :sswitch_0
    iget-object v2, p0, Lcom/miui/fmradio/FrequencyPicker;->mDrawablePointer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 89
    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 197
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 199
    .local v4, "y":F
    iget-object v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 200
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 202
    :cond_0
    iget-object v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 244
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v5, :cond_2

    .line 245
    iget-object v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v5, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 248
    :cond_2
    return v11

    .line 205
    :pswitch_0
    iput v4, p0, Lcom/miui/fmradio/FrequencyPicker;->mStartMotionY:F

    .line 206
    iput v3, p0, Lcom/miui/fmradio/FrequencyPicker;->mLastMotionX:F

    .line 207
    iget-object v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    if-eqz v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 209
    iput-object v8, p0, Lcom/miui/fmradio/FrequencyPicker;->mScroller:Landroid/widget/Scroller;

    goto :goto_0

    .line 213
    :pswitch_1
    iget v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    invoke-direct {p0, v5}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequency(F)I

    move-result v0

    .line 214
    .local v0, "freq":I
    iget v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    iget v6, p0, Lcom/miui/fmradio/FrequencyPicker;->mLastMotionX:F

    sub-float v6, v3, v6

    const-wide/high16 v7, 0x3fe0000000000000L

    iget v9, p0, Lcom/miui/fmradio/FrequencyPicker;->mStartMotionY:F

    sub-float v9, v4, v9

    const/high16 v10, 0x43fa0000

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    .line 215
    iget v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    invoke-direct {p0, v5}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequencyAccurately(F)F

    move-result v5

    const v6, 0x4607f000

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    .line 216
    const/16 v5, 0x21fc

    invoke-direct {p0, v5}, Lcom/miui/fmradio/FrequencyPicker;->computeOffset(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    .line 218
    :cond_3
    iget v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    invoke-direct {p0, v5}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequencyAccurately(F)F

    move-result v5

    const v6, 0x4628c000

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_4

    .line 219
    const/16 v5, 0x2a30

    invoke-direct {p0, v5}, Lcom/miui/fmradio/FrequencyPicker;->computeOffset(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    .line 221
    :cond_4
    iget v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    invoke-direct {p0, v5}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequency(F)I

    move-result v1

    .line 223
    .local v1, "freq1":I
    if-eq v0, v1, :cond_5

    .line 224
    invoke-direct {p0, v1}, Lcom/miui/fmradio/FrequencyPicker;->notifyFrequencyChanged(I)V

    .line 227
    :cond_5
    iput v3, p0, Lcom/miui/fmradio/FrequencyPicker;->mLastMotionX:F

    .line 228
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->invalidate()V

    goto :goto_0

    .line 232
    .end local v0    # "freq":I
    .end local v1    # "freq1":I
    :pswitch_2
    iget-object v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    iget v7, p0, Lcom/miui/fmradio/FrequencyPicker;->mMaximumFlingVelocity:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 233
    iget-object v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    neg-float v5, v5

    float-to-int v2, v5

    .line 234
    .local v2, "initialVelocity":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/miui/fmradio/FrequencyPicker;->mMinimumFlingVelocity:I

    if-le v5, v6, :cond_6

    .line 235
    invoke-direct {p0, v2}, Lcom/miui/fmradio/FrequencyPicker;->fling(I)V

    .line 239
    :goto_1
    iget-object v5, p0, Lcom/miui/fmradio/FrequencyPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 240
    iput-object v8, p0, Lcom/miui/fmradio/FrequencyPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 237
    :cond_6
    invoke-direct {p0}, Lcom/miui/fmradio/FrequencyPicker;->adjustForFrequency()V

    goto :goto_1

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFrequency(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 117
    iget v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    invoke-direct {p0, v1}, Lcom/miui/fmradio/FrequencyPicker;->computeFrequency(F)I

    move-result v0

    .line 118
    .local v0, "freq":I
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FrequencyPicker;->computeOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/miui/fmradio/FrequencyPicker;->mOffsetX:F

    .line 119
    if-eq v0, p1, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FrequencyPicker;->notifyFrequencyChanged(I)V

    .line 121
    invoke-virtual {p0}, Lcom/miui/fmradio/FrequencyPicker;->invalidate()V

    .line 123
    :cond_0
    return-void
.end method

.method public setFrequencyChangListener(Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/fmradio/FrequencyPicker;->mFrequencyChangedListener:Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;

    .line 50
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/miui/fmradio/FrequencyPicker;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 191
    invoke-super {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    return-void
.end method
