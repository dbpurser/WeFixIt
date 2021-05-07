class MessagesController < ApplicationController
    def index
        @inbox=true
        @user = User.find(params[:user_id])
        if @user.receiver.nil?
            @messages_recieved = "no messages recieved"
        else
            @messages_recieved = @user.reciever.messages
        end
        if @user.sender.nil?
            @messages_sent = "no messages sent"
        else
            @messages_sent = @user.sender.messages
        end
        render :inbox
    end

    def outbox
        @inbox=false
        @user = User.find(params[:user_id])
        if @user.receiver.nil?
            @messages_recieved = "no messages recieved"
        else
            @messages_recieved = @user.reciever.messages
        end
        if @user.sender.nil?
            @messages_sent = "no messages sent"
        else
            @messages_sent = @user.sender.messages
        end
        render :inbox
    end
end
