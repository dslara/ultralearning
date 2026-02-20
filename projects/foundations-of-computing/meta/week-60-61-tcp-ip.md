# 📅 Semana 60-61: TCP/IP 🌐

## 🎯 Objetivo
Ao final destas duas semanas, você será capaz de:
- Entender as camadas do modelo TCP/IP
- Implementar cliente e servidor TCP
- Entender como DNS funciona
- Debugar problemas de rede

---

## ❓ Perguntas Guia

### Modelo de Rede
1. O que é o modelo OSI? Quantas camadas?
2. O que é o modelo TCP/IP? Quantas camadas?
3. Por que usamos camadas?
4. O que cada camada faz?
5. O que é encapsulamento?

### Camada de Rede (IP)
6. O que é endereço IP?
7. O que é IPv4 vs IPv6?
8. O que é subnet?
9. O que é roteamento?
10. O que é NAT?
11. O que é ICMP? (ping)

### Camada de Transporte
12. O que é porta?
13. O que é TCP?
14. O que é UDP?
15. Qual a diferença entre TCP e UDP?
16. Quando usar cada um?

### TCP Deep Dive
17. O que é three-way handshake?
18. Como TCP garante entrega confiável?
19. O que são ACKs e retransmissões?
20. O que é flow control?
21. O que é congestion control?
22. O que é TCP window?

### DNS
23. O que é DNS?
24. Como resolução DNS funciona?
25. O que são root servers, TLD, authoritative?
26. O que é DNS cache?
27. O que são records? (A, AAAA, CNAME, MX)

### Sockets
28. O que é socket?
29. O que é bind, listen, accept, connect?
30. Como implementar servidor TCP?
31. Como implementar cliente TCP?

---

## 📚 Recursos

### Leitura
| Recurso | Seção | Propósito |
|---------|-------|-----------|
| Computer Networking (Kurose) | Chapters 3-4 | TCP/IP |
| Beej's Guide to Network Programming | | Prático |
| | https://beej.us/guide/bgnet/ | |

### Ferramentas
| Recurso | Propósito |
|---------|-----------|
| `netcat` (nc) | Testar conexões |
| `tcpdump` | Capturar pacotes |
| Wireshark | Analisar pacotes |
| `dig`, `nslookup` | DNS queries |

---

## 📋 Entregas

### Semana 60: Teoria e TCP

**Dia 1: Modelo de Rede**
- [ ] Responder perguntas 1-5
- [ ] Desenhar modelo TCP/IP
- [ ] Mapear: onde HTTP, TCP, IP vivem?
- [ ] O que é encapsulamento?

**Dia 2: IP**
- [ ] Responder perguntas 6-11
- [ ] Descobrir seu IP local e público
- [ ] O que é 127.0.0.1?
- [ ] Usar ping e traceroute

**Dia 3: TCP vs UDP**
- [ ] Responder perguntas 12-16
- [ ] Listar aplicações TCP
- [ ] Listar aplicações UDP
- [ ] Por que DNS usa UDP?

**Dia 4: TCP Deep Dive**
- [ ] Responder perguntas 17-22
- [ ] Desenhar three-way handshake
- [ ] Capturar handshake com tcpdump
- [ ] O que significa cada flag?

**Dia 5: DNS**
- [ ] Responder perguntas 23-27
- [ ] Usar dig para query DNS
- [ ] Traçar resolução completa
- [ ] Criar entrada em /etc/hosts

### Semana 61: Programação de Rede

**Dia 1: Sockets Básico**
- [ ] Responder perguntas 28-31
- [ ] Em Go: criar servidor TCP echo
- [ ] Em Go: criar cliente TCP
- [ ] Testar comunicação

**Dia 2: Servidor Concorrente**
- [ ] Servidor que aceita múltiplos clientes
- [ ] Uma goroutine por conexão
- [ ] Broadcast para todos clientes
- [ ] Chat server simples

**Dia 3: Ferramentas**
- [ ] Usar netcat para testar
- [ ] Usar Wireshark para analisar
- [ ] Capturar seu próprio traffic
- [ ] Entender cada campo do pacote

**Dia 4: Projeto**
- [ ] Implementar "mini-redis" TCP
- [ ] Comandos: SET, GET, DEL
- [ ] Protocolo simples (texto)
- [ ] Múltiplos clientes

**Dia 5: Consolidação**
- [ ] Responder TODAS as perguntas guia
- [ ] Diagrama: pacote atravessando camadas
- [ ] Cards SRS para conceitos de rede
- [ ] Resumo: TCP vs UDP decision tree

---

## ✅ Critérios de Sucesso

### Você dominou se consegue:
1. [ ] Explicar as camadas TCP/IP
2. [ ] Implementar servidor TCP em Go
3. [ ] Usar tcpdump/Wireshark
4. [ ] Explicar three-way handshake
5. [ ] Resolver DNS manualmente

### TCP vs UDP

| Aspecto | TCP | UDP |
|---------|-----|-----|
| Conexão | Connection-oriented | Connectionless |
| Confiabilidade | Garantida | Best-effort |
| Ordem | Garantida | Não garantida |
| Overhead | Alto | Baixo |
| Uso | Web, email, file transfer | DNS, streaming, games |

### Portas Comuns

| Porta | Serviço |
|-------|---------|
| 22 | SSH |
| 80 | HTTP |
| 443 | HTTPS |
| 53 | DNS |
| 25 | SMTP |

### Red flags (precisa revisar):
- Não sabe diferença TCP/UDP
- Não entende portas
- Não consegue criar socket

---

## 🔄 Reflexão

### Abstração
_Como sockets abstraem a complexidade?_

### Debugging
_Como você debugaria problema de rede?_

### Próximo nível
_Como HTTP usa TCP?_

---

## ⏭️ Próximo

**Semana 62-63**: HTTP
- O que acontece quando você acessa um site?
- Como implementar servidor HTTP?
- O que são headers, methods, status codes?
