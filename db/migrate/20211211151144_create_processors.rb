class CreateProcessors < ActiveRecord::Migration[6.1]
  def change
    create_table :processors do |t|

      t.timestamps
    end
  end
end
