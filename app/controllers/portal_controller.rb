class PortalController < ApplicationController
  def index
	@vms = Vm.order(:ip)
  end
end
