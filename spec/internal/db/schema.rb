ActiveRecord::Schema.define do
  create_table(:tests, :force => true) do |t|
    t.string :name
    t.text   :content
    t.timestamps
  end
end
