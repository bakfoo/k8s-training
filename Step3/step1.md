
## 03.2 ビルドの実行手順 

Dcokerfileの用意

<pre class="file" data-filename="Dockerfile" data-target="replace">
FROM  alpine:latest
RUN   apk update && apk add figlet
ADD   ./message /message
CMD   cat /message | figlet
</pre>

### 実行例3 コンテナのビルドが完了するまでの様子

`docker build --tag hello:1.0 .`{{execute}}

### 実行例4 ビルドしたイメージのリスト表示

`docker images`{{execute}}

### 実行例5 ビルドした独自コンテナの実行結果

`docker run hello:1.0`{{execute}}


### 実行例6 実行終了後のコンテナのリスト表示

`docker ps -a`{{execute}}
