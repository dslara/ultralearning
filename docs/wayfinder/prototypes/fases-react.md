# Protótipo: Fases e progressão por domínio (exemplo React)

> Throwaway. Asset do ticket Fases e progressão por domínio. Nada aqui é implementação.

## Contrato de capítulo (vale para todo capítulo)

Entrada: player declara Domain, técnica e duração. Nós do capítulo acendem apagados.
Saída: prova de saída completa carimba o capítulo. Sem prova, sem carimbo.
Cliffhanger: o carimbo revela a primeira cena do próximo capítulo, travada.
Sustain suave: nós carimbados ganham poeira visível com o tempo. Regar dá bônus, ignorar nunca tira nada.
Desbloqueio: carimbo abre o capítulo seguinte, uma técnica e uma quest narrativa.

## Capítulo 1: Ler e rodar

Nós: JSX como função de estado. Componente e props. Render condicional. Listas e keys.
Prova: montar tela de lista com filtro funcionando, sem tutorial aberto.
Cliffhanger: a lista funciona, mas o contador zera a cada filtro. O capítulo 2 mostra por quê.
Desbloqueia: técnica Pomodoro, quest diária de sessão.

## Capítulo 2: Estado e eventos

Nós: useState. Estado derivado. Eventos e formulários. Elevação de estado.
Prova: formulário com validação local e estado consistente entre dois componentes.
Cliffhanger: tudo funciona até o dado vir da rede. Tela pisca, dado some. O capítulo 3 mostra o ciclo.
Desbloqueia: técnica Active Recall, reviews SRS.

## Capítulo 3: Efeitos e ciclo

Nós: useEffect e dependências. Limpeza. Requisições e loading. Erro e retry.
Prova: tela que busca, mostra loading, erro com retry e nunca vaza listener.
Cliffhanger: a tela funciona, mas o código virou espaguete copiado em três lugares. O capítulo 4 cobra a conta.
Desbloqueia: técnica Feynman, forja de fraquezas.

## Capítulo 4: Composição e prova final

Nós: custom hooks. Composição sobre herança. Divisão de responsabilidade. Revisão do arco.
Prova final: extrair um hook reutilizável do espaguete do capítulo 3 e cobrir os 3 capítulos num mini app.
Carimbo do Domain: React base conquistado. Abre sustain do Domain e novo Domain.
