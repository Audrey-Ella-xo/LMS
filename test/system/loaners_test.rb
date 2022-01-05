require "application_system_test_case"

class LoanersTest < ApplicationSystemTestCase
  setup do
    @loaner = loaners(:one)
  end

  test "visiting the index" do
    visit loaners_url
    assert_selector "h1", text: "Loaners"
  end

  test "creating a Loaner" do
    visit loaners_url
    click_on "New Loaner"

    fill_in "Borrowed amonunt", with: @loaner.borrowed_amonunt
    fill_in "Duration", with: @loaner.duration
    click_on "Create Loaner"

    assert_text "Loaner was successfully created"
    click_on "Back"
  end

  test "updating a Loaner" do
    visit loaners_url
    click_on "Edit", match: :first

    fill_in "Borrowed amonunt", with: @loaner.borrowed_amonunt
    fill_in "Duration", with: @loaner.duration
    click_on "Update Loaner"

    assert_text "Loaner was successfully updated"
    click_on "Back"
  end

  test "destroying a Loaner" do
    visit loaners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loaner was successfully destroyed"
  end
end
