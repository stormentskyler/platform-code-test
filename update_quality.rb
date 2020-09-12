require "awards/award"

def update_quality(awards)
  awards.each(&:update_award)
end
