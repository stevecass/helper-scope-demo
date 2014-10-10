require 'rails_helper'

RSpec.describe Cow, :type => :model do
  it "can moo its own name" do
    cow_name = 'Ermintrude'
    c = Cow.create({name:cow_name, age:2})
    expect(c.moo).to eq "Moo from #{cow_name}"
  end
  
end
