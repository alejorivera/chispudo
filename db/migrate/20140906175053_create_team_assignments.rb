class CreateTeamAssignments < ActiveRecord::Migration
  def change
    create_table :team_assignments do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
