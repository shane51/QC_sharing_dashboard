class AddBuildToVm < ActiveRecord::Migration
  def change
    add_column :vms, :build, :string
  end
end
