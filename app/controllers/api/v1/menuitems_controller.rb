module Api
    module v1
        class MenuItemsController < ApplicationController
            def index
                menuItems = MenuItem.find()

                return json: { status: 'success', message: 'Loaded menu items', data: menuItems}, status: ok
            end
        end
    end
end