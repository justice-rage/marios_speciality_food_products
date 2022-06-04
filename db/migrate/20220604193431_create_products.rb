class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table(:albums) do |t|
      t.column(:name, :string)
      t.column(:cost, :integer)
      t.column(:country_of_origin, :string)

      t.timestamps()
    end
  end
end
