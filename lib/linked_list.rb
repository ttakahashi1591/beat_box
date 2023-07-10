class LinkedList
    attr_reader :head

    def initialize(head = nil)
        @head = head
    end

    def append(data)
        new_node = Node.new(data)
        if @head.nil?
            @head = new_node
        else
            current.node = @head
            current_node = current_node.next_node while current_node.next_node
            current_node.next_node = new_node
        end
    end
end