require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
    list = LinkedList.new

    describe '#initialize' do
        it "exists" do
            list = LinkedList.new

            expect(list).to be_an_instance_of(LinkedList)
        end
    end
end
