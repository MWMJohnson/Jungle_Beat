require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do

  it "exists" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

  it "displays the head node" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end

  it "adds new data to the head node" do
    list = LinkedList.new
    expect(list.append("doop")).to eq("doop")
  end

  it "checks the value of the next node" do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end
  
  it "counts a node" do
    list = LinkedList.new
    expect(list.count).to eq(0)
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it "converts a node to a string" do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_string).to eq("doop")
  end

  it "adds a new node" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    expect(list.append("doop")).to eq("doop")
    # expect(list).to eq(list)???????????????????????
    # expect(list.head).to eq(head)??????????????????
    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
    # expect(list.head.next_node).to eq(list.head.next_node)?????????????
  end

  it "counts multiple nodes" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    expect(list.count).to eq(0)
    expect(list.append("doop")).to eq("doop")
    expect(list.count).to eq(1)
    list.append("deep")
    expect(list.count).to eq(2)
  end

  it "converts all nodes to one string" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    list.append("doop")
    expect(list.to_string).to eq("doop")
    list.append("deep")
    expect(list.to_string).to eq("doop deep")
  end

  it "creates a new node assigned as the head node" do
    list = LinkedList.new
    expect(list.append("plop")).to eq("plop")
    expect(list.to_string).to eq("plop")
    expect(list.append("suu")).to eq("suu")
    expect(list.prepend("dop")).to eq("dop")
  end

  it "displays the data of all nodes in a string" do
    list = LinkedList.new
    expect(list.append("plop")).to eq("plop")
    expect(list.to_string).to eq("plop")
    expect(list.append("suu")).to eq("suu")
    expect(list.prepend("dop")).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
  end

  it "counts all nodes in a string" do
    list = LinkedList.new
    expect(list.append("plop")).to eq("plop")
    expect(list.to_string).to eq("plop")
    expect(list.append("suu")).to eq("suu")
    expect(list.prepend("dop")).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end


  it "inserts a new node" do
    list = LinkedList.new
    expect(list.append("plop")).to eq("plop")
    expect(list.append("suu")).to eq("suu")
    expect(list.prepend("dop")).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.insert(1, "woo")).to eq("woo")
  end

  it "displays all nodes in the correct order after inserting a new node" do
    list = LinkedList.new
    expect(list.append("plop")).to eq("plop")
    expect(list.append("suu")).to eq("suu")
    expect(list.prepend("dop")).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.insert(1, "woo")).to eq("woo")
    expect(list.to_string).to eq("dop woo plop suu")
  end

  it "finds a range of nodes displays their value as a string" do
    list = LinkedList.new
    expect(list.append("deep")).to eq("deep")
    expect(list.append("woo")).to eq("woo")
    expect(list.append("shi")).to eq("shi")
    expect(list.append("shu")).to eq("shu")
    expect(list.append("blop")).to eq("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  it "confirms if a node is included in the linked list" do
    list = LinkedList.new
    expect(list.append("deep")).to eq("deep")
    expect(list.append("woo")).to eq("woo")
    expect(list.append("shi")).to eq("shi")
    expect(list.append("shu")).to eq("shu")
    expect(list.append("blop")).to eq("blop")
    expect(list.includes?("deep")).to be(true)
    expect(list.includes?("dep")).to be(false)
  end

  it "confirms if a node is included in the linked list" do
    list = LinkedList.new
    expect(list.append("deep")).to eq("deep")
    expect(list.append("woo")).to eq("woo")
    expect(list.append("shi")).to eq("shi")
    expect(list.append("shu")).to eq("shu")
    expect(list.append("blop")).to eq("blop")
    expect(list.includes?("deep")).to be(true)
    expect(list.includes?("dep")).to be(false)
  end



end