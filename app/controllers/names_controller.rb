class NamesController < InheritedResources::Base

  private

    def name_params
      params.require(:name).permit(:description, :image, :size, :price)
    end

end
