
## 07.4 ポッドのヘルスチェック機能 

### マニフェストの用意

<pre class="file" data-filename="webapl-pod.yml" data-target="replace">
apiVersion: v1
kind: Pod
metadata:
  name: webapl
spec:
  containers:
  - name: webapl
    image: maho/webapl:0.1    # (1)ハンドラ実装済みアプリケーション
    livenessProbe:            # (2)稼働探査
      httpGet:
        path: /healthz        # 稼働探査のハンドラー
        port: 3000
      initialDelaySeconds: 3  # 初回起動から探査開始までの猶予時間
      periodSeconds: 5        # チェック間隔
    readinessProbe:           # (3)準備探査
      httpGet:
        path: /ready          # 準備探査のハンドラー
        port: 3000
      initialDelaySeconds: 15
      periodSeconds: 6
</pre>

### 実行例9 ポッドをデプロイしてヘルスチェックがREADYになるまで 

`kubectl apply -f webapl-pod.yml`{{execute}}

`kubectl get po`{{execute}}

### ヘルスチェック状態をlogで確認
`kubectl logs webapl -f`{{execute}}

### ポッドの詳細表示

`kubectl describe pod webapl`{{execute}}

### 実行例10 活性化プローブが繰り返し失敗したあとにコンテナを再スタートする

`kubectl logs webapl -f`{{execute}}

`kubectl describe po webapl`{{execute}}
