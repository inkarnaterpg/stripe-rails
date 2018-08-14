module Stripe
  class EventsController < ::Stripe::ApplicationController
    include Stripe::EventDispatch
    respond_to :json

    def create
      @event = dispatch_stripe_event params
      render json: @event, location: nil
    end
  end
end
