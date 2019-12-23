redisスレイブをネットワーク的に繋ぐために，サービスを設定します．サービス名は _redis-slave_としました．　

#### Redisスレイブサービスを立ち上げる

- マニフェスト: _redis-slave-service.yaml_

`kubectl create -f redis-slave-service.yaml`{{execute}}

`kubectl get services`{{execute}}
