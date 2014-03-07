require 'spec_helper'

describe "apps/index" do
  before(:each) do
    assign(:apps, [
      stub_model(App,
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
      ),
      stub_model(App,
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
      )
    ])
  end

  it "renders a list of apps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sku Number".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => "Version Number".to_s, :count => 2
    assert_select "tr>td", :text => "Copyright".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Keywords".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
