require './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    if @nameable.correct_name.length > 10
      @nameable.correct_name[0..9].to_s
    else
      @nameable.to_s
    end
  end
end
