class Task < ApplicationRecord
  belongs_to :project

  after_save :update_percent_complete if :mark_completed?

  scope :completed, -> { where(completed: true) }

  mount_uploader :task_file, TaskFileUploader

  def mark_completed?
    self.completed == true
  end

  def update_percent_complete
    count_of_completed_tasks = self.project.tasks.completed.count
    count_of_total_tasks = self.project.tasks.count
    
    self.project.update!(percent_complete: Counter.calculate_percent_complete(count_of_completed_tasks, count_of_total_tasks))
  end
end
