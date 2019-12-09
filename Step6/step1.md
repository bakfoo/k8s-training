
## 06.1 ポッドの動作検証 


### 実行例1

`kubectl cluster-info`{{execute}}

### 実行例2a

`kubectl get node`{{execute}}


### 実行例3

`kubectl run hello-world --image=hello-world -it --restart=Never`{{execute}}

### 実行例5

`kubectl get pod`{{execute}}

### 実行例7

`kubectl delete pod hello-world`{{execute}}

`kubectl run hello-world --image=hello-world -it --restart=Never`{{execute}}

### 実行例8 Nginxサーバーとアクセステスト用ポッドのリスト表示例

`kubectl run hello-world --image=hello-world -it --restart=Never --rm`{{execute}}
