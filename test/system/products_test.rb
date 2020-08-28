require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit products_url
  #
  #   assert_selector "h1", text: "Product"
  # end
  test "visiting the index and see page title" do
    visit "/"

    assert_selector "h1", text: "Awesome Products"
  end

  test "visiting the index and product name" do
    skello = Product.create!(
      name:    "Skello",
      tagline: "Manage your staff calendar"
    )

    visit "/"

    assert_selector ".products", text: "Skello"

    skello.destroy
  end
end
