require 'rails_helper'

RSpec.describe "note2s/show", :type => :view do
  before(:each) do
    @note2 = assign(:note2, Note2.create!(
      :title => "Title",
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
