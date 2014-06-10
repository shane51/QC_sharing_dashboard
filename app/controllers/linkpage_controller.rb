class LinkpageController < ApplicationController
  def index
	@links = Link.order(:catgory)
  end
end
