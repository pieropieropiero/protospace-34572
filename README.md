	
# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| email    | string | null: false |
| password | string | null: false |
| name     | string | null: false |
| profile  | string | null: false |
| occupation | string | null: false |
| position | string | null: false |

### Association

- has_many :comments
- has_many :prototypes, through: comments

## prototypes テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| title  | string | null: false |
| catch_copy| string | null: false |
| concept| string | null: false |
| user   | references | null: false, foreign_key: true |

### Association

- has_many :comments
- has_many :users, through: comments

## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :prototypes
