# README

## usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| email  | string     | null: false                    |

### Association
- has_many :rooms
- has_many :comments

## roomsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                   |
| year   | integer    | null: false                    |
| month  | integer    | null: false                    |
| day    | integer    | null: false                    |
| type   | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association
- has_many :comments
- belongs_to :user

## commentssテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| message | text       | null: false
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :room