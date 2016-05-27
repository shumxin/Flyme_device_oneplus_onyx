.class Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final FLIGHT_MODE:I

.field private final ITEM_IDS:[I

.field private final NORMAL_MODE:I

.field private final SILENT_MODE:I

.field private final TEXT_IDS:[I

.field private final VIBRATE_MODE:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field protected mFlightState:Z

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "audioManager"    # Landroid/media/AudioManager;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 765
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 752
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->TEXT_IDS:[I

    .line 759
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    .line 760
    iput v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->SILENT_MODE:I

    .line 761
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->VIBRATE_MODE:I

    .line 762
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->NORMAL_MODE:I

    .line 763
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->FLIGHT_MODE:I

    .line 766
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 767
    iput-object p4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 768
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 769
    return-void

    .line 751
    nop

    :array_0
    .array-data 4
        0xc020488
        0xc020489
        0xc02048a
        0xc02048b
    .end array-data

    .line 752
    :array_1
    .array-data 4
        0xc02048e
        0xc02048f
        0xc020490
        0xc020491
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 778
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    .prologue
    .line 773
    return p1
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->updateState(Z)V

    .line 877
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    # setter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1402(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 783
    const v13, 0xc09043f

    const/4 v14, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 784
    .local v12, "v":Landroid/view/View;
    const v13, 0xc0204c2

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 785
    .local v10, "text":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v5, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 786
    .local v5, "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    .line 787
    .local v11, "top":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1050012

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 788
    .local v6, "navBarHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0xc050457

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 789
    .local v2, "defaultTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/OppoGlobalActions;->isOrientationPortrait()Z
    invoke-static {v13}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$800(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 790
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasNavigationBar:Z
    invoke-static {v13}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$900(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 791
    sub-int v11, v2, v6

    .line 795
    :goto_0
    const v13, 0xc040543

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(I)V

    .line 800
    :goto_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 801
    const/4 v13, 0x1

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 802
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v8

    .line 804
    .local v8, "selectedIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    array-length v13, v13

    if-ge v3, v13, :cond_6

    .line 805
    if-ne v8, v3, :cond_4

    const/4 v7, 0x1

    .line 806
    .local v7, "selected":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 807
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    .line 809
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v13, v13, v3

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 810
    .local v4, "itemView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHideFourKey:Z
    invoke-static {v13}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 811
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 813
    :cond_1
    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 815
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 816
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->TEXT_IDS:[I

    aget v13, v13, v3

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 818
    .local v9, "t":Landroid/widget/TextView;
    if-eqz v7, :cond_5

    .line 819
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0xc060405

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 804
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 793
    .end local v3    # "i":I
    .end local v4    # "itemView":Landroid/view/View;
    .end local v7    # "selected":Z
    .end local v8    # "selectedIndex":I
    .end local v9    # "t":Landroid/widget/TextView;
    :cond_2
    move v11, v2

    goto :goto_0

    .line 797
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0xc050458

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 798
    const v13, 0xc040544

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 805
    .restart local v3    # "i":I
    .restart local v8    # "selectedIndex":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 822
    .restart local v4    # "itemView":Landroid/view/View;
    .restart local v7    # "selected":Z
    .restart local v9    # "t":Landroid/widget/TextView;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0xc060406

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 826
    .end local v4    # "itemView":Landroid/view/View;
    .end local v7    # "selected":Z
    .end local v9    # "t":Landroid/widget/TextView;
    :cond_6
    return-object v12
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v5, 0x0

    .line 882
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    .line 913
    :goto_0
    return-void

    .line 886
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 887
    .local v1, "index":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v2

    .line 888
    .local v2, "mode":I
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    .line 889
    .local v3, "selected":Z
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 891
    .local v0, "flightOn":Z
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 908
    const-string v4, "OppoGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0    # "flightOn":Z
    :cond_1
    move v0, v5

    .line 889
    goto :goto_1

    .line 893
    .restart local v0    # "flightOn":Z
    :pswitch_0
    if-nez v3, :cond_2

    .line 894
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1500(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 899
    :cond_2
    :pswitch_1
    const-string v4, "MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mode= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " this= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 903
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->onToggle(Z)V

    .line 904
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->changeStateFromPress(Z)V

    goto :goto_2

    .line 891
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 829
    return-void
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 854
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1202(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z

    .line 859
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 861
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 862
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 866
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/OppoGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1300(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 850
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    .line 851
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 847
    return-void
.end method
