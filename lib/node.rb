class Node
    attr_reader :data,
                :next_node

    attr_accessor :next_node 

    def initialize(data)
        @data = data
        @next_node = nil
    end
end

# I created this class, Node, which contains two 
# attributes: data and next_node. Data will hold
# a sound and the next_node is equal to nil.

# The initialize method defines what needs to be 
# created when a new Node is called for. 