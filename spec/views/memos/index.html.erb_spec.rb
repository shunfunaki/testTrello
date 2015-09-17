require 'rails_helper'

RSpec.describe "memos/index", type: :view do
  before(:each) do
    assign(:memos, [
      Memo.create!(
        :name => "Name",
        :content => "MyText"
      ),
      Memo.create!(
        :name => "Name",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of memos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
