# centos8 + gcloud + docker
コンテナ内で gcloud のコマンドや docker も動かす
- Mac に git,Docker はインストールしているが、gcloud関連はちょっと入れたくないので、GCPのコンテナレジストリとやりとりするために、コンテナを作ってみた。
- コンテナ起動時に `--privileged` が必要

### メモ
- 起動メモ `docker run -it --privileged --name test -d c8:1`
- 使ってみると頭が混乱するので使わないかもしれない。メモリの割り当てとかが少ないからかもしれないけど遅かった感じだし。  
cloud console でやるともっと速いかな？
- gcloud のコマンドでコンテナレジストリへの登録とかできるのは、知ってるつもりだけど、あれは docker インストールしてなくても、動くのかな... 動きそう... なので、きっとこんなコンテナはいらないはず。
- google-cloud-sdk.repo は [これ](https://cloud.google.com/sdk/docs/quickstart-redhat-centos?hl=ja) から作成しています。 これも `curl -L` とかで落としてこれないのかな？
