まず，kubernetesのクラスタを起動します．

#### 最初の一歩 

シングルノードのクラスタを以下のスクリプトを実行して立ち上げます．スクリプトによって，kubernetesのMaster, Proxy, クラスタDNSが立ち上がります．クラスタDNSはredisのマスター・スレイブ構成をするときに必要です． 

`launch.sh`{{execute}}

#### ヘルスチェック 

以下のコマンドでクラスタが立ち上がったか調べます．

`
kubectl cluster-info
kubectl get nodes
`{{execute}}

NotReady の場合はしばらく立ち上がるまで待って下さい．
