class JungleBeat
  attr_reader :list, :data
  def initialize(data = " ")
    @list = LinkedList.new
    @data = append(data)
  end

  def append(sound_string)
    sound_strings = sound_string.split
    sound_strings.each do |sound_string|
      list.append(sound_string)
    end
    list.to_string
  end

  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r 100 -v Daniel #{beats}`
  end

  def all
    list.to_string 
  end
end