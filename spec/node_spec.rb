require 'rspec'
require './lib/node'

RSpec.describe Node do
    node = Node.new("plop")

    describe '#initialize' do
        it "exists" do
            node = Node.new("plop")

            expect(node).to be_an_instance_of(Node)
        end
    end

    describe '#data' do
        it "it has data" do
            node = Node.new("plop")

            expect(node.data).to eq("plop")
        end
    end

    describe '#next_node' do
         it "it moves to next node" do
             node = Node.new("plop")

             expect(node.next_node).to eq(nil)
        end
    end