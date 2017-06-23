class Tadpole < ActiveRecord::Base

  belongs_to :frog
  delegate :pond, to: :frog, :allow_nil => true
  # belongs_to :pond, through: :forg
end
