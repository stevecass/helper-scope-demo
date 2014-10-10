require 'rails_helper'

feature 'Cows' do
  context "on index homepage" do
    it "can see a list of cows" do
      cow = Cow.create({name:'Flossy', age:4})
      visit cows_path
      expect(page).to have_content(cow.name)
    end
  end

  context "on index homepage" do
    it "can show a single cow" do
      cow = Cow.create({name:'Flossy', age:4})
      visit cows_path
      click_link 'Show'
      expect(page).to have_content(cow.name)
    end
  end

end

