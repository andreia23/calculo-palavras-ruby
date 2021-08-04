require_relative 'lineAnalyzer'


arquivo = File.open("text.txt")
linhas = file.readlines.map(&:chomp)
file.close

array = []

linhas.each_with_index do |conteudo, i| 
    array.push(AnalisadorLinha.new(i+1, conteudo))   
end 

array.each {
    |analise| puts "Linha -  #{analise.num_linha} Palavra - #{analise.palavras_frequentes.keys} Frequencia - #{analise.frequencia} "
}