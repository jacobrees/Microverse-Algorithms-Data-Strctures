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
    @tail = nil
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
    return current.value
  end

  def get_node(index)
    noder = @head
    index.times do
      raise 'list is too short' if noder.nil?
      noder = noder.next_node
    end
    noder
  end
  
  def add_at(index, value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    elsif index.zero?
      temp_var = @head
      @head = new_node
      @head.next_node = temp_var
    else
      before = get_node(index - 1)
      ex_node = before.next_node
      before.next_node = new_node
      new_node.next_node = ex_node
    end
  end
  
  def remove(index)
    deleted = get_node(index)
    if index.zero?
      @head = deleted.next_node
    else
      prev = get_node(index - 1)
      nex = deleted.next_node
      prev.next_node = nex
    end
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)
puts list.get(1)
list.remove(0)
puts list.get(1)

puts list.get(2)
# => 11

puts list.get(0)
# => 5