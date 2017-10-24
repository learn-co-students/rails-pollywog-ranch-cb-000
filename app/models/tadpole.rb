class Tadpole < ActiveRecord::Base
  belongs_to :frog

  delegate :pond, to: :frog, allow_nil: true

  def metamorphosize
    frog = Frog.new(name: name, color: color, pond: pond)

    if frog.save
      destroy
      frog
    end
  end
end
