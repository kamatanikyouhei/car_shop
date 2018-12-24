class CarsController < ApplicationController
def index
  @cars = Car.all
end
def new
  @car = Car.new
end

def create
  @car = Car.new(car_params)
  @car.save
  redirect_to @car, notice: "新しい車を登録しました。"
end

private

def car_params
  params.reqire(:car).permit(:name, :price, :release_date, :description)
end

end
