## 開発環境構築
- .env.development.localを追加
- docker-compose up -d (コンテナの立ち上げ)
- docker-compose exec web bash (webのコンテナに入る、rails cなどを使用したい場合)
- rails db:create (初回DB作成時)
- bin/schema_update.sh (ridgepole変更時)
- http://0.0.0.0:3000/graphiql
