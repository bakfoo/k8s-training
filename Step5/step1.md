
## 05.2 環境変数のAPI実装例 

### 実行例2 コンテナAPIとして環境変数の実装テスト

`LANG=C ./my_daemon`{{execute}}

`LANG=C;INTERVAL=10 ./my_daemon`{{execute}}

### 実行例3 コンテナをビルドする様子

`docker build --tag my_daemon:0.1 .`{{execute}}

### 実行例4 ビルドしたコンテナのリスト

`docker images`{{execute}}

### 実行例5 コンテナの終了と再開 

#### スタート

`docker run --name myd my_daemon:0.1`{{execute}}

#### （別のターミナルを開いて）ストップ

`docker stop myd`{{execute}}

#### 再開

`docker start -i myd`{{execute}}

### 実行例6 シェル改良後のコンテナの再ビルド 

`docker build --tag my_daemon:0.2 -f Dockerfile2`{{execute}}

### 実行例7 改良型コンテナイメージと前バージョン 

`docker images`{{execute}}

`docker start -i myd`{{execute}}

### 実行例8 改良型コンテナのテストの様子 

`docker run --name myd my_daemon:0.2`{{execute}}