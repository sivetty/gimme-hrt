require 'rails_helper'

RSpec.describe "doctors/index", type: :view do
  before(:each) do
    assign(:doctors, [
      Doctor.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "Gender",
        :country => "Country",
        :region => "Region",
        :city => "City"
      ),
      Doctor.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "Gender",
        :country => "Country",
        :region => "Region",
        :city => "City"
      )
    ])
  end

  it "renders a list of doctors" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
