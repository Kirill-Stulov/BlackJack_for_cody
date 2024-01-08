class Glider
  def lift
    puts "Rising"
  end
  
  def bank
    puts "Turning"
  end
end

# класс Nomad
class Nomad
  def initialize(glider)
    @glider = glider
  end

  # def do(action)
  #   @glider.send(action)
  # end

  # или так, если передаем метод с аргументами
  # def do2(action, argument = nil)
  #   if argument == nil
  #     @glider.send(action)
  #   else
  #     @glider.send(action, argument)
  #   end
  # end

  def do(action, argument = nil)
    argument == nil ? @glider.send(action) : @glider.send(action, argument)
  end
end

nomad = Nomad.new(Glider.new)
nomad.do('lift')
nomad.do('bank')

#################################################

# еще пример
# method converts array of data to exact data type
def relay(array, data_type)
  array.map {|el| el.send("to_#{data_type}") } # тут к to_ подставляется s или i, в зависимости от того что нам понадобится 
end

a = [1, 2, 3]
dt = 's'

result = relay(a, dt)
print result # в итоге каждый элемент массива будет приведен к строке

