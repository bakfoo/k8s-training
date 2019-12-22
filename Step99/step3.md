redisマスタの構成の2つ目，service，つまり，redisマスタのネットの構成をロードバランサーとしてデプロイします．

#### Serviceを作る

リプリケーションコントローラー名: _redis-master_

`kubectl create -f redis-master-service.yaml`{{execute}}

#### List &amp; Describe Services

`kubectl get services`{{execute}}

`kubectl describe services redis-master`{{execute}}
