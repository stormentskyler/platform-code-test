module BlueCompare
  def quality_logic(quality, expires_in)
    if expires_in <= 0
      quality = 0
    elsif expires_in <= 5
      quality += 3
    elsif expires_in <= 10
      quality += 2
    else
      quality += 1
    end
    [quality, 50].min
  end

  def expiration_logic(expires_in)
    expires_in - 1
  end
end
