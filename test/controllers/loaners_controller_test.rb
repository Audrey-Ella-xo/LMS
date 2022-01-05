require "test_helper"

class LoanersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loaner = loaners(:one)
  end

  test "should get index" do
    get loaners_url
    assert_response :success
  end

  test "should get new" do
    get new_loaner_url
    assert_response :success
  end

  test "should create loaner" do
    assert_difference('Loaner.count') do
      post loaners_url, params: { loaner: { borrowed_amonunt: @loaner.borrowed_amonunt, duration: @loaner.duration } }
    end

    assert_redirected_to loaner_url(Loaner.last)
  end

  test "should show loaner" do
    get loaner_url(@loaner)
    assert_response :success
  end

  test "should get edit" do
    get edit_loaner_url(@loaner)
    assert_response :success
  end

  test "should update loaner" do
    patch loaner_url(@loaner), params: { loaner: { borrowed_amonunt: @loaner.borrowed_amonunt, duration: @loaner.duration } }
    assert_redirected_to loaner_url(@loaner)
  end

  test "should destroy loaner" do
    assert_difference('Loaner.count', -1) do
      delete loaner_url(@loaner)
    end

    assert_redirected_to loaners_url
  end
end
