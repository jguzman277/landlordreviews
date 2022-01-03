require "application_system_test_case"

class PropertyTypesTest < ApplicationSystemTestCase
  setup do
    @property_type = property_types(:one)
  end

  test "visiting the index" do
    visit property_types_url
    assert_selector "h1", text: "Property types"
  end

  test "should create property type" do
    visit property_types_url
    click_on "New property type"

    fill_in "Property type", with: @property_type.property_type
    click_on "Create Property type"

    assert_text "Property type was successfully created"
    click_on "Back"
  end

  test "should update Property type" do
    visit property_type_url(@property_type)
    click_on "Edit this property type", match: :first

    fill_in "Property type", with: @property_type.property_type
    click_on "Update Property type"

    assert_text "Property type was successfully updated"
    click_on "Back"
  end

  test "should destroy Property type" do
    visit property_type_url(@property_type)
    click_on "Destroy this property type", match: :first

    assert_text "Property type was successfully destroyed"
  end
end
