require "application_system_test_case"

class KproductsTest < ApplicationSystemTestCase
  setup do
    @kproduct = kproducts(:one)
  end

  test "visiting the index" do
    visit kproducts_url
    assert_selector "h1", text: "Kproducts"
  end

  test "creating a Kproduct" do
    visit kproducts_url
    click_on "New Kproduct"

    fill_in "Description", with: @kproduct.description
    fill_in "Image", with: @kproduct.image
    fill_in "Name", with: @kproduct.name
    fill_in "Price", with: @kproduct.price
    fill_in "Size", with: @kproduct.size
    click_on "Create Kproduct"

    assert_text "Kproduct was successfully created"
    click_on "Back"
  end

  test "updating a Kproduct" do
    visit kproducts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @kproduct.description
    fill_in "Image", with: @kproduct.image
    fill_in "Name", with: @kproduct.name
    fill_in "Price", with: @kproduct.price
    fill_in "Size", with: @kproduct.size
    click_on "Update Kproduct"

    assert_text "Kproduct was successfully updated"
    click_on "Back"
  end

  test "destroying a Kproduct" do
    visit kproducts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kproduct was successfully destroyed"
  end
end
