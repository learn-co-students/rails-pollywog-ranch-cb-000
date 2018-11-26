class Tadpole < ActiveRecord::Base
  belongs_to :frog
  delegate :pond, :to => :frog, :allow_nil => true

  def metamorphose
    frog = Frog.new(name: self.name, color: self.color)
    frog.pond = self.pond
    frog.save
    frog
  end
end
