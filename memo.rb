require "csv"
puts "1(新規でメモを作成する) 2(既存のメモを編集する)"
file_name = gets.chomp

if file_name == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  p 'メモを記入してください'
  p '完了したらCtrl + D を押してください'
  CSV.open("#{file_name}.csv",'w') do |memo|
    content = readlines
    memo << content
  end
  
  elsif memo_type == "2"
    puts "編集したいファイル名入力してください"
    memo_type = gets.chomp
    CSV.open("#{memo_type}.csv",'w') do |csv|
      csv << ["2"]
      csv << ["#{memo_type}"]
    end
    
    str = memo_type
    puts "編集内容を記入してください"
    puts "完了後、Ctrl + Dを押してください"
    memo_type = $stdin.read
    CSV.open("#{str}.csv","a") do |csv|
      csv << ["#{memo_type}"]
    end
    
  else
    puts "エラー"
  end
    