class Task
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :title, type: String
  field :due_date, type: Date, default: Date.today
  field :due_time, type: Time, default: Time.now
  field :completed, type: Mongoid::Boolean
  field :completed_timestamp, type: DateTime
end
