class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} method should be implemented '#{correct_name}'"
  end
end
