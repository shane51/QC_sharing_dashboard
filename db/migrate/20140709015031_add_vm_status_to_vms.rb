class AddVmStatusToVms < ActiveRecord::Migration
  def change
  	add_column :vms, :vm_status, :boolean
  end
end
