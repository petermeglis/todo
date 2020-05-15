class HomeController < ApplicationController
  def home
    @tasks = Task.where(deleted: false, completed: false)
  end

  def today
    @day_name = "Today " + Date.today.strftime("%A %b %d")
    @tasks = Task.where(deleted: false, completed: false, due_date: Date.today)
  end

  def upcoming
    @task_data = {}
    7.times do |i|
      date = Date.today + i.days

      name = date.strftime("%A %b %d")
      name = "Today " + name if i == 0
      name = "Tomorrow " + name if i == 1

      @task_data[name] = Task.where(deleted: false, completed: false, due_date: date)
    end
    @task_data
  end

  def trash
    @tasks = Task.where(deleted: true)
  end

  def log
    @tasks = Task.where(deleted: false, completed: true)
  end
end
