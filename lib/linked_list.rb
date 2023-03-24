class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  # def append(data)
  #   if @head
  #     @head,@head.next = Node.new(data), @head
  #   else
  #     @head = Node.new(data)
  #   end
  # end

  # def insert(target, data)
  #   node     = find(target)


  #   return unless node
  #   old_next = node.next
  #   node.next = Node.new(data)
  #   node.next.next = old_next
  # end

  # def find(data)
  #   node = @head

  #   return node if node.data == data
  #   return false if !node.next

  #   while (node = node.next)
  #     return if node.data == data
  #   end
  # end

  # def delete(data)
  #   if @head.data == data
  #     @head = @head.next
  #     return
  #   end

  #   node    = find_before(data)
  #   node.next = node.next.next
  # end

  # def find_before(data)
  #   node = @head

  #   return false if !node.next
  #   return node if node.next.data == data

  #   while (node = node.next)
  #     return if node.next.data == data
  #   end
  # end

  # def print
  #   node = @head
  #   puts node

  #   while (node = node.next)
  #     puts node
  #   end
  # end


end


