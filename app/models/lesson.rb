class Lesson < ActiveRecord::Base
  validates :name, presence: true
  validates :number, presence: true

  def next
    lesson = Lesson.where("lesson > ?", self.lesson).first
    lesson
  end

  def previous
    lesson = Lesson.where("lesson < ?", self.lesson).first
    lesson
  end
end
