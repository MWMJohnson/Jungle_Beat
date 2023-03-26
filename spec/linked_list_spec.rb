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

  it "apppends new data to the end of the linked list" do
    list = LinkedList.new
    expect(list.append("doop").data).to eq("doop")
    expect(list.head.data).to eq("doop")
    list.append("wow")
    expect(list.head.data).to eq("doop")
    
  end

  it "checks the next node after appending" do
    list = LinkedList.new
    list.append("doop")
    # expect(list.append("doop").data).to eq("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
    list.append("wow")
    expect(list.head.next_node.data).to eq("wow")
    
  end
  
  it "counts the nodes in a linked list" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    expect(list.count).to eq(0)
    list.append("doop")
    expect(list.head.next_node).to eq(nil)
    expect(list.head.data).to eq("doop")
    expect(list.count).to eq(1)
    list.append("wow")
    expect(list.head.next_node.data).to eq("wow")
    expect(list.count).to eq(2)
    list.append("say")
    expect(list.count).to eq(3)
  end


end