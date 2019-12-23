フロントエンドにアクセスするために，k8sサービスを立ち上げ，proxyを設定します．

#### Proxyのスタート

- マニフェスト: _frontend-service.yaml_

マニフェストは，_NodePort_ としてサービスを定義してあります．これによって，クラスタ全体でポートを共有することができます．

ゲストブック自体は80ポート動きますが，クラスタ全体のサービスとしては _30080_ ポートを利用します．

`kubectl create -f frontend-service.yaml`{{execute}}

`kubectl get services`{{execute}}