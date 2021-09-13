# README

## usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| email  | string     | null: false                    |

### Association
- has_many :rooms
- has_many :messages

## roomsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null]: false                   |
| year   | integer    |                                |
| month  | integer    |                                |
| day    | integer    |                                |
| type   | string     |                                |

### Association
- has_many :messages
- belongs_to :user

## messagesテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :room