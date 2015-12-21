module DNA
  SYMBOLS = %w('A', 'C', 'G', 'T')

  def self.count_nucleotides(dataset)
    sum = []
    SYMBOLS.each { |x| sum.push(dataset.count(x)) }
    sum * ' '
  end
end