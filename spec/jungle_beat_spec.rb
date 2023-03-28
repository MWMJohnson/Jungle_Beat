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

  it "appends new data" do
    jb = JungleBeat.new
    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
  end

  it "displays the data of the head node" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
  end

  it "displays the data of the head's next node" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    expect(jb.list.head.next_node.data).to eq("doo")
  end

  it "counts the nodes" do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    expect(jb.count).to eq(6)
  end

  it "CHANGE NAME" do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    expect(jb.count).to eq(6)
  end

  it "CHANGE NAME" do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    expect(jb.count).to eq(6)
    expect(jb.list.count).to eq(6)
  end

  it "plays the sounds in the string" do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    jb.play
  end

end