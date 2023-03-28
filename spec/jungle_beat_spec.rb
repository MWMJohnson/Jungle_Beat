require "rspec"
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  it "exists" do
    jb = JungleBeat.new
    expect(jb).to be_an_instance_of(JungleBeat) 
  end

  it "has readable attributes" do
    jb = JungleBeat.new
    expect(jb.list.head).to eq(nil)
  end

  it "adds new data" do
    jb = JungleBeat.new
    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
  end

  it "reads the data of the head node" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
  end

  it "reads the data of the head node's next node" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    expect(jb.list.head.next_node.data).to eq("doo")
  end

  it "counts the nodes" do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    expect(jb.count).to eq(6)
  end

  it "plays sounds" do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    expect(jb.count).to eq(6)
    expect(jb.list.count).to eq(6)
    jb.play #plays the sounds deep doo ditt woo hoo shu
  end

  it "can append a new data when initialized" do
    jb = JungleBeat.new("deep")
    expect(jb.list.head.data).to eq("deep")
  end
 
  it "returns all nodes as one string" do
    jb = JungleBeat.new("deep")
    expect(jb.all).to eq("deep")
  end

end