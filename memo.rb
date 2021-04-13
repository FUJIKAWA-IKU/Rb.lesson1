require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp.to_i


if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp.to_s + ".csv"
  File.open("#{file_name}", "w") do |text|
    puts "メモしたい内容を記入してください"
    memo_content = gets.chomp.to_s
    text.puts memo_content
  end

elsif memo_type == 2
  puts "編集したいファイル名を入力してください"
  file_name = gets.chomp.to_s + ".csv"
  File.open("#{file_name}", "a") do |text|
    puts "メモしたい内容を記入してください"
    memo_content = gets.chomp.to_s
    text.puts memo_content
  end

end



  

