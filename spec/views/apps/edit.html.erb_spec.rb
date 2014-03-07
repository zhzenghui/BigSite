require 'spec_helper'

describe "apps/edit" do
  before(:each) do
    @app = assign(:app, stub_model(App,
      :name => "MyString",
      :sku_number => "MyString",
      :language => "MyString",
      :version_number => "MyString",
      :copyright => "MyString",
      :category => 1,
      :description => "MyString",
      :keywords => "MyString",
      :price => "9.99",
      :status => 1,
      :user_id => 1
    ))
  end

  it "renders the edit app form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", app_path(@app), "post" do
      assert_select "input#app_name[name=?]", "app[name]"
      assert_select "input#app_sku_number[name=?]", "app[sku_number]"
      assert_select "input#app_language[name=?]", "app[language]"
      assert_select "input#app_version_number[name=?]", "app[version_number]"
      assert_select "input#app_copyright[name=?]", "app[copyright]"
      assert_select "input#app_category[name=?]", "app[category]"
      assert_select "input#app_description[name=?]", "app[description]"
      assert_select "input#app_keywords[name=?]", "app[keywords]"
      assert_select "input#app_price[name=?]", "app[price]"
      assert_select "input#app_status[name=?]", "app[status]"
      assert_select "input#app_user_id[name=?]", "app[user_id]"
    end
  end
end
