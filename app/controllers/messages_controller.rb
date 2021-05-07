class MessagesController < ApplicationController
    def index
        @inbox=true
        @user = User.find(params[:user_id])
        if @user.receiver.messages.empty?
            @messages_received = "no messages received"
        else
            @messages_received = @user.receiver.messages
        end
        if @user.sender.messages.empty?
            @messages_sent = "no messages sent"
        else
            @messages_sent = @user.sender.messages
        end
        render :inbox
    end

    def outbox
        @inbox=false
        @user = User.find(params[:user_id])
        if @user.receiver.messages.empty?
            @messages_received = "no messages received"
        else
            @messages_received = @user.receiver.messages
        end
        if @user.sender.messages.empty?
            @messages_sent = "no messages sent"
        else
            @messages_sent = @user.sender.messages
        end
        render :inbox
    end
end
