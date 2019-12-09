Start by writing a simple Go web server application. This is very similar to the app in the *Container basics* scenario, but this time the response content is read from a file rather than being hard-coded. 

## 03.2 ビルドの実行手順 

Dcokerfileの用意

<pre class="file" data-filename="hello.go" data-target="replace">
FROM  alpine:latest
RUN   apk update && apk add figlet
ADD   ./message /message
CMD   cat /message | figlet
</pre>

コンテナのビルド

`docker build --tag hello:1.0 .`{{execute}}
