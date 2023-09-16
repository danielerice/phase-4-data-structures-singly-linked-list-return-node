require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end n
    if @head == nil
      return nil
    end

    if n < 1
      return nil
    end

    length = 1
    last_node = @head
    while last_node.next_node
      last_node = last_node.next_node
      length += 1
    end

    if n > length
      return nil
    end

    count = length-n
    last_node = @head
    while count > 0
      last_node = last_node.next_node
      count -= 1
    end
    return last_node.value

  end

end
