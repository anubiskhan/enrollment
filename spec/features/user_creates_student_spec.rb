require 'rails_helper'

describe 'user creates a student' do
  describe 'user fills out the form on students/new' do
    it 'it creates a new student' do
      visit new_student_path

      fill_in 'student[name]', with: 'Buster McRhymer'

      click_on "Create"

      expect(page).to have_content('Buster McRhymer')
    end
  end
end
