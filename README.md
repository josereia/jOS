# jOS

Nano Sistema Operacional escrito em Assembly. Esse é um projeto voltado para os estudos relacionados a programação de baixo nível portanto o código fonte conterá comentários e o repositório poderá conter arquivos auxiliares.

## Tecnologias

- Assembly
- NASM

## Ferramentas

- XXD
- Qemu
- Make

## Projeto

### Boot

- Legado(MBR)
- BIOS SERVICES

## Como rodar

### Requisitos

Antes de começar, instale os softwares abaixo em sua máquina:

- Linux:

  - GNU/Make

- MacOS:
  - Brew
  - GNU/Make

Com os requisitos cumpridos, basta executar os seguintes comandos para:

### Instalar as dependências

```bash
make linux-deps
```

ou

```bash
make macos-deps
```

### Construir imagem

```bash
make build
```

### Executar SO

```bash
make run
```

### Limpar o lixo

```bash
make clean
```

## Bibliografia

[blau_araujo/lost](https://codeberg.org/blau_araujo/lost)

[Construindo um OS do zero](https://youtube.com/playlist?list=PLXoSGejyuQGpIS8dyHzvdB1vs45ZWzOBe&si=6RhjPVCCqJf9ma_3)
