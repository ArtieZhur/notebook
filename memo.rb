class Memo < Post

  def read_from_console
    puts "Новая заметка (всё, что пишете до" \
    "строчки \"end\"):"
    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end
    @text.pop

  end

  def to_strings
    time_string = "Создано: #{@created_ad.strftime("%Y_%m_%d_%H-%M-%S.txt")} \n\r \n\r"

    return @text.unshift(time_string) # Метод добавл начало массива
  end
end