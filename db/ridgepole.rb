# encoding: utf-8

create_table "companies", force: :cascade do |t|
  t.string   :name,               limit: 255, null: false
  t.timestamps
end

create_table "stacks", force: :cascade do |t|
  t.string   :name,               limit: 255, null: false
  t.timestamps
end

create_table "company_stack_maps", force: :cascade do |t|
  t.integer :department_id, null: false
  t.integer :stack_id,      null: false
  t.timestamps
end