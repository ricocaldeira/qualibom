class PedidosController < ApplicationController
  # GET /pedidos/new
  # GET /pedidos/new.json
  def new
    @pedido = Pedido.new
    pessoa = @pedido.build_pessoa
    produto = @pedido.produtos.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pedido }
    end
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(params[:pedido])
    respond_to do |format|
      if @pedido.save
        PedidosMailer.registro_do_pedido(@pedido).deliver
        PedidosMailer.email_para_cotar_produtos(@pedido).deliver
        flash[:notice] = "Pedido enviado com sucesso!"
        format.html { redirect_to action: "new" }
        format.json { render json: @pedido, status: :created, location: @pedido }
      else
        format.html { render action: "new" }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end
end