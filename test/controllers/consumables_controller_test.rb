require "test_helper"

class ConsumablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consumable = consumables(:one)
  end

  test "should get index" do
    get consumables_url, as: :json
    assert_response :success
  end

  test "should create consumable" do
    assert_difference("Consumable.count") do
      post consumables_url, params: { consumable: { brand: @consumable.brand, link: @consumable.link, name: @consumable.name, qty: @consumable.qty } }, as: :json
    end

    assert_response :created
  end

  test "should show consumable" do
    get consumable_url(@consumable), as: :json
    assert_response :success
  end

  test "should update consumable" do
    patch consumable_url(@consumable), params: { consumable: { brand: @consumable.brand, link: @consumable.link, name: @consumable.name, qty: @consumable.qty } }, as: :json
    assert_response :success
  end

  test "should destroy consumable" do
    assert_difference("Consumable.count", -1) do
      delete consumable_url(@consumable), as: :json
    end

    assert_response :no_content
  end
end
