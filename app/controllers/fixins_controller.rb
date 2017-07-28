class FixinsController < ApplicationController

def new
@fixins = Fixin.all
end

end
