require 'rails_helper'

RSpec.describe "memos/edit", type: :view do
  before(:each) do
    @memo = assign(:memo, Memo.create!(
      :name => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit memo form" do
    render

    assert_select "form[action=?][method=?]", memo_path(@memo), "post" do

      assert_select "input#memo_name[name=?]", "memo[name]"

      assert_select "textarea#memo_content[name=?]", "memo[content]"
    end
  end
end
