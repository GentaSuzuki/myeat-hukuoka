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