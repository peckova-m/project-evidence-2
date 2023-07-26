require "test_helper"

class PolicyholdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @policyholder = policyholders(:one)
  end

  test "should get index" do
    get policyholders_url
    assert_response :success
  end

  test "should get new" do
    get new_policyholder_url
    assert_response :success
  end

  test "should create policyholder" do
    assert_difference("Policyholder.count") do
      post policyholders_url, params: { policyholder: { birthdate: @policyholder.birthdate, city: @policyholder.city, email: @policyholder.email, name: @policyholder.name, phone: @policyholder.phone, street: @policyholder.street, zip: @policyholder.zip } }
    end

    assert_redirected_to policyholder_url(Policyholder.last)
  end

  test "should show policyholder" do
    get policyholder_url(@policyholder)
    assert_response :success
  end

  test "should get edit" do
    get edit_policyholder_url(@policyholder)
    assert_response :success
  end

  test "should update policyholder" do
    patch policyholder_url(@policyholder), params: { policyholder: { birthdate: @policyholder.birthdate, city: @policyholder.city, email: @policyholder.email, name: @policyholder.name, phone: @policyholder.phone, street: @policyholder.street, zip: @policyholder.zip } }
    assert_redirected_to policyholder_url(@policyholder)
  end

  test "should destroy policyholder" do
    assert_difference("Policyholder.count", -1) do
      delete policyholder_url(@policyholder)
    end

    assert_redirected_to policyholders_url
  end
end
