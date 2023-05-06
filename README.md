# テーブル設計

## users テーブル
| Column             | Type   | Options                 | 
| ------------------ | ------ | ----------------------- | 
| nickname           | string | null:false              | 
| email              | string | null:false,unique: true | 
| encrypted_password | string | null:false              | 

### Association
- has_many :incomes
- has_many :expenditures
- has_many :differences

## incomes テーブル
| Column        | Type       | Options                       | 
| ------------- | ---------- | ----------------------------- | 
| category_id   | integer    | null:false                    | 
| income_amount | integer    | null:false                    | 
| register_day  | date       | null:false                    | 
| user          | references | null:false, foreign_key: true | 
| difference    | references | null:false, foreign_key: true | 

### Association
- belongs_to :user
- has_many :expenditures
- has_many :differences

## expenditures テーブル
| Column             | Type       | Options                       | 
| ------------------ | ---------- | ----------------------------- | 
| category_id        | integer    | null:false                    | 
| expenditure_amount | integer    | null:false                    | 
| register_day       | date       | null:false                    | 
| user               | references | null:false, foreign_key: true | 
| income             | references | null:false, foreign_key: true | 
| difference         | references | null:false, foreign_key: true | 

### Association
- belongs_to :user
- belongs_to :income
- has_many :differences

## differences テーブル
| Column            | Type       | Options                      | 
| ----------------- | ---------- | ---------------------------- | 
| register_day      | date       | null:false                   | 
| total_income      | integer    | null:false                   | 
| total_expenditure | integer    | null:false                   | 
| difference        | integer    | null:false                   | 
| user              | references | null:false,foreign_key: true | 
| income            | references | null:false,foreign_key: true | 
| expenditure       | references | null:false,foreign_key: true | 

### Association
- belongs_to :user
- belongs_to :income
- belongs_to :expenditure