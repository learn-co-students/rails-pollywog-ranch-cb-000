class Tadpole < ActiveRecord::Base
  belongs_to :frog
  delegate :pond, to: :frog, allow_nil: :true

  def metamorphosize
    frog = Frog.create(name: self.name, color: self.color, pond: self.pond)
    self.destroy!
    return frog
  end
end
