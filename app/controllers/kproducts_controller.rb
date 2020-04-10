class KproductsController < InheritedResources::Base

  private

    def kproduct_params
      params.require(:kproduct).permit(:name, :description, :image, :size, :price)
    end

end
