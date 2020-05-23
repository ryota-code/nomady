# フィットネス記録アプリ Nomady

## Overview  
カフェを登録することができるSNSです。 
勉強できるカフェを素早く探せることに重点をおきました。 
完全独学で、手を動かしながら、開発しました。    

## 使用技術  
### 技術のこだわりポイント  
1. インフラにAWSを使用
- 理由: 
2. DevOps周りの効率化
- 理由: 
- CircleCIでCI/CD パイプラインの構築。(実装予定)
- ローカルと本番にDocker（実装予定）
3. 最適な設計
- インフラ
- 開発環境のコンテナ構成
- Railsのコントローラ
- テーブル設計

### 言語・フレームワーク・インフラ  
  
#### インフラ  
AWSの各種サービス  
構成は以下  
Elastic Container Service(ECS) + RDS  + ALB + Route53 + VPC  
本番環境でもコンテナ基盤を使用

##### インフラ構成図  
  

  
#### バックエンド  
Ruby2.6.3    
Ruby on Rails 5  
  
#### フロントエンド   
JavaScript  

#### 開発環境  
Docker（実装予定）

#### コンテナ構成
1. Rails (App)
2. Nginx (Web)
3. MySQL (DB)
  

### その他  
#### GitHubでIssueとブランチを連携してプルリクベースの開発  
OSSや実際の開発で採用されているフローをシミュレーションして開発。  
  
### URL
https://nomady.site
