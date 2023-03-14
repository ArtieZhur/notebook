class Link < Post

  def initialize
    super # вызови такой же метод у родителя (Post)

    @url = ""
  end

  def read_from_console
    puts "Введите адрес ссылки"
    @url = STDIN.gets.chomp

    # И описание ссылки (одной строчки будет достаточно)
    puts "Напишите пару слов о том, куда ведёт ссылка"
    @text = STDIN.gets.chomp
  end

  def save
    # Метод save во многом повторяет метод родителя, но отличия существенны

    file = File.new(file_path, "w:UTF-8")
    time_string = @created_at.strftime("%Y.%m.%d, %H:%M")
    file.puts(time_string + "\n\r")

    # Помимо текста мы ещё сохраняем в файл адрес ссылки
    file.puts(@url)
    file.puts(@text)

    file.close

    # Напишем пользователю, что запись добавлена
    puts "Ваша ссылка сохранена"
  end

  def to_strings
    time_string = "Создано: #{@created_ad.strftime("%Y_%m_%d_%H-%M-%S.txt")} \n\r \n\r"

    deadline = "Крайний срок #{@due_date}"

    return [@url, @text, time_string]
  end

end