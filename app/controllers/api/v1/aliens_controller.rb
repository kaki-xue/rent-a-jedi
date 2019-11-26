class Api::V1::AliensController < Api::V1::BaseController
def index
    @aliens = Alien.all

end

def show


end
