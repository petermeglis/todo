class HomeController < ApplicationController
  def home
    @tasks = Task.where(completed: false)
  end

  def log
    @tasks = Task.where(completed: true)
  end
end
