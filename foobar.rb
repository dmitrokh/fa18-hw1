class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    a = a.map {|each| each.to_i}
    a = a.map {|each| each+2}
    #a.delete_if &:odd? - another alternative?
    a.delete_if {|i| i%2==1}
    a.uniq
    a.delete_if {|i| i >= 10}
    sum = 0
    a.each {|c| sum += c} #or a.inject(0) {|sum, i|  sum + i } - another alternative?
    return sum
  end
end
