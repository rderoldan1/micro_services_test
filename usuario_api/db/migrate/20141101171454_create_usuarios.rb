class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :identificacion
      t.string :tipo_identificacion
      t.string :telefono

      t.timestamps
    end
  end
end
