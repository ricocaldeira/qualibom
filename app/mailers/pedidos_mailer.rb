class PedidosMailer < ActionMailer::Base
  default from: "contato@ricardocaldeira.com"

  def registro_do_pedido(pedido)
    @pedido = pedido
    @pessoa = pedido.pessoa
    @produtos = pedido.produtos
    mail(to: @pessoa.email, subject: "Registro de pedido")
  end

  def email_para_cotar_produtos(pedido)
    @pedido = pedido
    @pessoa = pedido.pessoa
    @produtos = pedido.produtos
    mail to: "contato@ricardocaldeira.com", subject: "Um novo pedido foi feito"
  end
end