class Task < Post

  def initialize
    super

    @due_date = Time.new
  end

  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажите дату в формате ДД.ММ.ГГГГ"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_ad.strftime("%Y_%m_%d_%H-%M-%S.txt")} \n\r \n\r"

    deadline = "Крайний срок #{@due_date}"

    return [deadline, @text, time_string]
  end

end