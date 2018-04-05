feature 'allow players to input names and display them' do
  scenario 'fillable form appears' do
    visit ('/')
    expect(page).to have_content ("Please enter your name")
  end

  scenario 'form accepts name and displays it' do
    visit ('/')
    fill_in('player1_name', :with => 'Guybrush Threepwood' )
    find_button('Submit').click
    expect(page).to have_content ("Guybrush Threepwood")
  end
end

feature 'allow players to have 100 HP to start with' do
  scenario 'opening the play page, this is viewable' do
    visit '/play'
    expect(page).to have_content ("Player 1 HP: 100")
  end
end
