class WelcomeController < ApplicationController
  def index
    @callouts = Callout.all
  end
end
