class PagesController < ApplicationController
  def home
  	@blogs = Blog.all
  	@skills = Skill.all 
  end

  def about
    @skills = Skill.all 
  end

  def contact
  end

  def news
  	@tweets = SocialTool.twitter_search
  end

end
