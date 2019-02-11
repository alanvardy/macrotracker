require "application_system_test_case"

class WeighingsTest < ApplicationSystemTestCase
  setup do
    @weighing = weighings(:one)
  end

  test "visiting the index" do
    visit weighings_url
    assert_selector "h1", text: "Weighings"
  end

  test "creating a Weighing" do
    visit weighings_url
    click_on "New Weighing"

    fill_in "Day", with: @weighing.day
    fill_in "User", with: @weighing.user_id
    fill_in "Weight", with: @weighing.weight
    click_on "Create Weighing"

    assert_text "Weighing was successfully created"
    click_on "Back"
  end

  test "updating a Weighing" do
    visit weighings_url
    click_on "Edit", match: :first

    fill_in "Day", with: @weighing.day
    fill_in "User", with: @weighing.user_id
    fill_in "Weight", with: @weighing.weight
    click_on "Update Weighing"

    assert_text "Weighing was successfully updated"
    click_on "Back"
  end

  test "destroying a Weighing" do
    visit weighings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weighing was successfully destroyed"
  end
end
