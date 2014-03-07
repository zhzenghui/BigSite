require 'spec_helper'

describe "apps/show" do
  before(:each) do
    @app = assign(:app, stub_model(App,
      :name => "Name",
      :sku_number => "Sku Number",
      :language => "Language",
      :version_number => "Version Number",
      :copyright => "Copyright",
      :category => 1,
      :description => "Description",
      :keywords => "Keywords",
      :price => "9.99",
      :status => 2,
      :user_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Sku Number/)
    rendered.should match(/Language/)
    rendered.should match(/Version Number/)
    rendered.should match(/Copyright/)
    rendered.should match(/1/)
    rendered.should match(/Description/)
    rendered.should match(/Keywords/)
    rendered.should match(/9.99/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
