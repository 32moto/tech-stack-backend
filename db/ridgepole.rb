# encoding: utf-8

create_table 'companies', force: :cascade do |t|
  t.string   :name, limit: 255, null: false
  t.timestamps
end

create_table 'company_images', force: :cascade do |t|
  t.integer  :company_id, null: false
  t.string   :path, limit: 255, null: false
  t.timestamps
end

create_table 'stacks', force: :cascade do |t|
  t.string   :name, limit: 255, null: false
  t.timestamps
end

create_table 'stack_images', force: :cascade do |t|
  t.integer  :stack_id,   null: false
  t.string   :path, limit: 255, null: false
  t.timestamps
end

create_table 'company_stack_maps', force: :cascade do |t|
  t.integer :company_id, null: false
  t.integer :stack_id,   null: false
  t.timestamps
end

create_table 'users', force: :cascade do |t|
  t.string   :name, limit: 255, null: false
  t.timestamps
end

create_table 'user_images', force: :cascade do |t|
  t.integer  :user_id,   null: false
  t.string   :path, limit: 255, null: false
  t.timestamps
end

create_table 'user_stack_maps', force: :cascade do |t|
  t.references :user,  null: false
  t.references :stack, null: false
  t.timestamps
end