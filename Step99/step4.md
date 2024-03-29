このステップではredisのスレイブをレプリケーション構成で走らせます．redisのレプリケーションについては詳しくは以下を参照ください． [http://redis.io/topics/replication](http://redis.io/topics/replication)

step2, step3で示したように，デプロイメントとサービスによってk8sの基本的なマイクロサービスが作られます．step4では他のマイクロサービス同士をどうやって見つけたらいいのかということを示します．

他のマイクロサービスを見つけるには，k8sのDNS機能を利用します．そのためには，マニフェストにあるように*GET_HOSTS_FROM* 環境変数を利用してDNSによってスレイブがマスターを見つけることができるようにします．

#### Redisスレイブのスタート 

- マニフェスト: _redis-slave-deployment.yaml_
- イメージ: _gcr.io/google_samples/gb-redisslave:v1_
- port: _6379_
- スレイブのレプリカ数は2つです．
- スレイブが立ち上がると _redis-master_ にDNSを経由して接続されます． 

`kubectl create -f redis-slave-deployment.yaml`{{execute}}

#### デプロイメントの列挙 

`kubectl get deployment`{{execute}}
