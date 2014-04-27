class Array
  def my_inject(acc=nil)
    acc ||= self.first
    self[1..-1].each do |elem|
      acc = yield(acc,elem)
    end
    acc
  end
end