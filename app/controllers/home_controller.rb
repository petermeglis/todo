class HomeController < ApplicationController
  def home
    @tasks = Task.all
  end
end
