class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end

    def show
        @tweet = Tweet.find params[:id]
    end

    def new
        @tweet = Tweet.new
    end

    def create
        tweet = Tweet.new tweet_params
        tweet.user = current_user
        if tweet.save
            redirect_to tweet, notice: 'Tweet guardado con éxito'
        else
            render :new
        end
    end

    private
    def tweet_params
        params.require(:tweet).permit(:body)
    end
end