require 'rails_helper'

RSpec.describe "memos/new", type: :view do
  before(:each) do
    assign(:memo, Memo.new(
      :name => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new memo form" do
    render

    assert_select "form[action=?][method=?]", memos_path, "post" do

      assert_select "input#memo_name[name=?]", "memo[name]"

      assert_select "textarea#memo_content[name=?]", "memo[content]"
    end
  end
end
