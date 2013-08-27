require 'rspec'

describe 'robot' do
  def run(board)
    `ruby ../leap_of_faith/Main.ruby #{board} `
  end

  it 'know when to go first' do

    puts run('-' * 9)

  end
end