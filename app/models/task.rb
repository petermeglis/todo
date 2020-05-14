class Task
  include Mongoid::Document
  field :title, type: String
  field :due_date, type: Date
  field :due_time, type: Time
  field :completed, type: Mongoid::Boolean
  field :completed_timestamp, type: DateTime
end
