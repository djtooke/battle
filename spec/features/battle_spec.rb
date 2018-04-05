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
