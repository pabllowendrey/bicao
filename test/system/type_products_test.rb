require "application_system_test_case"

class TypeProductsTest < ApplicationSystemTestCase
  setup do
    @type_product = type_products(:one)
  end

  test "visiting the index" do
    visit type_products_url
    assert_selector "h1", text: "Type Products"
  end

  test "creating a Type product" do
    visit type_products_url
    click_on "New Type Product"

    fill_in "Name", with: @type_product.name
    click_on "Create Type product"

    assert_text "Type product was successfully created"
    click_on "Back"
  end

  test "updating a Type product" do
    visit type_products_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_product.name
    click_on "Update Type product"

    assert_text "Type product was successfully updated"
    click_on "Back"
  end

  test "destroying a Type product" do
    visit type_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type product was successfully destroyed"
  end
end
