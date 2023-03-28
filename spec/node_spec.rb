require "./lib/node"

RSpec.describe Node do

  it "exists as an instance of Node" do
    node = Node.new("plop")
    expect(node).to be_an_instance_of(Node)
  end

  it "checks the data of the node" do 
    node = Node.new("plop")
    expect(node.data).to eq("plop")
  end

  it "checks the value of the next node" do 
    node = Node.new("plop")
    expect(node.next_node).to eq(nil)
  end
  
  it "changes the value of the next node" do
    node = Node.new("plop")
    new_node = Node.new("woo")
    node.next_node=(new_node)
    expect(node.next_node).to eq(new_node)
  end

end