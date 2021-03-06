# language: ja

フィーチャ:
  管理者として、投票する権限があるメンバーだけに投票画面が表示されるようになっていてほしい。

  また、ユーザとして、投票する権限がない場合はそのことがわかるようになっていてほしい。
  なぜなら、投票画面にアクセスしたのに何も情報がなく投票画面が表示されないと混乱するからだ。

  シナリオ: 投票の権利がないメンバーは投票画面を表示できない
    前提 以下のメンバーがログインしている:
      | ニックネーム | 投票権限 |
      | alice        | なし     |

    もし 投票ページを表示する

    ならば ホームに遷移すること
    かつ "投票する権限がありません" というメッセージが表示されていること
