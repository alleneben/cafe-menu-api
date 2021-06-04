module Api
    module V1
        class MenuitemsController < ApplicationController
            def index
                menuItems = MenuItem.all

                render json: { status: 'success', message: 'Loaded menu items', data: menuItems}, status: :ok
            end
        end
    end
end