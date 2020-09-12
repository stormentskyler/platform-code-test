require_relative "blue_compare"
require_relative "blue_distinction_plus"
require_relative "blue_first"
require_relative "blue_star"
require_relative "basic_award"

class Award
  # allow award to function as it has for other legacy uses
  attr_accessor :name, :expires_in, :quality

  def initialize(name, expires_in, quality)
    @name = name
    @expires_in = expires_in
    @quality = quality
    mixin_business_logic
  end

  # Let each award define its own logic, while maintaining legacy
  # compatibility
  def update_award
    # Universal rule of quality never being negative
    @quality = [quality_logic(@quality, @expires_in), 0].max
    @expires_in = expiration_logic(@expires_in)
  end

  private

  # Define award types here
  def mixin_business_logic
    case name
    when "Blue Compare" then extend BlueCompare
    when "Blue Distinction Plus" then extend BlueDistinctionPlus
    when "Blue First" then extend BlueFirst
    when "Blue Star" then extend BlueStar
    else extend BasicAward
    end
  end
end
