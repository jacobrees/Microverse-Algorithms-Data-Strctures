class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @head = nil
  end
  
  def add(number)
    if @head.nil?
      @head = Node.new(number)
    else
      current = @head
      while current.next_node != nil
       current = current.next_node
      end
      current.next_node = Node.new(number)
    end
    
  end
  
  def get(index)
    current = @head
    index.times do
      current = current.next_node
    end
    current.value
  end
end


list = LinkedList.new
list.add(3)
list.add(5)
list.add(8)
list.add(7)
puts list.get(1)
puts list.get(0)
puts list.get(2)
puts list.get(3)