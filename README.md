# README

## usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| email  | string     | null: false                    |
| encrypted_password | string | null: false            |

### Association
- has_many :rooms
- has_many :comments

## roomsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |
| date   | string     | null: false                    |
| artist | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association
- has_many :comments
- belongs_to :user

## commentsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| message | string       | null: false
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :room