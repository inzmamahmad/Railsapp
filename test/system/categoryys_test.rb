require "application_system_test_case"

class CategoryysTest < ApplicationSystemTestCase
  setup do
    @categoryy = categoryys(:one)
  end

  test "visiting the index" do
    visit categoryys_url
    assert_selector "h1", text: "Categoryys"
  end

  test "creating a Categoryy" do
    visit categoryys_url
    click_on "New Categoryy"

    fill_in "Name", with: @categoryy.name
    fill_in "User", with: @categoryy.user_id
    click_on "Create Categoryy"

    assert_text "Categoryy was successfully created"
    click_on "Back"
  end

  test "updating a Categoryy" do
    visit categoryys_url
    click_on "Edit", match: :first

    fill_in "Name", with: @categoryy.name
    fill_in "User", with: @categoryy.user_id
    click_on "Update Categoryy"

    assert_text "Categoryy was successfully updated"
    click_on "Back"
  end

  test "destroying a Categoryy" do
    visit categoryys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categoryy was successfully destroyed"
  end
end
