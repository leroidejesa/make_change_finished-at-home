require('rspec')
require('make_change')

describe('Fixnum#make_change') do
  it('tells you how much change you get back in as few coins as possible') do
    expect((78).make_change()).to(eq("3 quarters, 3 pennies"))
  end
end
