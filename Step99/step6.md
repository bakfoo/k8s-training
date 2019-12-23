redisクラスタとしてデーベースが構築できたので，次にゲストブックのwebアプリケーションをデプロイします．

#### フロントエンドを立ち上げる 

- マニフェスト: _frontend-deployment.yaml_  
- イメージ: _gcr.io/google-samples/gb-frontend:v4_

以下のコマンドでフロントエンドをデプロイします．

`kubectl create -f frontend-deployment.yaml`{{execute}}

#### デプロイメントとポッドの列挙

`kubectl get deployment`{{execute}}

`kubectl get pods`{{execute}}

#### PHPコード

フロントエンドはHTML+Angular.js+PHPで書かれています．

- _index.html_: web UI
- _controller.js_: Angular.jsで書かれている
- _guestbook.php_: redisに対してsetとgetをするだけのPHPハンドラー

基本的にはHTML+Angular.jsのフォームリクエストをPHPが受取り，RedisにJSONとして読み書きをします．書くときは _redis-master_ に投げ，読むときは _redis-slave_ のノードから読みます．
