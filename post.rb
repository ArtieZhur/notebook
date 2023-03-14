class Post

  def self.post_type
    [Memo, Link, Task]
  end

  #вызов всех дочерних классов
  def self.create(type_index)
    return post_type[type_index].new
  end

  def initialize
    @created_ad = Time.new
    @text = nil
  end

  def read_from_console
    #todo
  end

  def seve
    file = File.new(file_path, "w")

    for item in to_strings do
      file.puts(item)
    end
    file.close
  end

  def to_strings
    #todo
  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @created_ad.strftime("#{self.class.name}" \
                                     "_%Y_%m_%d_%H-%M-%S.txt")
    return current_path + "/" + file_name
  end
end