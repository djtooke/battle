feature 'show testing is working on the home page' do
  scenario 'sentence appears' do
    visit('/')
    expect(page).to have_content("Testing infrastructure working!")
  end
end
