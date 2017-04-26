class Ship

  def initialize(hit_points)
    @hit_points = hit_points
  end

  def destroyed?
    if @hit_points == 0
      true
    else
      false
    end
  end

  def hit
    @hit_points -= 1
  end

end
