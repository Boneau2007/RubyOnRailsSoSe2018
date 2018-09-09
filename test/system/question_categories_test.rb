require "application_system_test_case"

class QuestionCategoriesTest < ApplicationSystemTestCase
  setup do
    @question_category = question_categories(:one)
  end

  test "visiting the index" do
    visit question_categories_url
    assert_selector "h1", text: "Question Categories"
  end

  test "creating a Question categorie" do
    visit question_categories_url
    click_on "New Question Categorie"

    fill_in "Categorie", with: @question_category.categorie
    fill_in "Question", with: @question_category.question_id
    click_on "Create Question categorie"

    assert_text "Question categorie was successfully created"
    click_on "Back"
  end

  test "updating a Question categorie" do
    visit question_categories_url
    click_on "Edit", match: :first

    fill_in "Categorie", with: @question_category.categorie
    fill_in "Question", with: @question_category.question_id
    click_on "Update Question categorie"

    assert_text "Question categorie was successfully updated"
    click_on "Back"
  end

  test "destroying a Question categorie" do
    visit question_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question categorie was successfully destroyed"
  end
end
