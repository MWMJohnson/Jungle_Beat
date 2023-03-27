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
      # head is not nil anymore and we need to append a new node
      # i need a pointer or a tracker for the nodes
      # start pointer at head
      # we need to keep cycling until the pointer.next_node == nil.
      # create a new node and add data to that node.
      current_node = @head
      # require 'pry'; binding.pry
        while current_node.next_node != nil
          current_node = current_node.next_node
          # require 'pry'; binding.pry
        end
      current_node.next_node=(Node.new(data))
      data
      # require 'pry'; binding.pry
      # current_node = @head
      # while(!current_node.next_node.nil?)
      #   current_node = current_node.next_node
      # end
      # current_node.next_node = Node.new(data)
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
    beats = []
    current_node = @head
    if current_node.nil?
    beats
    else
      while current_node.next_node != nil
        beats << current_node.data
        current_node = current_node.next_node
      end
      beats << current_node.data
    end
    beats.join(" ")
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
    else
      while counter =! index
        counter +=1
        current_node = current_node.next_node
      end
      place_holder = current_node.next_node
      insert_node = Node.new(data)
      current_node.next_node = insert_node
      insert_node.next_node = place_holder
    end
    # place_holder = current_node.next_node
    # insert_node = Node.new(data)
    # current_node.next_node = insert_node
    # insert_node.next_node = placeholder
      # @head.next_node = Node.new(data)
      # @head = current_node
      # current_node = @head.next_node.next_node
      # data
    # else
    #   while(counter != index)
    #     counter += 1
    #     current_node = current_node.next_node
    #   end
    insert_node
    data
   
  end

  # def insert(index, data)
  #   current_node = @head
  #   counter = 1
  #   require 'pry'; binding.pry
  #   while(counter != index)
  #     counter += 1
  #     current_node = current_node.next_node
  #   # while(current_node.data != data)
  #     # if(counter == index)
  #     #   return 
  #     end
      
  #     # current_node = current_node.next_node
  #     # counter += 1
  #   end
  #   current.node
  #   data
  # end

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


end


