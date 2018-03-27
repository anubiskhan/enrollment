require 'rails_helper'

describe 'user visits /students/:id' do
  it 'user sees the name of the student' do
    student = Student.create!(name: 'Gargamel')

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
