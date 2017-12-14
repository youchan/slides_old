# Kubernetesは機械学習の夢をみるか？

![cover](cover.jpg)



## Who am I?

* 大崎 瑶
* (おおさき よう)
* @youchan
* 株式会社レトリバ

---

![large](retrieva.png)

## 株式会社レトリバ

* Preferred Infrastructure からSedueを継承
* 自然言語処理、機械学習の分野に特化したソリューション
* 特にコールセンター業務

## 最近、転職しました

* もっとコードを書きたい！
* 機械学習やディープラーニングに興味があった
* 11/1入社

### クラウドサービスからパッケージソフトウェアへ

![large](ubiregi.png)

## 転職してからKubernetesばかり弄っている

![kube](kubernetes.svg)

---

#### Kubernetesってむしろクラウドサービスのほうじゃないの？

![kube](kubernetes_cloud.png)

### パッケージベンダがなぜKubernetesをやっているのか

## まずはコンテナ化

## 依存パッケージをインストールするのが面倒

![large](architecture.png)

## 実際のお客様に提供されるソリューションは複数の製品を組み合わせることに

![services](services.png)

## minikube

* ローカルにKubernetesのクラスタを作れる
* VM上につくるのでサクっと作れる
* 1 Nodeのクラスタなので多少の制約がある

## minikubeの適用

* セットアップが簡単
* スケールする必要があまりない(スケールさせたいときはGKEなどを選べばよい)
* 耐障害性
* クラスタの管理が柔軟

### オンプレではなくPaaSにインストールすることが可能

* GKE
* AWSがKubernetesに対応

### もし将来クラウドサービスを提供するときにも…

---

#### まだ、始めたばかりで正直言ってこれが正解なのか分らない…

* minikube使うとVMが前提になる
  - かといってKubernetesクラスタを作るのはオーバースペック?
* オンプレだけ考えるとそうだけど…

### Kubernetes on DockerがLinux対応すればよさそう

## まとめ

* パッケージベンダーにとってもKubernetesは使える子
* 特に機械学習のアプリケーションはマイクロサービス化しやすいので有効
