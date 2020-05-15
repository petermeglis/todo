class Task
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :title, type: String
  field :due_date, type: Date, default: Date.today
  field :due_time, type: Time, default: Time.now
  field :completed, type: Mongoid::Boolean, default: false
  field :completed_timestamp, type: DateTime
  field :deleted, type: Mongoid::Boolean, default: false
  field :deleted_timestamp, type: DateTime

  def due_date_to_s
    self[:due_date].strftime("%A %b %d")
  end

  def due_time_to_s
    self[:due_time].strftime("%l:%M %P")
  end

  def completed_timestamp_to_s
    return false unless self[:completed_timestamp]
    self[:completed_timestamp].strftime("%A %b %d at %l:%M %P") 
  end

  def deleted_timestamp_to_s
    return false unless self[:deleted_timestamp]
    self[:deleted_timestamp].strftime("%A %b %d at %l:%M %P")
  end
end
