class Tadpole < ActiveRecord::Base
  belongs_to :frog
  delegate :pond, :to => :frog, allow_nil: true

  def metamorphosize

    Frog.new.tap do |frog|
      frog.name = self.name
      frog.color = self.color
      frog.pond = self.pond 
    end

  end
end
