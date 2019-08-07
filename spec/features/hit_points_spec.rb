feature 'Hit points' do
  scenario "seeing another player's hit points" do
    visit('/')
    fill_in :player_1_name, with: 'Lauren'
    fill_in :player_2_name, with: 'Jodi'
    click_button 'Submit'
    expect(page).to have_content 'Jodi: 20HP'
  end
end
