describe 'battle web app', type: :feature do

  it 'will ask players to enter their names' do
    visit('/')
    fill_in 'player_1_name', with: 'Lauren'
    fill_in 'player_2_name', with: 'Jodi'
    click_button 'Submit'
    expect(page).to have_content 'Lauren vs. Jodi'
  end
end