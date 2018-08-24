require 'rails_helper'

describe "user sees all astronauts" do 
  describe "they visit /astronauts" do 
    it "displays all astronauts" do 
      astronaut_1 = Astronaut.create!(name: "Marvin", age: 41, job: "cook")
      astronaut_2 = Astronaut.create!(name: "MarciaMarciaMarcia", age: 59, job: "primadonna")
      
      visit '/astronauts' 
      
      expect(page).to have_content(astronaut_1.name)
      expect(page).to have_content(astronaut_2.name)
      
      expect(page).to have_content(astronaut_1.age)
      expect(page).to have_content(astronaut_2.age)
      
      expect(page).to have_content(astronaut_1.job)
      expect(page).to have_content(astronaut_2.job)
    end 
    
    it "displays all astronauts" do 
      astronaut_1 = Astronaut.create!(name: "Marvin", age: 40, job: "cook")
      astronaut_2 = Astronaut.create!(name: "MarciaMarciaMarcia", age: 60, job: "primadonna")
      
      visit '/astronauts' 
      
      expect(page).to have_content("Average Age: 50")
    end
  end 
end 
      