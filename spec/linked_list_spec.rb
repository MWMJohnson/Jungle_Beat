require "rspec"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do

  it "exists" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

  it "has readable attributes" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end

  it "adds a new node at the end of the linked list" do
    list = LinkedList.new
    expect(list.append("doop")).to eq("doop")
  end

  it "reads the value of the next node" do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.next_node).to eq(nil)
  end
  
  it "counts a node" do
    list = LinkedList.new
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it "converts a node to a single string" do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_string).to eq("doop")
  end

  it "exists" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    expect(list.append("doop")).to eq("doop")
    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end
  
  it "adds new nodes to the end of the linked list" do
    list = LinkedList.new
    list.append("doop")
    expect(list.append("deep")).to eq("deep")
    expect(list.head.next_node.data).to eq("deep")
  end

  it "counts nodes" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.count).to eq(2)
  end

  it "converts all nodes to one string" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.to_string).to eq("doop deep")
  end

  it "adds a new node at the beginning of the linked list" do
    list = LinkedList.new
    expect(list.append("plop")).to eq("plop")
    expect(list.to_string).to eq("plop")
    expect(list.append("suu")).to eq("suu")
    expect(list.prepend("dop")).to eq("dop")
  end

  it "displays the data of all nodes in a string" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.to_string).to eq("dop plop suu")
  end

  it "counts all nodes in a string" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.count).to eq(3)
  end


  it "inserts a new node" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.insert(1, "woo")).to eq("woo")
    expect(list.to_string).to eq("dop woo plop suu")
  end

  it "finds a node's position and from that position returns the number of elements requested" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  it "confirms if a node is included in the linked list" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.includes?("deep")).to be(true)
    expect(list.includes?("dep")).to be(false)
  end


  it "pops a node of the linked list" do 
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")
    expect(list.to_string).to eq("deep woo shi")
  end

end