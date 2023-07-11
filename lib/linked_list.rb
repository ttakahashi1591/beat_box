class LinkedList
    attr_reader :head,
                :next_node
    
    attr_accessor :next_node

    def initialize(head = nil)
        @head = head
        @next_node 
    end

    def append(data)
        new_node = Node.new(data)

        if @head.nil?
            @head = new_node
        else
            current_node = @head
            while !current_node.next_node.nil?
                current_node = current_node.next_node
            end
            current_node.next_node = new_node
        end
    end

    def prepend(data)
       new_node = Node.new(data)
        
        if @head.nil?
            @head = new_node
        else
           new_node.next_node = @head   # set next node value = head before setting next node as head node
           @head = new_node
        end
    end

    def count
       
        count = 0
        current_node = @head
        while !current_node.nil?
          count += 1
          current_node = current_node.next_node
        end
        count
    end

    def to_string
        current_node = @head
        string = ""

        while !current_node.nil?
            string << current_node.data + " "
            current_node = current_node.next_node
        end
       string.chop
    end

    def insert(index, data)
        new_node = Node.new(data)
        current_node = @head

        if index.zero? || @head.nil?
            prepend(data)
        else 
            (index - 1).times do
        break if current_node.next_node.nil?
        current_node = current_node.next_node
        end

        new_node.next_node = current_node.next_node
        current_node.next_node = new_node
        end
    end

    def find(start, count)
        current_node = @head
        string = ""
        index = 0

        while current_node && index < start + count
            string << current_node.data if index >= start
            current_node = current_node.next_node
            index += 1
        end
        string.join
    end
end 