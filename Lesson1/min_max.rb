puts "Максимальное слово: #{IO.foreach('tekst.txt').max_by(&:length)}"
 puts "Минимальное слово: #{IO.foreach('tekst.txt').min_by(&:length)}"