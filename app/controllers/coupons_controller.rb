class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end
    
    def new
    end

    def create
        washed_params = params.require(:coupon).permit(:coupon_code, :store)
        @coupon = Coupon.create(washed_params)
        redirect_to @coupon
    end
end
