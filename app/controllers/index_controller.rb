class IndexController < ApplicationController
  def index
	@activities = PublicActivity::Activity.all
  end
end