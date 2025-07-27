---
theme: ../../themes/beathagenlocher.com
title: Writing A Web Server | An Elixir Tutorial
info: |
  It took me years to understand Web Servers.
  You should be able to do it in one talk slot, and more.

  After this talk, you'll know:
  - How HTTP works
  - How to write a web server
  - How to write (some) Elixir
author: Beat Hagenlocher
class: text-center
fonts:
  sans: "Fira Sans"
  mono: "Fira Code"
transition: slide-left
mdc: true
---

<Title>{{ $frontmatter.title }}</Title>

<Subtitle>Request in, Response out.</Subtitle>

---
layout: mono-header
---
::header::
<Heading>Overview</Heading>

::main::
<div class="flex w-full justify-around items-start">
  <Point class="w-64 text-center">
    <Highlight>Web</Highlight>
  </Point>
  <Line/>
  <Point class="w-64 text-center">
    <Highlight>Server</Highlight>
  </Point>
  <Line/>
  <Point class="w-64 text-center">
    <Highlight>Elixir</Highlight>
  </Point>
</div>

---
src: ./parts/internet.md
---
---
src: ./parts/request-response.md
---
---
src: ./parts/http.md
---
---
layout: mono-header
---

::header::
<Heading>Elixir</Heading>
::main::

<Title>Demo</Title>

---
layout: mono-header
---

::header::
<Heading>Resources</Heading>

::main::

<div class="flex flex-row w-full items-center justify-start">
  <Highlight class="basis-1/5">Web</Highlight>

  - [Port (computer networking)](https://en.wikipedia.org/wiki/Port_(computer_networking)) & [List of port numbers](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers)
  - [IP address](https://en.wikipedia.org/wiki/IP_address) & [Internet Protocol](https://en.wikipedia.org/wiki/Internet_Protocol)
</div>

<div class="flex flex-row w-full items-center justify-start">
<Highlight class="basis-1/5">Server</Highlight>

- [HyperText Transfer Protocol](https://developer.mozilla.org/en-US/docs/Web/HTTP) & [HTTP Overview](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Overview)
- [It Took Me Years Until I Understood Web Servers—You Can Do It In 10 Minutes](https://beathagenlocher.com/it-took-me-years-until-i-understood-web-serversyou-can-do-it-in-10-minutes/)

</div>

<div class="flex flex-row w-full items-center justify-start">

<Highlight class="basis-1/5">Elixir</Highlight>

- [Elixir: Getting Started Guide](https://hexdocs.pm/elixir/introduction.html)

</div>

---
layout: mono-header
---

::main::

# Beat Hagenlocher

<div class="leading-8 opacity-80">
Software Architect <a href="https://active-group.de">@active group</a><br>

</div>

<div class="my-10 mx-4">
  <div class="flex gap-2 my-4 items-center">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" class="h-6 w-6" aria-hidden="true"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path></svg>
    <a href="https://github.com/haglobah" target="_blank">
      @haglobah
    </a>
  </div>
  <div class="flex gap-2 my-4 items-center">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6"><path stroke-linecap="round" stroke-linejoin="round" d="M13.19 8.688a4.5 4.5 0 0 1 1.242 7.244l-4.5 4.5a4.5 4.5 0 0 1-6.364-6.364l1.757-1.757m13.35-.622 1.757-1.757a4.5 4.5 0 0 0-6.364-6.364l-4.5 4.5a4.5 4.5 0 0 0 1.242 7.244"></path></svg>
    <a href="https://me.beathagenlocher.com" target="_blank">
      me.beathagenlocher.com
    </a>
  </div>
</div>

<img src="https://avatars.githubusercontent.com/u/83699832?s=400&u=02b324dc21d8da4d6f179daaf7e14f4b4d01cac5&v=4" class="rounded-full w-40 abs-tr mt-16 mr-12"/>
