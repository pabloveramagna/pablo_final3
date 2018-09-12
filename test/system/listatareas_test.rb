require "application_system_test_case"

class ListatareasTest < ApplicationSystemTestCase
  setup do
    @listatarea = listatareas(:one)
  end

  test "visiting the index" do
    visit listatareas_url
    assert_selector "h1", text: "Listatareas"
  end

  test "creating a Listatarea" do
    visit listatareas_url
    click_on "New Listatarea"

    fill_in "Desde", with: @listatarea.desde
    fill_in "Hasta", with: @listatarea.hasta
    fill_in "Nombre", with: @listatarea.nombre
    fill_in "Observacion", with: @listatarea.observacion
    fill_in "Realizado", with: @listatarea.realizado
    fill_in "Responsable", with: @listatarea.responsable
    click_on "Create Listatarea"

    assert_text "Listatarea was successfully created"
    click_on "Back"
  end

  test "updating a Listatarea" do
    visit listatareas_url
    click_on "Edit", match: :first

    fill_in "Desde", with: @listatarea.desde
    fill_in "Hasta", with: @listatarea.hasta
    fill_in "Nombre", with: @listatarea.nombre
    fill_in "Observacion", with: @listatarea.observacion
    fill_in "Realizado", with: @listatarea.realizado
    fill_in "Responsable", with: @listatarea.responsable
    click_on "Update Listatarea"

    assert_text "Listatarea was successfully updated"
    click_on "Back"
  end

  test "destroying a Listatarea" do
    visit listatareas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listatarea was successfully destroyed"
  end
end
