require 'rails_helper'

describe 'user visits /students' do
  it 'user sees all student names' do
    student = Student.create!(name: 'Gargamel')
    student2 = Student.create!(name: 'Larthmark')
    student3 = Student.create!(name: 'Keith')

    visit '/students'

    expect(page).to have_content(student.name)
    expect(page).to have_content(student2.name)
    expect(page).to have_content(student3.name)
  end
end
