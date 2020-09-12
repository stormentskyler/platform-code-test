module BlueStar
  def quality_logic(quality, expires_in)
    [quality - (expires_in <= 0 ? 4 : 2), 50].min
  end

  def expiration_logic(expires_in)
    expires_in - 1
  end
end
