.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/support/v4/app/BaseFragmentActivityJB;
.source "FragmentActivity.java"

.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$HostCallbacks;,
        Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field mNextCandidateRequestIndex:I

.field mOptionsMenuInvalidated:Z

.field mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;-><init>()V

    .line 92
    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$HostCallbacks;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v0}, Landroid/support/v4/app/FragmentController;->createController(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    .line 1005
    return-void
.end method

.method private allocateRequestIndex(Landroid/support/v4/app/Fragment;)I
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const v3, 0xfffe

    .line 967
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 968
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Too many pending Fragment activity results."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 972
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    iget v2, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 973
    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_0

    .line 977
    :cond_1
    iget v0, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 978
    .local v0, "requestIndex":I
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 979
    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 982
    return v0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 767
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    if-nez p3, :cond_1

    .line 769
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    :cond_0
    return-void

    .line 772
    :cond_1
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    instance-of v3, p3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p3

    .line 776
    check-cast v1, Landroid/view/ViewGroup;

    .line 777
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 778
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 782
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 783
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 12
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x56

    const/16 v7, 0x46

    const/16 v11, 0x2c

    const/16 v10, 0x20

    const/16 v8, 0x2e

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 702
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const/16 v6, 0x7b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 704
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 710
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x45

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v8

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x48

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v9

    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x43

    :goto_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4c

    :goto_7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_8
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x53

    :goto_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v8, 0x50

    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 727
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 732
    .local v1, "id":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 733
    const-string v6, " #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 736
    .local v4, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 739
    const/high16 v6, -0x1000000

    and-int/2addr v6, v1

    sparse-switch v6, :sswitch_data_1

    .line 747
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, "pkgname":Ljava/lang/String;
    :goto_a
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, "typename":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "entryname":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    .end local v0    # "entryname":Ljava/lang/String;
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "typename":Ljava/lang/String;
    :cond_1
    :goto_b
    const-string v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 707
    .end local v1    # "id":I
    :sswitch_0
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 708
    :sswitch_1
    const/16 v6, 0x49

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 709
    :sswitch_2
    const/16 v6, 0x47

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    move v6, v8

    .line 712
    goto/16 :goto_1

    :cond_3
    move v6, v8

    .line 713
    goto/16 :goto_2

    .line 714
    :cond_4
    const/16 v6, 0x44

    goto/16 :goto_3

    :cond_5
    move v6, v8

    .line 715
    goto/16 :goto_4

    :cond_6
    move v6, v8

    .line 716
    goto/16 :goto_5

    :cond_7
    move v6, v8

    .line 717
    goto/16 :goto_6

    :cond_8
    move v6, v8

    .line 718
    goto/16 :goto_7

    :cond_9
    move v7, v8

    .line 720
    goto/16 :goto_8

    :cond_a
    move v6, v8

    .line 721
    goto/16 :goto_9

    .line 741
    .restart local v1    # "id":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    :sswitch_3
    :try_start_1
    const-string v3, "app"

    .line 742
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_a

    .line 744
    .end local v3    # "pkgname":Ljava/lang/String;
    :sswitch_4
    const-string v3, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 745
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_a

    .line 758
    .end local v3    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_b

    .line 706
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 739
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method


.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 376
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 2
    .param p1, "retaining"    # Z

    .prologue
    const/4 v1, 0x1

    .line 788
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_1

    .line 789
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 790
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    .line 791
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    if-eqz p1, :cond_0

    .line 798
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderStart()V

    .line 799
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->doLoaderStop(Z)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 681
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 685
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local FragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 687
    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 694
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 695
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 696
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1, p3, v2}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 698
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 645
    .line 646
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 647
    .local v0, "nc":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 150
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 151
    shr-int/lit8 v0, p1, 0x10

    .line 152
    .local v0, "requestIndex":I
    if-eqz v0, :cond_2

    .line 153
    add-int/lit8 v0, v0, -0x1

    .line 155
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 157
    if-nez v2, :cond_0

    .line 158
    const-string v3, "FragmentActivity"

    const-string v4, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v2    # "who":Ljava/lang/String;
    :goto_0
    return-void

    .line 161
    .restart local v2    # "who":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 162
    .local v1, "targetFragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_1

    .line 163
    const-string v3, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_1
    const v3, 0xffff

    and-int/2addr v3, p1

    invoke-virtual {v1, v3, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 170
    .end local v1    # "targetFragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "who":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 829
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onBackPressed()V

    .line 182
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 306
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 307
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 315
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/FragmentController;->attachHost(Landroid/support/v4/app/Fragment;)V

    .line 317
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreate(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 321
    .local v2, "nc":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v2, :cond_0

    .line 322
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    iget-object v7, v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentController;->restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 324
    :cond_0
    if-eqz p1, :cond_3

    .line 325
    const-string v6, "android:support:fragments"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 326
    .local v3, "p":Landroid/os/Parcelable;
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    if-eqz v2, :cond_1

    iget-object v5, v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroid/support/v4/app/FragmentManagerNonConfig;

    :cond_1
    invoke-virtual {v6, v3, v5}, Landroid/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V

    .line 329
    const-string v5, "android:support:next_request_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 330
    const-string v5, "android:support:next_request_index"

    .line 331
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 332
    const-string v5, "android:support:request_indicies"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 333
    .local v4, "requestCodes":[I
    const-string v5, "android:support:request_fragment_who"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "fragmentWhos":[Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    array-length v5, v4

    array-length v6, v0

    if-eq v5, v6, :cond_5

    .line 336
    :cond_2
    const-string v5, "FragmentActivity"

    const-string v6, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0    # "fragmentWhos":[Ljava/lang/String;
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v4    # "requestCodes":[I
    :cond_3
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v5, :cond_4

    .line 347
    new-instance v5, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v5}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    .line 348
    const/4 v5, 0x0

    iput v5, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 351
    :cond_4
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentController;->dispatchCreate()V

    .line 352
    return-void

    .line 338
    .restart local v0    # "fragmentWhos":[Ljava/lang/String;
    .restart local v3    # "p":Landroid/os/Parcelable;
    .restart local v4    # "requestCodes":[I
    :cond_5
    new-instance v5, Landroid/support/v4/util/SparseArrayCompat;

    array-length v6, v4

    invoke-direct {v5, v6}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    .line 339
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 340
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    aget v6, v4, v1

    aget-object v7, v0, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 359
    if-nez p1, :cond_1

    .line 360
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 361
    .local v0, "show":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 362
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 370
    .end local v0    # "show":Z
    :goto_0
    return v0

    .line 368
    .restart local v0    # "show":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "show":Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/content/Context;
    .param p4, "x3"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onDestroy()V

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 388
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchDestroy()V

    .line 389
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderDestroy()V

    .line 390
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onLowMemory()V

    .line 398
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchLowMemory()V

    .line 399
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 406
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const/4 v0, 0x1

    .line 418
    :goto_0
    return v0

    .line 410
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 418
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 415
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 410
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 284
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onNewIntent(Landroid/content/Intent;)V

    .line 462
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 463
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 427
    packed-switch p1, :pswitch_data_0

    .line 432
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPanelClosed(ILandroid/view/Menu;)V

    .line 433
    return-void

    .line 429
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 440
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPause()V

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 442
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 446
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchPause()V

    .line 447
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 298
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 494
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPostResume()V

    .line 495
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 497
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    .line 498
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 515
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 516
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    if-eqz v1, :cond_0

    .line 517
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 518
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 519
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 521
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 522
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 525
    .end local v0    # "goforit":Z
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method onReallyStop()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->doLoaderStop(Z)V

    .line 813
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchReallyStop()V

    .line 814
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v4, 0xffff

    .line 894
    shr-int/lit8 v3, p1, 0x10

    and-int v1, v3, v4

    .line 895
    .local v1, "index":I
    if-eqz v1, :cond_0

    .line 896
    add-int/lit8 v1, v1, -0x1

    .line 898
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 899
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 900
    if-nez v2, :cond_1

    .line 901
    const-string v3, "FragmentActivity"

    const-string v4, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    .end local v2    # "who":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 904
    .restart local v2    # "who":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 905
    .local v0, "frag":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_2

    .line 906
    const-string v3, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 908
    :cond_2
    and-int v3, p1, v4

    invoke-virtual {v0, v3, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 483
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onResume()V

    .line 484
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 486
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    .line 487
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchResume()V

    .line 508
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 542
    iget-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v4, :cond_0

    .line 543
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 546
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 548
    .local v0, "custom":Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->retainNestedNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;

    move-result-object v1

    .line 549
    .local v1, "fragments":Landroid/support/v4/app/FragmentManagerNonConfig;
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    .line 551
    .local v2, "loaders":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<Ljava/lang/String;Landroid/support/v4/app/LoaderManager;>;"
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 552
    const/4 v3, 0x0

    .line 559
    :goto_0
    return-object v3

    .line 555
    :cond_1
    new-instance v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v3}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 556
    .local v3, "nci":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    iput-object v0, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 557
    iput-object v1, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 558
    iput-object v2, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 567
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 568
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v2

    .line 569
    .local v2, "p":Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    .line 570
    const-string v4, "android:support:fragments"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 572
    :cond_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 573
    const-string v4, "android:support:next_request_index"

    iget v5, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 576
    .local v3, "requestCodes":[I
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 577
    .local v0, "fragmentWhos":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 578
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    .line 579
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    :cond_1
    const-string v4, "android:support:request_indicies"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 582
    const-string v4, "android:support:request_fragment_who"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 584
    .end local v0    # "fragmentWhos":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "requestCodes":[I
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 592
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onStart()V

    .line 594
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 595
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 596
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_0

    .line 599
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    .line 600
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchActivityCreated()V

    .line 603
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 604
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    .line 606
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderStart()V

    .line 610
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchStart()V

    .line 611
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->reportLoaderStart()V

    .line 612
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 470
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 619
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onStop()V

    .line 621
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 622
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 624
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchStop()V

    .line 625
    return-void
.end method

.method requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 990
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 991
    invoke-static {p0, p2, p3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1003
    :goto_0
    return-void

    .line 994
    :cond_0
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 996
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 997
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 998
    .local v0, "requestIndex":I
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p3

    add-int/2addr v1, v2

    invoke-static {p0, p2, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    goto :goto_0

    .end local v0    # "requestIndex":I
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    throw v1
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v4/app/SharedElementCallback;

    .prologue
    .line 240
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 241
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/app/SharedElementCallback;

    .prologue
    .line 253
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 254
    return-void
.end method

.method public final setSupportMediaController(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 2
    .param p1, "mediaController"    # Landroid/support/v4/media/session/MediaControllerCompat;

    .prologue
    .line 201
    iput-object p1, p0, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->setMediaController(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 851
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 852
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 853
    invoke-static {p2}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 856
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->startActivityForResult(Landroid/content/Intent;I)V

    .line 857
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 918
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 919
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 926
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 928
    if-ne p3, v2, :cond_0

    .line 929
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p2, v1, p4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 939
    :goto_0
    return-void

    .line 932
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 933
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 934
    .local v0, "requestIndex":I
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p3

    add-int/2addr v1, v2

    invoke-static {p0, p2, v1, p4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    goto :goto_0

    .end local v0    # "requestIndex":I
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    throw v1
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/BaseFragmentActivityJB;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/BaseFragmentActivityJB;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 947
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 949
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 950
    :try_start_0
    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 962
    :goto_0
    return-void

    .line 954
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 955
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v8

    .line 956
    .local v8, "requestIndex":I
    add-int/lit8 v0, v8, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int v2, v0, v1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    goto :goto_0

    .end local v8    # "requestIndex":I
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    throw v0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    .prologue
    .line 228
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 229
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 658
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 661
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 668
    :goto_0
    return-void

    .line 667
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    goto :goto_0
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    .prologue
    .line 261
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 262
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    .prologue
    .line 269
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 270
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 868
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 870
    invoke-static {p1}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 872
    :cond_0
    return-void
.end method
