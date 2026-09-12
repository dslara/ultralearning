# Protótipo: Fases e progressão por domínio (exemplo React)

> Throwaway. Asset do ticket Fases e progressão por domínio. Nada aqui é implementação.

## Chapter contract (vale para todo Chapter)

Entrada: player declara Domain, técnica e duração. Nodes do Chapter começam locked.
Saída: exit proof completa dá clear no Chapter. Sem proof, sem clear.
Cliffhanger: o clear revela a primeira cena do próximo Chapter, travada.
Sustain suave: cleared Nodes exibem decay visível com o tempo. Upkeep dá bônus, ignorar nunca tira nada.
Unlock: o clear abre o próximo Chapter, uma técnica e uma quest narrativa.

>Acho que nao deveriamos definir a duracao. Na minha opiniao uma sessao de estudos sem correr contra o relojo e mais tranquila e agradavel.

## Chapter 1: Ler e rodar

Nodes: JSX como função de estado. Componente e props. Render condicional. Listas e keys.
Exit proof: montar tela de lista com filtro funcionando, sem tutorial aberto.
Cliffhanger: a lista funciona, mas o contador zera a cada filtro. O Chapter 2 mostra por quê.
Unlock: técnica Pomodoro, quest diária de sessão.

## Chapter 2: Estado e eventos

Nodes: useState. Estado derivado. Eventos e formulários. Elevação de estado.
Exit proof: formulário com validação local e estado consistente entre dois componentes.
Cliffhanger: tudo funciona até o dado vir da rede. Tela pisca, dado some. O Chapter 3 mostra o ciclo.
Unlock: técnica Active Recall, reviews SRS.

## Chapter 3: Efeitos e ciclo

Nodes: useEffect e dependências. Limpeza. Requisições e loading. Erro e retry.
Exit proof: tela que busca, mostra loading, erro com retry e nunca vaza listener.
Cliffhanger: a tela funciona, mas o código virou espaguete copiado em três lugares. O Chapter 4 cobra a conta.
Unlock: técnica Feynman, forja de fraquezas.

## Chapter 4: Composição e prova final

Nodes: custom hooks. Composição sobre herança. Divisão de responsabilidade. Revisão do arco.
Final proof: extrair um hook reutilizável do espaguete do Chapter 3 e cobrir os 3 Chapters num mini app.
Domain clear: React base conquistado. Abre sustain do Domain e novo Domain.
