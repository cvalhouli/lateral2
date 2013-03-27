class SiteController < ApplicationController
  def about_us
  @title="About Us"
  end

  def asset_classes
@title="Asset Classes"
  end

  def how_it_works
@title="How It Works"
  end

  def contact_us
@title="Contact Us"
  end
end
