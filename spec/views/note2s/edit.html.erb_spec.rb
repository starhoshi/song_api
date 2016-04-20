require 'rails_helper'

RSpec.describe "note2s/edit", :type => :view do
  before(:each) do
    @note2 = assign(:note2, Note2.create!(
      :title => "MyString",
      :note => "MyText"
    ))
  end

  it "renders the edit note2 form" do
    render

    assert_select "form[action=?][method=?]", note2_path(@note2), "post" do

      assert_select "input#note2_title[name=?]", "note2[title]"

      assert_select "textarea#note2_note[name=?]", "note2[note]"
    end
  end
end
