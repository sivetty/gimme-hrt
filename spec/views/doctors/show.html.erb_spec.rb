require 'rails_helper'

RSpec.describe "doctors/show", type: :view do
  before(:each) do
    @doctor = assign(:doctor, Doctor.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :gender => "Gender",
      :country => "Country",
      :region => "Region",
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/City/)
  end
end
