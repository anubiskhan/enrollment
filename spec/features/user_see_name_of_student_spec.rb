require 'rails_helper'

describe 'user visits /students/:id' do
  it 'user sees the name of the student' do
    student = Student.new(name: 'Gargamel')

    visit '/student/:id'

    expect(page).to have_content(student.name)
  end
end
