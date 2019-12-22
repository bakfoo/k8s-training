
## 07.3 ポッドの動作検証 

### クラスタが起動したかどうか

`kubectl get node`{{execute}}

### マニフェストの用意

<pre class="file" data-filename="nginx-pod.yml" data-target="replace">
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx:latest
</pre>

### 実行例3 マニフェストの適用と状態確認

`kubectl apply -f nginx-pod.yml`{{execute}}

`kubectl get po`{{execute}}

### 実行例4 ポットのIPアドレス稼働中ノードの表示

`kubectl get po nginx -o wide`{{execute}}

### 実行例5 対話型ポッドを起動してポッドのIPアドレスにアクセスする実行例

`kubectl run busybox --image=busybox --restart=Never --rm -it sh`{{execute}}

### 実行例6 Nginxサーバーとアクセステスト用ポッドのリスト表示例

`kubectl get po -o wide`{{execute}}
