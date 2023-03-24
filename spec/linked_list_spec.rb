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

  it "apppends new data" do
    list = LinkedList.new
    list.append("doop")
    #SOMETHING IS NOT RIGHT WITH LINE 21 `expect(list.head).to eq(list)`
    #ASK!!!!!!!!
    expect(list.head).to eq(list.head)
  end

  it "checks the next node after appending" do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.next_node).to eq(nil)
  end
  
  it "counts the nodes in a linked list" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    expect(list.head.next_node).to eq(nil)
    list.append("doop")
    expect(list.head.next_node).to eq(nil)
    expect(list.head.count).to eq(1)


  end


end