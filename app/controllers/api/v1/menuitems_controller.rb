module Api
    module V1
        class MenuitemsController < ApplicationController
            def index
                menuItems = MenuItem.all

                render json: { status: 'success', message: 'Loaded menu items', data: menuItems}, status: :ok
            end


            def show
                menuItem = MenuItem.find(params[:id])

                render json: { status: 'success', message: 'Loaded menu item', data: menuItem}, status: :ok
            end

            def create
                menuItem = MenuItem.new(menuitem_params)

                if menuItem.save
                    render json: { status: 'success', message: 'Saved menu item', data: menuItem}, status: :ok
                else
                    render json: { status: 'error', message: 'Menu not saved', data: menuItem.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                menuItem = MenuItem.find(params[:id])
                menuItem.destroy

                render json: { status: 'success', message: 'Deleted menu item', data: menuItem }, status: :ok
            end

            def update
                menuItem = MenuItem.find(params[:id])

                if menuItem.update(menuitem_params)
                    render json: { status: 'success', message: 'Updated menu item', data: menuItem}, status: :ok
                else
                    render json: { status: 'error', message: 'Menu not updated', data: menuItem.errors}, status: :unprocessable_entity
                end
            end


            private

            def menuitem_params
                params.permit(:name, :price, :img_name, :typeid)
            end
        end
    end
end