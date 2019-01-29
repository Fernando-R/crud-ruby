require "application_system_test_case"

class CrudetesTest < ApplicationSystemTestCase
  setup do
    @crudete = crudetes(:one)
  end

  test "visiting the index" do
    visit crudetes_url
    assert_selector "h1", text: "Crudetes"
  end

  test "creating a Crudete" do
    visit crudetes_url
    click_on "New Crudete"

    fill_in "Email", with: @crudete.email
    fill_in "Nome", with: @crudete.nome
    click_on "Create Crudete"

    assert_text "Crudete was successfully created"
    click_on "Back"
  end

  test "updating a Crudete" do
    visit crudetes_url
    click_on "Edit", match: :first

    fill_in "Email", with: @crudete.email
    fill_in "Nome", with: @crudete.nome
    click_on "Update Crudete"

    assert_text "Crudete was successfully updated"
    click_on "Back"
  end

  test "destroying a Crudete" do
    visit crudetes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crudete was successfully destroyed"
  end
end
