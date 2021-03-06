require 'rails_helper'

RSpec.describe "products/edit", :type => :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :product_title => "Title",
      :unit => "kg",
      :units => ["a", "b", "c"],
      :amount => 5,
      :in_stock => 1.5,
      :net_price => 1.5
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_product_title[name=?]", "product[product_title]"

      assert_select "input#product_in_stock[name=?]", "product[in_stock]"

      assert_select "input#product_net_price[name=?]", "product[net_price]"
    end
  end
end
