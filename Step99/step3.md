redisマスタの構成の2つ目，service，つまり，redisマスタのネットの構成をロードバランサーとしてデプロイします．

#### Serviceを作る

マニフェスト: _redis-master-service.yaml_
デプロイメント名: _redis-master_

`kubectl create -f redis-master-service.yaml`{{execute}}

#### サービスの列挙と詳細の表示

`kubectl get services`{{execute}}

`kubectl describe services redis-master`{{execute}}
