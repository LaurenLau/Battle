feature 'Hit points' do
  scenario "seeing another player's hit points" do
    sign_in_and_play 
    expect(page).to have_content 'Player2: 50HP'
  end
end
