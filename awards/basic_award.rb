module BasicAward
  def quality_logic(quality, expires_in)
    [quality - (expires_in <= 0 ? 2 : 1), 50].min
  end

  def expiration_logic(expires_in)
    expires_in - 1
  end
end
