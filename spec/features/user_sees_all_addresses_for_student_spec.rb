require 'rails_helper'

describe 'user creates a new address' do
  it 'creates a new address associated with a given student' do
    student = Student.create!(name: 'Gargamel')

    visit new_student_address_path(student)

    fill_in 'address[description]', with: 'Garbage Pile'
    fill_in 'address[street]', with: 'Trash Lane'
    fill_in 'address[city]', with: 'Basura'
    fill_in 'address[state]', with: 'CO'
    fill_in 'address[zip_code]', with: 80233

    click_on "submit"

    visit new_student_address_path(student)

    fill_in 'address[description]', with: 'Total Pile'
    fill_in 'address[street]', with: 'Caby Lane'
    fill_in 'address[city]', with: 'Bara'
    fill_in 'address[state]', with: 'CA'
    fill_in 'address[zip_code]', with: 80222

    click_on "submit"

    expect(current_path).to eq(student_path(student))
    expect(page).to_not have_content('Garbage Pile')
    expect(page).to_not have_content('Basura')
    expect(page).to_not have_content('Total Pile')
    expect(page).to_not have_content('Caby Lane')
  end
end
