require "application_system_test_case"

class UserprofilesTest < ApplicationSystemTestCase
  setup do
    @userprofile = userprofiles(:one)
  end

  test "visiting the index" do
    visit userprofiles_url
    assert_selector "h1", text: "Userprofiles"
  end

  test "creating a Userprofile" do
    visit userprofiles_url
    click_on "New Userprofile"

    fill_in "Age", with: @userprofile.age
    fill_in "Country", with: @userprofile.country
    fill_in "Firstname", with: @userprofile.firstname
    fill_in "Name", with: @userprofile.name
    click_on "Create Userprofile"

    assert_text "Userprofile was successfully created"
    click_on "Back"
  end

  test "updating a Userprofile" do
    visit userprofiles_url
    click_on "Edit", match: :first

    fill_in "Age", with: @userprofile.age
    fill_in "Country", with: @userprofile.country
    fill_in "Firstname", with: @userprofile.firstname
    fill_in "Name", with: @userprofile.name
    click_on "Update Userprofile"

    assert_text "Userprofile was successfully updated"
    click_on "Back"
  end

  test "destroying a Userprofile" do
    visit userprofiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userprofile was successfully destroyed"
  end
end
