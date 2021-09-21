## 開発環境構築
- .env.development.localを追加（他のメンバーからもらう）
- docker-compose up -d (コンテナの立ち上げ)
- docker-compose exec web bash (webのコンテナに入る、rails cなどを使用したい場合)
- rails db:create (初回DB作成時)
- bin/schema_update.sh (ridgepole変更時)
- rake maintenance:202109:add_sample_data（テストデータの追加）
- http://0.0.0.0:3000/graphiql

