require 'rails_helper'

RSpec.describe "note2s/index", :type => :view do
  before(:each) do
    assign(:note2s, [
      Note2.create!(
        :title => "Title",
        :note => "MyText"
      ),
      Note2.create!(
        :title => "Title",
        :note => "MyText"
      )
    ])
  end

  it "renders a list of note2s" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
