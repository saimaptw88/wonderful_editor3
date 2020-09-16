class UsersController < ApplicationController

  def index
    @users=Usere.all
  end

  def show
    @user=User.find(params[:id])
  end

  def create
    User.new(
      name: params[:name],
      account: params[:account],
      email: params[:email]
    )
  end

  def update
    # 更新するaccountを見つける
    @user=User.find(params[:id])
    # 更新する
    # 保存する
  end

  def delete
    # 削除するaccountを見つける
    @user=User.find(params[:id])
    # 削除する
  end

end
