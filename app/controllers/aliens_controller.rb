class AliensController < ApplicationController
  def home
    @aliens = Alien.all
  end
end
