class UsersController < ApplicationController
  before_action :set_user, only:[ :show, :update, :destroy ]

  def index
    @users=User.all
  end

  def show
  end

  def create
    # インスタンスをモデルから作成
    @user = User.new( user_params )

    # strong paramterを介さない場合、ActiveModel::ForbiddenAttributesError:が発生する
    # @user = User.new( params[:user] )

    # インスタンスをDBに保存
    @user.save!

    # jsonとして値を返す
    render :show
  end

  def update
    binding.pry
    # 更新する
    @user.update!(user_params)

    # jsonで返す
    render :show
  end

  def destroy
    # 削除するaccountを見つける
    @user.destroy!

    render :show
  end

  private

    def user_params
      params.require(:user).permit(:name, :account, :email)
    end

    def set_user
      @user = User.find( params[:id] )
    end
end

# To-Do リレーショナルデータベースの作成
