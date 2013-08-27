# ARGV.each do|a|
#   # puts "Argument: #{a}"
#   print ["rock","paper","scissors"][rand(3)]
# end
# puts ARGV
# board = ARGV.first
# board.split('').inspect

class Board
  def initialize(pieces)
    @positions = pieces.split('')
  end

  def move
    start_move ||row_move ||  rand_move
  end

  def row_move
    if check_row(@positions[0..2])
      return guess_row(@positions[0..2])
    end
    # if check_row(@positions[3..5])
    #   return guess_row(@positions[3..5]) + 3
    # end
    # if check_row(@positions[6..8])
    #   return guess_row(@positions[6..8]) + 6
    # end
  end

  def me
    c = @positions.reject do |p|
      p == '-'
    end.count

    if c % 2
      '0'
    else
      'x'
    end
  end

    def enemy
      'a'
    end

  def check_row(v)
    v.include?(me) && !v.include?(enemy)
  end

  def guess_row(v)
    rand_move(v)
  end

  def start_move
    '5' if @positions == '-' * 9
  end

  def rand_move(b=nil)

    b ||= @positions
    x = rand(b.size)
    while b[x] != '-'
      x = rand(b.size)
    end
    x
  end
end

puts Board.new(ARGV.first).move


# puts board
# puts rand(9)