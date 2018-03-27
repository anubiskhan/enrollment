require 'rails_helper'

describe 'user edits a student' do
  it 'user sees student name has changed' do
    student = Student.create!(name: 'Gargamel')

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
