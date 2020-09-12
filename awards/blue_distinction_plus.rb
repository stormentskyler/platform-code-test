module BlueDistinctionPlus
  PERMANENT_QUALITY = 80
  def quality_logic(_quality, _expires_in)
    PERMANENT_QUALITY
  end

  def expiration_logic(expires_in)
    expires_in
  end
end
