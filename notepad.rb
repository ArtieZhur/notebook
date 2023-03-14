require_relative 'post.rb'
require_relative 'link.rb'
require_relative 'task.rb'
require_relative 'memo.rb'

puts "Привет, я блокнот, надо меня автоматизировать"
puts "Что есть записать?"

choices = Post.post_type

choice = -1

until choice >= 0 && choice < choices.size

  choices.each_with_index do |type, index|
    puts "\t#{index + 1}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i
  choice -= 1
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Запись сохранена."












