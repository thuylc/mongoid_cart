require 'rails_helper'

RSpec.describe "products/show", :type => :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "Name",
      :sku => "Sku",
      :stock => 1.5,
      :net_price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Sku/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end