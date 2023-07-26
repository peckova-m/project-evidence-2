require "application_system_test_case"

class PolicyholdersTest < ApplicationSystemTestCase
  setup do
    @policyholder = policyholders(:one)
  end

  test "visiting the index" do
    visit policyholders_url
    assert_selector "h1", text: "Policyholders"
  end

  test "should create policyholder" do
    visit policyholders_url
    click_on "New policyholder"

    fill_in "Birthdate", with: @policyholder.birthdate
    fill_in "City", with: @policyholder.city
    fill_in "Email", with: @policyholder.email
    fill_in "Name", with: @policyholder.name
    fill_in "Phone", with: @policyholder.phone
    fill_in "Street", with: @policyholder.street
    fill_in "Zip", with: @policyholder.zip
    click_on "Create Policyholder"

    assert_text "Policyholder was successfully created"
    click_on "Back"
  end

  test "should update Policyholder" do
    visit policyholder_url(@policyholder)
    click_on "Edit this policyholder", match: :first

    fill_in "Birthdate", with: @policyholder.birthdate
    fill_in "City", with: @policyholder.city
    fill_in "Email", with: @policyholder.email
    fill_in "Name", with: @policyholder.name
    fill_in "Phone", with: @policyholder.phone
    fill_in "Street", with: @policyholder.street
    fill_in "Zip", with: @policyholder.zip
    click_on "Update Policyholder"

    assert_text "Policyholder was successfully updated"
    click_on "Back"
  end

  test "should destroy Policyholder" do
    visit policyholder_url(@policyholder)
    click_on "Destroy this policyholder", match: :first

    assert_text "Policyholder was successfully destroyed"
  end
end
