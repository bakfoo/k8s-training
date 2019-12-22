step2 から step5まではredisのマスター・スレイブ構成をつくります．

step2, step3ではredisのマスターを構成します．それぞれのステップはリプリケーションコントローラのデプロイとサービスのデプロイになります．

step4, step5ではredisのスレイブを構成します．それぞれのステップはリプリケーションコントローラのデプロイとサービスのデプロイになります．

#### redisマスター 

redisサーバ: _redis-master_ 
redis port: _6379_

以下の_kubectl create_コマンドでredisマスター（リプリケーションコントローラー)をデプロイします．

`kubectl create -f redis-master-controller.yaml`{{execute}}

#### 何が起きた？ 

上記のコマンドでリプリケーションコントローラーが立ち上がったので，確認します．

`kubectl get rc`{{execute}}

また，コンテナはpodとして立ち上がっているはずで，_kubectl_コマンドで確認できます．

`kubectl get pods`{{execute}}
