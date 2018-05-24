require 'rails_helper'

RSpec.describe "doctors/edit", type: :view do
  before(:each) do
    @doctor = assign(:doctor, Doctor.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :gender => "MyString",
      :country => "MyString",
      :region => "MyString",
      :city => "MyString"
    ))
  end

  it "renders the edit doctor form" do
    render

    assert_select "form[action=?][method=?]", doctor_path(@doctor), "post" do

      assert_select "input[name=?]", "doctor[first_name]"

      assert_select "input[name=?]", "doctor[last_name]"

      assert_select "input[name=?]", "doctor[gender]"

      assert_select "input[name=?]", "doctor[country]"

      assert_select "input[name=?]", "doctor[region]"

      assert_select "input[name=?]", "doctor[city]"
    end
  end
end
