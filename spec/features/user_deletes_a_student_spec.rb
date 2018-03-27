require 'rails_helper'

describe 'user deletes a student' do
  it 'user sees student name is not on #index' do
    student = Student.create!(name: 'Gargamel')

    visit students_path

    click_on "Delete"

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content('Gargamel')
  end
end
