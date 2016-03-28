class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    render layout: false
    @coupon = Coupon.find(params[:id])
  end
end
