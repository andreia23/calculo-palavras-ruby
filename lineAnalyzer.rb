class AnalisadorLinha
    attr_accessor :num_linha, :palavras_frequentes, :frequencia

    def initialize (num_linha, conteudo)
    @num_linha = num_linha
    @conteudo = conteudo
    @palavras_frequentes = gerarAnalise(@conteudo)
    end

    def gerarAnalise(conteudo)
        count_frequencia = Hash.new(0)
        maxFrequencia = 0

        palavras = conteudo.split(" ")

        palavras.each do |palavra|
            if count_frequencia.has_key? palavra
                count_frequencia[palavra] += 1
            else
                count_frequencia[palavra] = 1
            end
            if count_frequencia[palavra] > maxFrequencia
                maxFrequencia = count_frequencia[palavra]
            end
        end
        
        @frequencia = maxFrequencia

        count_frequencia.select {
        |_, value| value == maxFrequencia
    }
  end
end