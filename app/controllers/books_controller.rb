class BooksController < ApplicationController
  def top

  end

  def new
    @list = Book.new
  end

  def index
    @list = Book.new
    @lists = Book.all
  end




  def create
      @list = Book.new(list_params)
    if @list.save

     flash[:notice] = "successfully"
     redirect_to book_path(@list.id)

    else

     @lists = Book.all
     render :index
    end

  end

  #   # １. データを新規登録するためのインスタンス作成
  #   list = Book.new(list_params)
  #   # ２. データをデータベースに保存するためのsaveメソッド実行
  #   list.save
  #   # ３. トップ画面へリダイレクト
  # redirect_to booklist_path(list.id)


  def show
    @list = Book.find(params[:id])
  end

  def edit
    flash[:notice] = "successfully"
    @list = Book.find(params[:id])
  end

  def update
    @list = Book.find(params[:id])

    if @list.update(list_params)

    redirect_to book_path(@list.id)
    else
    render :edit
    end
  end


  def destroy
    list = Book.find(params[:id])  # データ（レコード）を1件取得
    list.destroy  # データ（レコード）を削除
    flash[:notice] = "successfully"
    redirect_to books_path  # 投稿一覧画面へリダイレクト
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:book).permit(:title, :body)
  end
end
