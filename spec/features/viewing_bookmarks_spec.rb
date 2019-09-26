feature 'Viewing bookmarks' do
  scenario 'A user can see a list of bookmarks' do
  visit ('/bookmarks')
  expect(page).to have_content "https://www.skysports.com/"
  expect(page).to have_content "https://www.linkedin.com/"
  expect(page).to have_content "https://news.sky.com/"
  end 
end
