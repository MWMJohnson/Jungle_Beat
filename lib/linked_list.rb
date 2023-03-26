class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      while(!current_node.next_node.nil?)
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
  end

  def count
    current_node = @head
    counter = 0
    until current_node.nil?
      current_node = current_node.next_node
      counter += 1
    end
    counter 
  end




end


