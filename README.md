# Wiki Bobikky
![Build Status](https://secure.travis-ci.org/colszowka/simplecov.png) ![Dependency Status](https://gemnasium.com/colszowka/simplecov.png) ![Code Climate](https://codeclimate.com/github/colszowka/simplecov.png)
=========

Created by Madelyn Kasula (madelynkasula), Mathew Liew (mliew21396), Wyeth Jackson (wyethjackson), & David Campbell (CicaDavid)

Wiki Bobikky is a no-frills, open source Wiki engine that offers basic Wiki functions and a simplistic text editor. Wiki Bobikky allows guests and member to search Wikis for articles of interest; members create and maintain articles within Wikis where they hold membership.

## Installation:
1. open a Terminal window and clone the repository to your local server system
2. run `bundle install` to update configuration
3. run `be rake db:setup` to build and seed database files
4. start up the Rails server: `rails s`   (Ctrl-C to shut down)
5. start a web browser and navigate to `http://localhost:3000/`
6. immediately, sign in as an admin (username `admin@admin.com` & password `admin`), or sign up as a user!


## How to use Wiki Bobikky
From the main page, any viewer can select any Wiki for further exploration. Each Wiki's home page lists articles that have been published to that Wiki. Members of a Wiki can also view unpublished articles. Members of a Wiki can create and edit articles in that Wiki. Members can also toggle the article's status between published/unpublished, and can also set/reset a flag to indicate an article "needs sources". From the Main page, viewers can search for an article by keywords in the article title or text; the search can examine all Wikis or viewers can restrict the search to specific Wikis they select from a pulldown menu.
