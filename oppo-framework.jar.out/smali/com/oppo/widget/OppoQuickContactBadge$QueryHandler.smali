.class Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "OppoQuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoQuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoQuickContactBadge;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoQuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadge;

    .line 202
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 203
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 207
    const/4 v6, 0x0

    .line 208
    .local v6, "lookupUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 209
    .local v4, "createUri":Landroid/net/Uri;
    const-wide/16 v2, -0x1

    .line 210
    .local v2, "contactId":J
    const/4 v7, 0x0

    .line 213
    .local v7, "trigger":Z
    packed-switch p1, :pswitch_data_0

    .line 241
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 242
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_1
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 248
    iget-object v8, p0, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadge;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "cookie":Ljava/lang/Object;
    # invokes: Lcom/oppo/widget/OppoQuickContactBadge;->trigger(JLjava/lang/String;)V
    invoke-static {v8, v2, v3, p2}, Lcom/oppo/widget/OppoQuickContactBadge;->access$000(Lcom/oppo/widget/OppoQuickContactBadge;JLjava/lang/String;)V

    .line 253
    :cond_2
    :goto_1
    return-void

    .line 215
    .restart local p2    # "cookie":Ljava/lang/Object;
    :pswitch_0
    const/4 v7, 0x1

    .line 216
    :try_start_0
    const-string v9, "tel"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 219
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 220
    sget v8, Lcom/oppo/widget/OppoQuickContactBadge;->PHONE_ID_COLUMN_INDEX:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 221
    sget v8, Lcom/oppo/widget/OppoQuickContactBadge;->PHONE_LOOKUP_STRING_COLUMN_INDEX:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 223
    goto :goto_0

    .line 228
    .end local v5    # "lookupKey":Ljava/lang/String;
    :pswitch_2
    const/4 v7, 0x1

    .line 229
    const-string v9, "mailto"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 232
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 233
    sget v8, Lcom/oppo/widget/OppoQuickContactBadge;->EMAIL_ID_COLUMN_INDEX:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 234
    sget v8, Lcom/oppo/widget/OppoQuickContactBadge;->EMAIL_LOOKUP_STRING_COLUMN_INDEX:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 235
    .restart local v5    # "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 241
    .end local v5    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz p3, :cond_3

    .line 242
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v8

    .line 249
    :cond_4
    if-eqz v4, :cond_2

    .line 251
    iget-object v8, p0, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadge;

    const-wide/16 v10, -0x1

    check-cast p2, Ljava/lang/String;

    .end local p2    # "cookie":Ljava/lang/Object;
    # invokes: Lcom/oppo/widget/OppoQuickContactBadge;->trigger(JLjava/lang/String;)V
    invoke-static {v8, v10, v11, p2}, Lcom/oppo/widget/OppoQuickContactBadge;->access$000(Lcom/oppo/widget/OppoQuickContactBadge;JLjava/lang/String;)V

    goto :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
