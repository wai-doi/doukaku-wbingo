require 'pry'

def solve(input)
  parts = input.scan(/.{2}/)
  answer = bingo(parts)
  if answer.empty?
    'none'
  else
    answer.map{|a| a.sort.join}.sort.join(';')
  end
end

def bingo(parts)
  parts.combination(3).select do |combi|
    num_combi_bingo?(combi.map{|e| e[1]}.sort) && alphabet_combi_bingo?(combi.map{|e| e[0]}.sort)
  end
end

def num_combi_bingo?(three_nums)
  bingo_patterns = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
    ['1', '4', '7'],
    ['2', '5', '8'],
    ['3', '6', '9'],
    ['1', '5', '9'],
    ['3', '5', '7']
  ]
  bingo_patterns.include?(three_nums)
end

def alphabet_combi_bingo?(three_alphabets)
  bingo_patterns = [
    ['A', 'B', 'C'],
    ['D', 'E', 'F'],
    ['G', 'H', 'J'],
    ['A', 'D', 'G'],
    ['B', 'E', 'H'],
    ['C', 'F', 'J'],
    ['A', 'E', 'J'],
    ['C', 'E', 'G']
  ]
  bingo_patterns.include?(three_alphabets)
end
