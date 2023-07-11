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
            
            list.append("doop")
            expect(list.head.data).to eq("doop")
            expect(list.head.next_node).to eq(nil)
            list.append("deep")
            expect(list.head.next_node.data).to eq("deep")
            list.append("plop")
        end
    end

    describe '#count method' do
        it "number of nodes in list" do
            list = LinkedList.new

            expect(list.count).to eq(0)
            list.append("doop")
            expect(list.count).to eq(1)
            list.append("deep")
            expect(list.count).to eq(2)
        end
    end

    describe '#string method' do
        it "generate a string of all data in list, spearate by spaces" do
            list = LinkedList.new
# require 'pry';binding.pry
            list.append("doop")
            expect(list.to_string).to eq("doop")
            list.append("deep")
            expect(list.to_string).to eq("doop deep")
        end
    end
end