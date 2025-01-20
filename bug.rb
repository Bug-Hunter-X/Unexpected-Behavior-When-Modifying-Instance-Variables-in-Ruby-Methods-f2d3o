```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def my_method
    @value += 1 # Potential error here
    return @value
  end
end

my_object = MyClass.new(5)
puts my_object.my_method # Output: 6
puts my_object.my_method # Output: 7 (unexpected behavior if @value is expected to remain 5)
```