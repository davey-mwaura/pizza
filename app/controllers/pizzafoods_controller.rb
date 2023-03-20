class PizzafoodsController < ApplicationController
    def index
      render json: Pizzafood.all
    end
  end