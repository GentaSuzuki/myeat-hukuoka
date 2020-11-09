# README

users  テーブル

| Column    | Type   | Options     |
| --------- | ------ | ------------|
| email     | string | null: false |
| password  | string | null: false |
| nickname  | string | null: false |
| years_old | data   | null: false |

  Association

  - has_many :contents
  - has_many :comments

  contents テーブル

| Column        | Type       | Option                         |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| restaurant    | string     | null: false                    |
| image_id      | integer    | null: false                    | 
| genre_id      | integer    | null: false                    |
| city_id       | integer    | nill: false                    |
| town_id       | integer    | nill: false                    |
| description   | text       |                                |
| price_id      | integer    | nill: false                    |


  Association

- belongs_to :user
- has_many :comments

  comments テーブル


| Column    | Type      | Option                         |
| --------- | --------- | ------------------------------ |
| text      | text      | null: false                    |
| user      | reference | null: false, foreign_key: true |
| content   | reference | null: false, foreign_key: true |

   Association

   be_longs :user
   be_longs :content


# Myeatーhukuoka
 ## 福岡の美味しい食べ物、お店を気軽に探せる投稿することができます
 [Myeat-hukuoka](http://3.114.131.61/ "Myeat-hukuoka")
### BASIC認証
  ID genta
  pass 1020
  #### テスト用アカウント
  投稿者アカウント
    メールアドレス test@test.com
    パスワード  test12345
  ##### 利用方法
  新規登録することで自分の好きなお店や食べ物を投稿することができます
  登録しなくても投稿の内容は見れます
  ###### 目指した課題解決
  このアプリケーションを通じて、福岡に初めて来た人でもどんなお店があるか
  地元の人しか知らないお店などを知れることができます。
  ###### 洗い出した要件
  | 重要度(高.3中.2小.1) | 機能            | 目的                                       | 詳細 | ユーズストーリー | 見積時間 |
  | ------------------ | ---------------| ------------------------------------------ | ---
  | 3                  | ユーザー登録機能  | ユーザーの新規登録、ログイン、ログアウトができます | ユーザーを管理し登録したユーザーしか投稿や編集をできないようにする | 新規登録、ログイン、を押して必要な情報を入力してもらうことで利用することができる。ログイン状態でログアウトボタンを押すとログアウトできる | 5
  | 2                  | ユーザー詳細機能  | ユーザーのデータや投稿が見れます                | ユーザーの情報やユーザーが投稿した内容が全て表示されるようにする
  | 3                  | 投稿機能         | 投稿ができます                               | ユーザーが好きな店舗の情報をコンテンツとして投稿できる
  | 3                  | 投稿詳細機能      | 投稿の内容がわかります                        | 店舗の名前住所や料理のジャンルなどが見れるようになる
  | 2                  | 投稿編集機能      | 投稿の内容を編集することができます              | 投稿の内容を誤って投稿した時、変更したい時に修正できる
  | 3                  | 投稿削除機能      | 投稿を削除する子ができます                     | 消したい投稿がある時にデータを消すことができる
  | 2                  | お気に入り機能    | 投稿にお気に入りすることができます              | 行ってみて良かったお店など、投稿が良かった時とかなどにお気に入りできるようにする 
  | 3                  | エラー日本語化機能 | エラーの内容が日本語で表示されます              | 新規登録、投稿する時必須条件のものが不足していた時にどこが不足していかが日本語で表示される
  | 3                  | 複数枚投稿機能    | 複数枚の画像を投稿することができます             | 投稿内容に複数枚の画像を投稿するようにし、店舗の異論案メニューを紹介できるようにした。
  | 2                  | プレビュー機能    | 投稿する画面で実際に表示されます                | 投稿する前にどんな表示になるか画像があっているか実際に表示させることで確認できる
  | 2                  | 検索機能         | 条件に合った投稿を探せます                     | ジャンルや価格帯を指定をすることでそれの条件にあった投稿が出るようになる

