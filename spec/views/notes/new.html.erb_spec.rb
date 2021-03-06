require 'rails_helper'

RSpec.describe "notes/new", :type => :view do
  before(:each) do
    assign(:note, Note.new(
      :title => "MyString",
      :note => "MyText"
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "input#note_title[name=?]", "note[title]"

      assert_select "textarea#note_note[name=?]", "note[note]"
    end
  end
end
