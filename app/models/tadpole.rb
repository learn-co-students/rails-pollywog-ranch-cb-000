class Tadpole < ActiveRecord::Base
  belongs_to :frog

  delegate :pond, to: :frog, allow_nil: true

  def metamorphosize
    tadpole = destroy
    Frog.create(name: tadpole.name, color: tadpole.color, pond: tadpole.pond)
  end
end
