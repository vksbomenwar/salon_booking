require "application_system_test_case"

class SalonsTest < ApplicationSystemTestCase
  setup do
    @salon = salons(:one)
  end

  test "visiting the index" do
    visit salons_url
    assert_selector "h1", text: "Salons"
  end

  test "creating a Salon" do
    visit salons_url
    click_on "New Salon"

    click_on "Create Salon"

    assert_text "Salon was successfully created"
    click_on "Back"
  end

  test "updating a Salon" do
    visit salons_url
    click_on "Edit", match: :first

    click_on "Update Salon"

    assert_text "Salon was successfully updated"
    click_on "Back"
  end

  test "destroying a Salon" do
    visit salons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Salon was successfully destroyed"
  end
end
