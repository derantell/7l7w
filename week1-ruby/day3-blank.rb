class NilClass
  def blank?
    true
  end
end

class String
  def blank?
    self.size == 0
  end
end

["foo", "", nil].each { |d| puts "#{d}: #{d.blank?}"}
