require 'test_helper'

class InsurancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insurance = insurances(:one)
  end

  test "should get index" do
    get insurances_url
    assert_response :success
  end

  test "should get new" do
    get new_insurance_url
    assert_response :success
  end

  test "should create insurance" do
    assert_difference('Insurance.count') do
      post insurances_url, params: { insurance: { insurance_id: @insurance.insurance_id, member_birth_date: @insurance.member_birth_date, member_first_name: @insurance.member_first_name, member_last_name: @insurance.member_last_name } }
    end

    assert_redirected_to insurance_url(Insurance.last)
  end

  test "should show insurance" do
    get insurance_url(@insurance)
    assert_response :success
  end

  test "should get edit" do
    get edit_insurance_url(@insurance)
    assert_response :success
  end

  test "should update insurance" do
    patch insurance_url(@insurance), params: { insurance: { insurance_id: @insurance.insurance_id, member_birth_date: @insurance.member_birth_date, member_first_name: @insurance.member_first_name, member_last_name: @insurance.member_last_name } }
    assert_redirected_to insurance_url(@insurance)
  end

  test "should destroy insurance" do
    assert_difference('Insurance.count', -1) do
      delete insurance_url(@insurance)
    end

    assert_redirected_to insurances_url
  end
end
