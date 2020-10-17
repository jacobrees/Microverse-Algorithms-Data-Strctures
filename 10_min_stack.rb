# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  def initialize
    @tail = nil
    @head = nil
  end

  def push(number)
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
      @tail = @head
    else
      head = @head
      head = head.next_node until head.next_node.nil?
      head.next_node = new_node
      @tail = head.next_node
    end
  end

  def pop
    if @head.nil?
      'There are no more elements in the stack'
    else
      if @head.next_node.nil?
        val = @head.value
        @tail = nil
        @head = @tail
        return val
      end
      tail = @tail.value
      head = @head

      head = head.next_node while head.next_node != @tail
      @tail = head
      head.next_node = nil
      tail
    end
  end

  def min
    if @head.nil?
      'Stack is empty'
    elsif @head.next_node.nil?
      head = @head
      head.value
    else
      head = @head
      @min = head.value
      until head.next_node.nil?
        @min = head.value if head.value < @min
        @min = head.next_node.value if head.next_node.value < @min
        head = head.next_node
      end
      @min
    end
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3
