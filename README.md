# Nomady
![全体画像](https://user-images.githubusercontent.com/56670415/83018170-cecb7900-a05f-11ea-854d-6140cc37f915.png)
## 制作背景

カフェで勉強したいなと思った時にWifiとコンセントが無かったらちょっとガッカリしますよね。
そんな不安をなくすために作ったのがこのサービスです。
みんなで勉強できるカフェを登録・共有しよう！がコンセプトです。

## URL
https://www.nomady.site/

* ログインページから【testuser】としてゲストユーザーログインできます。
* 本ポートフォリオは、タブレット・スマートフォンからもご覧いただけます。

## 使用技術
* Ruby 2.6.3, Rails 5.2.4.2
* Nginx, unicorn
* AWS (EC2, RDS for MySQL, S3, VPC, Route53, ALB, ACM)
* Capistrano
* RSpec
* HTML, Sass, javascript, jQuery

## AWS構成図
![ER図2](https://user-images.githubusercontent.com/56670415/82792357-3f309980-9eaa-11ea-9c40-b6a4300a8b8f.png)


## 機能一覧
* ユーザー登録・ログイン機能
* 投稿機能（画像のアップロードにCarrierWaveを使用）
* 投稿一覧・投稿詳細表示機能
* 投稿管理機能
* ページネーション機能（Kaminari）
* いいね機能（Ajax）
* コメント機能（Ajax）
* 検索機能（Ransackを使用）
* フォロー・フォロワー機能
* googlemapにすべての投稿を表示
* 住所自動登録機能(jpPostal使用)
* タグ付け機能、タグ検索機能(acts-as-taggable-on使用)

## 課題、今後実装したい機能
* テストを充実させる
* 追加機能の実装