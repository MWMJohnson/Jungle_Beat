class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
      data
    else
      current_node = @head
        while current_node.next_node != nil
          current_node = current_node.next_node
        end
      current_node.next_node=(Node.new(data))
      data
    end
  end

  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
      data
    else
      current_node = @head
      @head = Node.new(data)
      @head.next_node = current_node
      data
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

  def to_string
    beats = ""
    current_node = @head
    if current_node.nil?
    beats
    else
      while current_node.next_node != nil
        beats += "#{current_node.data} "
        current_node = current_node.next_node
      end
      beats += "#{current_node.data}"
    end
    beats
  end

  def insert(index, data)
    current_node = @head
    counter = 1
    place_holder = nil
    insert_node = nil
    if index == 0
      @head = Node.new(data)
      @head.next_node = current_node
      data
    elsif index == 1
      place_holder = current_node.next_node
      insert_node = Node.new(data)
      current_node.next_node = insert_node
      insert_node.next_node = place_holder
    else
      current_node = @head
      counter = 1
        until counter == index
          counter += 1
          current_node = current_node.next_node
        end
      place_holder = current_node.next_node
      insert_node = Node.new(data)
      current_node.next_node = insert_node
      insert_node.next_node = place_holder
    end
    insert_node
    data
  end

  def includes?(data)
    current_node = @head
    while(current_node != nil)
      if(current_node.data == data)
        return true
      end
      current_node = current_node.next_node
    end
    false
  end

  def find(index, range)
    data = ""
    current_node = @head
    counter = 0
    return false if current_node.next_node == nil
    if counter == index
      current_node = @head
    else
      until counter == index
        current_node = current_node.next_node
        counter += 1
      end
    end
    counter = 0
    until counter == range
      data += "#{current_node.data} "
      counter += 1
      current_node = current_node.next_node
    end
      data.rstrip
  end


end


