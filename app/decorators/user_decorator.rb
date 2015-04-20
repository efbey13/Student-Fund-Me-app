class UserDecorator < Draper::Decorator
  delegate_all

  def has_school
    if model.student?
      h.content_tag(:p, )
    else

    end
  end

  def has_major
    if model.student?
      h.content_tag(:p, )
    else

    end
  end

  def has_gpa
    if model.student?
      h.content_tag(:p, )
    else

    end
  end

  def has_total_recieved
    if model.student?
      h.content_tag(:p, )
    else

    end
  end

end
