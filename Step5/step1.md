
## 03.2 ビルドの実行手順 

Dcokerfileの用意

<pre class="file" data-filename="Dockerfile" data-target="replace">
FROM  alpine:latest
RUN   apk update && apk add figlet
ADD   ./message /message
CMD   cat /message | figlet
</pre>

コンテナのビルド

`docker build --tag hello:1.0 .`{{execute}}
