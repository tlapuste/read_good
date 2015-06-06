require 'rails_helper'

RSpec.describe "interfaces/index", type: :view do
  before(:each) do
    assign(:interfaces, [
      Interface.create!(
        :read => false,
        :user => "User",
        :book => "Book"
      ),
      Interface.create!(
        :read => false,
        :user => "User",
        :book => "Book"
      )
    ])
  end

  it "renders a list of interfaces" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Book".to_s, :count => 2
  end
end
