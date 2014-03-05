class HomeController < ApplicationController
  def index
  	@last_confections = Confection.last(20)
  end
end
