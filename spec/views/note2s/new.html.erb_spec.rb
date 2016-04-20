require 'rails_helper'

RSpec.describe "note2s/new", :type => :view do
  before(:each) do
    assign(:note2, Note2.new(
      :title => "MyString",
      :note => "MyText"
    ))
  end

  it "renders new note2 form" do
    render

    assert_select "form[action=?][method=?]", note2s_path, "post" do

      assert_select "input#note2_title[name=?]", "note2[title]"

      assert_select "textarea#note2_note[name=?]", "note2[note]"
    end
  end
end
