require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do

    describe '#initialize' do
        it "exists" do
            list = LinkedList.new

            expect(list).to be_an_instance_of(LinkedList)
        end
    end

    describe '#head attribute' do
        it "adds another head" do
            list = LinkedList.new

            expect(list.head).to eq(nil)
        end
    end

    describe '#append method' do
        it "add data to new node" do
            list = LinkedList.new
            
            list.append("plop")
            expect(list.head.data).to eq("plop")
            expect(list.head.next_node).to eq(nil)
            list.append("suu")
            expect(list.head.next_node.data).to eq("suu")
        end
    end

    describe '#prepend method' do
        it "add nodes to the begining of the list" do
            list = LinkedList.new
            
            list.append("plop")
            expect(list.head.data).to eq("plop")
            expect(list.head.next_node).to eq(nil)
            list.append("suu")
            expect(list.head.next_node.data).to eq("suu")
            list.prepend("dop")
            expect(list.prepend).to eq("dop")
            expect(list.prepend.next_node).to eq(nil)
        end
    end

    describe '#count method' do
        it "number of nodes in list" do
            list = LinkedList.new

            expect(list.count).to eq(0)
            list.append("plop")
            expect(list.count).to eq(1)
            list.append("suu")
            expect(list.count).to eq(2)
        end
    end

    describe '#string method' do
        it "generate a string of all data in list, spearate by spaces" do
            list = LinkedList.new

            list.append("plop")
            expect(list.to_string).to eq("plop")
            list.append("suu")
            expect(list.to_string).to eq("plop suu")
        end
    end
end