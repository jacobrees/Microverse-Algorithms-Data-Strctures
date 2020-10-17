class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class Queue
 def initialize 
   @head = nil
 end

  def add(number)
    node = Node.new(number)
    if @head.nil?
      @head = node
    else
      head = @head
      while head.next_node != nil
        head = head.next_node
      end
      head.next_node = node
    end
  end

  def remove
    if @head.nil?
      return -1
    elsif @head.next_node.nil?
      val = @head.value
      @head = nil
      return val
    else
      val = @head.value
      @head = @head.next_node
      return val
    end
  end

end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1