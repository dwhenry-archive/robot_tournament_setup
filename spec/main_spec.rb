require 'rspec'

describe 'robot' do
  def run(board)
    path = File.dirname(__FILE__)
    `ruby #{path}/../leap_of_faith/Main.ruby #{board} `
  end

  it 'know when to go first' do

    res = run('-' * 9)
    res.should == "5\n"
  end

  it 'knows how to avoid taken squares' do
    run('0000-0000').should == "5\n"
  end

  it 'makes moves in current row' do
    v = run('--0-------')
    puts v
    ["1\n","2\n"].include?(v).should be_true
  end
end

