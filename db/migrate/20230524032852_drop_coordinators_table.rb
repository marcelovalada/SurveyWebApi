class DropCoordinatorsTable < ActiveRecord::Migration[6.1]
  def change
    def up
      drop_table :coordinators
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
end
