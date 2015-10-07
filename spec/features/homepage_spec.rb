require 'rails_helper'
include Capybara::Angular::DSL

feature "the homepage" do 
	scenario "a user can sign up via sign up button" do
		# wiki = Wiki.create(description: "drive slow homie, you never know homie")
		visit('/')
		expect(page).to have_link 
	end
end