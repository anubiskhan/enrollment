require 'rails_helper'

describe 'user edits a student' do
  it 'user sees student name has changed' do
    student = Student.create!(name: 'Gargamel')

    visit edit_student_path(student)

    fill_in 'student[name]', with: 'Lemagrag'
    click_on 'submit'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content('Lemagrag')
  end
end
