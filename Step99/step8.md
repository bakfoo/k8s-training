ここまでで，全てのデプロイメントとサービスがk8sのポッドとして立ち上がったはずです．

もしかするとポッドよってはまだ立ち上がり途中で，_pending_ になっているかもしれません．ただ，正常なマニフェストならば，そのポッドもしばらく経つと _running_ になるはずです．

#### ポッドの状態を見る 

以下のコマンドを使えばpodの状態を確認することができます．

`kubectl get pods`{{execute}}

#### NodePortを見つける

もしもマニフェストにNodePortを設定していない場合は，30000台のランダムなポートがk8sが勝手に割り振ります．今回は _30080_ を指定しているはずです．

`kubectl describe service frontend | grep NodePort`{{execute}}

#### ゲストブックのUIにアクセスする

ポッドが全部立ち上がったら，30080ポートを経由してゲストブックのweb UIにアクセスできます．

Katacodaでは以下のURLでゲストブックのUIにアクセスできるはずです．

https://[[HOST_SUBDOMAIN]]-30080-[[KATACODA_HOST]].environments.katacoda.com

以上で，redisクラスタをデータベースにしたPHPの三層webアプリをk8s上に構築できました．
