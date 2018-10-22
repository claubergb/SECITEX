class InscricaoMailer < ApplicationMailer

  def realizada(inscricao)
    @inscricao = inscricao
    mail(to: @inscricao.participante.email, subject: '[IV SECITEX] Inscrição #'+inscricao.id.to_s+' em minicurso/oficina realizada com sucesso!')
  end

  def cancelada(inscricao)
    @inscricao = inscricao
    mail(to: @inscricao.participante.email, subject: '[IV SECITEX] Cancelamento da inscrição #'+inscricao.id.to_s+' em minicurso/oficina')
  end

  def atualizada(inscricao)
    @inscricao = inscricao
    mail(to: @inscricao.participante.email, subject: '[IV SECITEX] Inscrição #'+inscricao.id.to_s+' em minicurso/oficina atualizada com sucesso!')
  end

end
