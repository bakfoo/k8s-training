step2 から step5まではredisのマスター・スレイブ構成をつくります．

step2, step3ではredisのマスターを構成します．それぞれのステップはデプロイメントとサービスのデプロイになります．

step4, step5ではredisのスレイブを構成します．それぞれのステップはデプロイメントとサービスのデプロイになります．

#### redisマスター 

- マニフェスト: _redis-master-deployment.yaml_
- イメージ: _k8s.gcr.io/redis:e2e_
- redisサーバ名: _redis-master_ 
- redis port: _6379_

以下の_kubectl create_コマンドでredisマスターのデプロイメントをデプロイします．

`kubectl create -f redis-master-deployment.yaml`{{execute}}

#### 何が起きた？ 

上記のコマンドでデプロイメントが立ち上がったので，確認します．

`kubectl get deployment`{{execute}}

また，コンテナはpodとして立ち上がっているはずで，_kubectl_コマンドで確認できます．

`kubectl get pods`{{execute}}
