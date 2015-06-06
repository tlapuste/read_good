require 'rails_helper'

RSpec.describe "interfaces/edit", type: :view do
  before(:each) do
    @interface = assign(:interface, Interface.create!(
      :read => false,
      :user => "MyString",
      :book => "MyString"
    ))
  end

  it "renders the edit interface form" do
    render

    assert_select "form[action=?][method=?]", interface_path(@interface), "post" do

      assert_select "input#interface_read[name=?]", "interface[read]"

      assert_select "input#interface_user[name=?]", "interface[user]"

      assert_select "input#interface_book[name=?]", "interface[book]"
    end
  end
end
