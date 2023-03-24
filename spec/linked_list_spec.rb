require "./lib/node"
require "./lib/linked_list"

RSpec.describe LinkedList do

  it "exists" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

  it "displays the head node" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end













end