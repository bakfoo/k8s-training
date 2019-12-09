
## 07.3 ポッドの動作検証 

マニフェストの用意

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

マニフェストの適用と状態確認

`kubectl apply -f nginx-pod.yml`{{execute}}

`kubectl get po`{{execute}}

ポットのIPアドレス稼働中ノードの表示

`kubectl get po nginx -o wide`{{execute}}
