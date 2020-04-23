# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# インス映えスポット投稿アプリDB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false,unique: true|
|password|string|null: false|

### Association
- has_many :posts
- has_many :comments

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|srore_name|string|null: false|
|text|text|null: false|
|address|string|null: false|
|url|string||
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :post_areas
- has_many :post_tags
- has_many :comments

## post_areasテーブル
|Column|Type|Options|
|------|----|-------|
|area_tag_id|null: false, foreign_key: true|
|posts_id|null: false, foreign_key: true|

### Association
- belongs_to :area_tags
- belongs_to :posts

## post_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|tag_id|null: false, foreign_key: true|
|posts_id|null: false, foreign_key: true|

### Association
- belongs_to :post_tags
- belongs_to :posts

## area_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|

### Association
- has_many :post_areas

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|

### Association
- has_many :post_tags

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :users
- bulongs_to :posts

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :posts