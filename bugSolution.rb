```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def my_method
    # Create a local copy of @value
    local_value = @value
    local_value += 1
    return local_value
  end
end

my_object = MyClass.new(5)
puts my_object.my_method # Output: 6
puts my_object.my_method # Output: 6 (Expected behavior, @value remains 5)
```