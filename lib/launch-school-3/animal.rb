class Animal
  def can_swim?
    false
  end

  def swim
    if can_swim?
      "Swimmin', doin' real good"
    else
      'Oh lord have mercy! Bring me outta here!'
    end
  end
end
