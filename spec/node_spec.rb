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

  

end