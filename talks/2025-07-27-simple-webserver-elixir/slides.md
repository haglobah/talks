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
layout: header
---

::main::

<div class="font-light text-5xl mt-16 my-3 w-full">Beat Hagenlocher</div>

<div class="leading-8 opacity-80 w-full">
Software Architect <a href="https://active-group.de">@active group</a><br>

</div>

<div class="mt-32 w-full">
  <div class="flex gap-4 my-4 items-center">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" class="h-6 w-6" aria-hidden="true"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path></svg>
    <a href="https://github.com/haglobah" target="_blank">
      @haglobah
    </a>
  </div>
  <div class="flex gap-4 my-4 items-center">
    <svg class="size-6" fill="none" viewBox="0 0 64 57">
      <path fill="currentColor" d="M13.873 3.805C21.21 9.332 29.103 20.537 32 26.55v15.882c0-.338-.13.044-.41.867-1.512 4.456-7.418 21.847-20.923 7.944-7.111-7.32-3.819-14.64 9.125-16.85-7.405 1.264-15.73-.825-18.014-9.015C1.12 23.022 0 8.51 0 6.55 0-3.268 8.579-.182 13.873 3.805ZM50.127 3.805C42.79 9.332 34.897 20.537 32 26.55v15.882c0-.338.13.044.41.867 1.512 4.456 7.418 21.847 20.923 7.944 7.111-7.32 3.819-14.64-9.125-16.85 7.405 1.264 15.73-.825 18.014-9.015C62.88 23.022 64 8.51 64 6.55c0-9.818-8.578-6.732-13.873-2.745Z">
      </path>
    </svg>
    <a href="https://bsky.app/profile/beathagenlocher.com">
      @beathagenlocher.com
    </a>
  </div>
  <div class="flex gap-4 my-4 items-center">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6"><path stroke-linecap="round" stroke-linejoin="round" d="M13.19 8.688a4.5 4.5 0 0 1 1.242 7.244l-4.5 4.5a4.5 4.5 0 0 1-6.364-6.364l1.757-1.757m13.35-.622 1.757-1.757a4.5 4.5 0 0 0-6.364-6.364l-4.5 4.5a4.5 4.5 0 0 0 1.242 7.244"></path></svg>
    <a href="https://beathagenlocher.com/" target="_blank">
      https://beathagenlocher.com
    </a>
  </div>
</div>

<div class="flex items-center gap-2 absolute bottom-22 right-24">
  <Highlight>Notes + Slides:</Highlight>
  <svg class="ml-8" xmlns="http://www.w3.org/2000/svg" version="1.1" width="150px" height="150px" viewBox="0 0 248 248">
    <rect style="fill:rgb(255, 255, 255);fill-opacity:1" x="0" y="0" width="248" height="248" />
    <g id="elements">
      <path style="fill:rgb(0, 0, 0)" d="M 8,8 l 8,0 0,8 -8,0 z M 16,8 l 8,0 0,8 -8,0 z M 24,8 l 8,0 0,8 -8,0 z M 32,8 l 8,0 0,8 -8,0 z M 40,8 l 8,0 0,8 -8,0 z M 48,8 l 8,0 0,8 -8,0 z M 56,8 l 8,0 0,8 -8,0 z M 88,8 l 8,0 0,8 -8,0 z M 104,8 l 8,0 0,8 -8,0 z M 112,8 l 8,0 0,8 -8,0 z M 120,8 l 8,0 0,8 -8,0 z M 128,8 l 8,0 0,8 -8,0 z M 160,8 l 8,0 0,8 -8,0 z M 168,8 l 8,0 0,8 -8,0 z M 184,8 l 8,0 0,8 -8,0 z M 192,8 l 8,0 0,8 -8,0 z M 200,8 l 8,0 0,8 -8,0 z M 208,8 l 8,0 0,8 -8,0 z M 216,8 l 8,0 0,8 -8,0 z M 224,8 l 8,0 0,8 -8,0 z M 232,8 l 8,0 0,8 -8,0 z M 8,16 l 8,0 0,8 -8,0 z M 56,16 l 8,0 0,8 -8,0 z M 72,16 l 8,0 0,8 -8,0 z M 88,16 l 8,0 0,8 -8,0 z M 112,16 l 8,0 0,8 -8,0 z M 120,16 l 8,0 0,8 -8,0 z M 128,16 l 8,0 0,8 -8,0 z M 136,16 l 8,0 0,8 -8,0 z M 144,16 l 8,0 0,8 -8,0 z M 152,16 l 8,0 0,8 -8,0 z M 168,16 l 8,0 0,8 -8,0 z M 184,16 l 8,0 0,8 -8,0 z M 232,16 l 8,0 0,8 -8,0 z M 8,24 l 8,0 0,8 -8,0 z M 24,24 l 8,0 0,8 -8,0 z M 32,24 l 8,0 0,8 -8,0 z M 40,24 l 8,0 0,8 -8,0 z M 56,24 l 8,0 0,8 -8,0 z M 104,24 l 8,0 0,8 -8,0 z M 112,24 l 8,0 0,8 -8,0 z M 128,24 l 8,0 0,8 -8,0 z M 152,24 l 8,0 0,8 -8,0 z M 168,24 l 8,0 0,8 -8,0 z M 184,24 l 8,0 0,8 -8,0 z M 200,24 l 8,0 0,8 -8,0 z M 208,24 l 8,0 0,8 -8,0 z M 216,24 l 8,0 0,8 -8,0 z M 232,24 l 8,0 0,8 -8,0 z M 8,32 l 8,0 0,8 -8,0 z M 24,32 l 8,0 0,8 -8,0 z M 32,32 l 8,0 0,8 -8,0 z M 40,32 l 8,0 0,8 -8,0 z M 56,32 l 8,0 0,8 -8,0 z M 72,32 l 8,0 0,8 -8,0 z M 80,32 l 8,0 0,8 -8,0 z M 88,32 l 8,0 0,8 -8,0 z M 104,32 l 8,0 0,8 -8,0 z M 120,32 l 8,0 0,8 -8,0 z M 128,32 l 8,0 0,8 -8,0 z M 144,32 l 8,0 0,8 -8,0 z M 152,32 l 8,0 0,8 -8,0 z M 184,32 l 8,0 0,8 -8,0 z M 200,32 l 8,0 0,8 -8,0 z M 208,32 l 8,0 0,8 -8,0 z M 216,32 l 8,0 0,8 -8,0 z M 232,32 l 8,0 0,8 -8,0 z M 8,40 l 8,0 0,8 -8,0 z M 24,40 l 8,0 0,8 -8,0 z M 32,40 l 8,0 0,8 -8,0 z M 40,40 l 8,0 0,8 -8,0 z M 56,40 l 8,0 0,8 -8,0 z M 80,40 l 8,0 0,8 -8,0 z M 128,40 l 8,0 0,8 -8,0 z M 136,40 l 8,0 0,8 -8,0 z M 144,40 l 8,0 0,8 -8,0 z M 152,40 l 8,0 0,8 -8,0 z M 160,40 l 8,0 0,8 -8,0 z M 168,40 l 8,0 0,8 -8,0 z M 184,40 l 8,0 0,8 -8,0 z M 200,40 l 8,0 0,8 -8,0 z M 208,40 l 8,0 0,8 -8,0 z M 216,40 l 8,0 0,8 -8,0 z M 232,40 l 8,0 0,8 -8,0 z M 8,48 l 8,0 0,8 -8,0 z M 56,48 l 8,0 0,8 -8,0 z M 72,48 l 8,0 0,8 -8,0 z M 80,48 l 8,0 0,8 -8,0 z M 96,48 l 8,0 0,8 -8,0 z M 104,48 l 8,0 0,8 -8,0 z M 144,48 l 8,0 0,8 -8,0 z M 184,48 l 8,0 0,8 -8,0 z M 232,48 l 8,0 0,8 -8,0 z M 8,56 l 8,0 0,8 -8,0 z M 16,56 l 8,0 0,8 -8,0 z M 24,56 l 8,0 0,8 -8,0 z M 32,56 l 8,0 0,8 -8,0 z M 40,56 l 8,0 0,8 -8,0 z M 48,56 l 8,0 0,8 -8,0 z M 56,56 l 8,0 0,8 -8,0 z M 72,56 l 8,0 0,8 -8,0 z M 88,56 l 8,0 0,8 -8,0 z M 104,56 l 8,0 0,8 -8,0 z M 120,56 l 8,0 0,8 -8,0 z M 136,56 l 8,0 0,8 -8,0 z M 152,56 l 8,0 0,8 -8,0 z M 168,56 l 8,0 0,8 -8,0 z M 184,56 l 8,0 0,8 -8,0 z M 192,56 l 8,0 0,8 -8,0 z M 200,56 l 8,0 0,8 -8,0 z M 208,56 l 8,0 0,8 -8,0 z M 216,56 l 8,0 0,8 -8,0 z M 224,56 l 8,0 0,8 -8,0 z M 232,56 l 8,0 0,8 -8,0 z M 80,64 l 8,0 0,8 -8,0 z M 88,64 l 8,0 0,8 -8,0 z M 96,64 l 8,0 0,8 -8,0 z M 120,64 l 8,0 0,8 -8,0 z M 136,64 l 8,0 0,8 -8,0 z M 152,64 l 8,0 0,8 -8,0 z M 8,72 l 8,0 0,8 -8,0 z M 16,72 l 8,0 0,8 -8,0 z M 24,72 l 8,0 0,8 -8,0 z M 32,72 l 8,0 0,8 -8,0 z M 40,72 l 8,0 0,8 -8,0 z M 56,72 l 8,0 0,8 -8,0 z M 64,72 l 8,0 0,8 -8,0 z M 72,72 l 8,0 0,8 -8,0 z M 80,72 l 8,0 0,8 -8,0 z M 96,72 l 8,0 0,8 -8,0 z M 144,72 l 8,0 0,8 -8,0 z M 160,72 l 8,0 0,8 -8,0 z M 176,72 l 8,0 0,8 -8,0 z M 192,72 l 8,0 0,8 -8,0 z M 208,72 l 8,0 0,8 -8,0 z M 224,72 l 8,0 0,8 -8,0 z M 48,80 l 8,0 0,8 -8,0 z M 64,80 l 8,0 0,8 -8,0 z M 72,80 l 8,0 0,8 -8,0 z M 88,80 l 8,0 0,8 -8,0 z M 104,80 l 8,0 0,8 -8,0 z M 112,80 l 8,0 0,8 -8,0 z M 120,80 l 8,0 0,8 -8,0 z M 128,80 l 8,0 0,8 -8,0 z M 152,80 l 8,0 0,8 -8,0 z M 160,80 l 8,0 0,8 -8,0 z M 168,80 l 8,0 0,8 -8,0 z M 176,80 l 8,0 0,8 -8,0 z M 184,80 l 8,0 0,8 -8,0 z M 192,80 l 8,0 0,8 -8,0 z M 200,80 l 8,0 0,8 -8,0 z M 232,80 l 8,0 0,8 -8,0 z M 8,88 l 8,0 0,8 -8,0 z M 16,88 l 8,0 0,8 -8,0 z M 32,88 l 8,0 0,8 -8,0 z M 40,88 l 8,0 0,8 -8,0 z M 48,88 l 8,0 0,8 -8,0 z M 56,88 l 8,0 0,8 -8,0 z M 64,88 l 8,0 0,8 -8,0 z M 88,88 l 8,0 0,8 -8,0 z M 112,88 l 8,0 0,8 -8,0 z M 120,88 l 8,0 0,8 -8,0 z M 128,88 l 8,0 0,8 -8,0 z M 136,88 l 8,0 0,8 -8,0 z M 144,88 l 8,0 0,8 -8,0 z M 152,88 l 8,0 0,8 -8,0 z M 168,88 l 8,0 0,8 -8,0 z M 176,88 l 8,0 0,8 -8,0 z M 184,88 l 8,0 0,8 -8,0 z M 200,88 l 8,0 0,8 -8,0 z M 8,96 l 8,0 0,8 -8,0 z M 16,96 l 8,0 0,8 -8,0 z M 24,96 l 8,0 0,8 -8,0 z M 32,96 l 8,0 0,8 -8,0 z M 40,96 l 8,0 0,8 -8,0 z M 72,96 l 8,0 0,8 -8,0 z M 104,96 l 8,0 0,8 -8,0 z M 112,96 l 8,0 0,8 -8,0 z M 136,96 l 8,0 0,8 -8,0 z M 160,96 l 8,0 0,8 -8,0 z M 176,96 l 8,0 0,8 -8,0 z M 192,96 l 8,0 0,8 -8,0 z M 200,96 l 8,0 0,8 -8,0 z M 208,96 l 8,0 0,8 -8,0 z M 224,96 l 8,0 0,8 -8,0 z M 16,104 l 8,0 0,8 -8,0 z M 40,104 l 8,0 0,8 -8,0 z M 48,104 l 8,0 0,8 -8,0 z M 56,104 l 8,0 0,8 -8,0 z M 64,104 l 8,0 0,8 -8,0 z M 80,104 l 8,0 0,8 -8,0 z M 88,104 l 8,0 0,8 -8,0 z M 104,104 l 8,0 0,8 -8,0 z M 120,104 l 8,0 0,8 -8,0 z M 144,104 l 8,0 0,8 -8,0 z M 192,104 l 8,0 0,8 -8,0 z M 208,104 l 8,0 0,8 -8,0 z M 216,104 l 8,0 0,8 -8,0 z M 8,112 l 8,0 0,8 -8,0 z M 16,112 l 8,0 0,8 -8,0 z M 32,112 l 8,0 0,8 -8,0 z M 40,112 l 8,0 0,8 -8,0 z M 64,112 l 8,0 0,8 -8,0 z M 144,112 l 8,0 0,8 -8,0 z M 152,112 l 8,0 0,8 -8,0 z M 160,112 l 8,0 0,8 -8,0 z M 168,112 l 8,0 0,8 -8,0 z M 176,112 l 8,0 0,8 -8,0 z M 184,112 l 8,0 0,8 -8,0 z M 192,112 l 8,0 0,8 -8,0 z M 200,112 l 8,0 0,8 -8,0 z M 232,112 l 8,0 0,8 -8,0 z M 8,120 l 8,0 0,8 -8,0 z M 24,120 l 8,0 0,8 -8,0 z M 32,120 l 8,0 0,8 -8,0 z M 40,120 l 8,0 0,8 -8,0 z M 56,120 l 8,0 0,8 -8,0 z M 72,120 l 8,0 0,8 -8,0 z M 80,120 l 8,0 0,8 -8,0 z M 88,120 l 8,0 0,8 -8,0 z M 96,120 l 8,0 0,8 -8,0 z M 104,120 l 8,0 0,8 -8,0 z M 128,120 l 8,0 0,8 -8,0 z M 136,120 l 8,0 0,8 -8,0 z M 144,120 l 8,0 0,8 -8,0 z M 168,120 l 8,0 0,8 -8,0 z M 176,120 l 8,0 0,8 -8,0 z M 192,120 l 8,0 0,8 -8,0 z M 200,120 l 8,0 0,8 -8,0 z M 208,120 l 8,0 0,8 -8,0 z M 216,120 l 8,0 0,8 -8,0 z M 24,128 l 8,0 0,8 -8,0 z M 32,128 l 8,0 0,8 -8,0 z M 40,128 l 8,0 0,8 -8,0 z M 48,128 l 8,0 0,8 -8,0 z M 72,128 l 8,0 0,8 -8,0 z M 96,128 l 8,0 0,8 -8,0 z M 120,128 l 8,0 0,8 -8,0 z M 160,128 l 8,0 0,8 -8,0 z M 168,128 l 8,0 0,8 -8,0 z M 200,128 l 8,0 0,8 -8,0 z M 224,128 l 8,0 0,8 -8,0 z M 8,136 l 8,0 0,8 -8,0 z M 16,136 l 8,0 0,8 -8,0 z M 24,136 l 8,0 0,8 -8,0 z M 56,136 l 8,0 0,8 -8,0 z M 64,136 l 8,0 0,8 -8,0 z M 80,136 l 8,0 0,8 -8,0 z M 88,136 l 8,0 0,8 -8,0 z M 96,136 l 8,0 0,8 -8,0 z M 128,136 l 8,0 0,8 -8,0 z M 136,136 l 8,0 0,8 -8,0 z M 144,136 l 8,0 0,8 -8,0 z M 160,136 l 8,0 0,8 -8,0 z M 208,136 l 8,0 0,8 -8,0 z M 216,136 l 8,0 0,8 -8,0 z M 8,144 l 8,0 0,8 -8,0 z M 16,144 l 8,0 0,8 -8,0 z M 24,144 l 8,0 0,8 -8,0 z M 32,144 l 8,0 0,8 -8,0 z M 48,144 l 8,0 0,8 -8,0 z M 64,144 l 8,0 0,8 -8,0 z M 80,144 l 8,0 0,8 -8,0 z M 104,144 l 8,0 0,8 -8,0 z M 112,144 l 8,0 0,8 -8,0 z M 120,144 l 8,0 0,8 -8,0 z M 136,144 l 8,0 0,8 -8,0 z M 144,144 l 8,0 0,8 -8,0 z M 152,144 l 8,0 0,8 -8,0 z M 160,144 l 8,0 0,8 -8,0 z M 168,144 l 8,0 0,8 -8,0 z M 176,144 l 8,0 0,8 -8,0 z M 184,144 l 8,0 0,8 -8,0 z M 192,144 l 8,0 0,8 -8,0 z M 200,144 l 8,0 0,8 -8,0 z M 216,144 l 8,0 0,8 -8,0 z M 232,144 l 8,0 0,8 -8,0 z M 8,152 l 8,0 0,8 -8,0 z M 24,152 l 8,0 0,8 -8,0 z M 56,152 l 8,0 0,8 -8,0 z M 64,152 l 8,0 0,8 -8,0 z M 72,152 l 8,0 0,8 -8,0 z M 88,152 l 8,0 0,8 -8,0 z M 112,152 l 8,0 0,8 -8,0 z M 120,152 l 8,0 0,8 -8,0 z M 128,152 l 8,0 0,8 -8,0 z M 136,152 l 8,0 0,8 -8,0 z M 192,152 l 8,0 0,8 -8,0 z M 200,152 l 8,0 0,8 -8,0 z M 216,152 l 8,0 0,8 -8,0 z M 8,160 l 8,0 0,8 -8,0 z M 24,160 l 8,0 0,8 -8,0 z M 48,160 l 8,0 0,8 -8,0 z M 72,160 l 8,0 0,8 -8,0 z M 80,160 l 8,0 0,8 -8,0 z M 88,160 l 8,0 0,8 -8,0 z M 104,160 l 8,0 0,8 -8,0 z M 112,160 l 8,0 0,8 -8,0 z M 168,160 l 8,0 0,8 -8,0 z M 184,160 l 8,0 0,8 -8,0 z M 192,160 l 8,0 0,8 -8,0 z M 200,160 l 8,0 0,8 -8,0 z M 224,160 l 8,0 0,8 -8,0 z M 8,168 l 8,0 0,8 -8,0 z M 48,168 l 8,0 0,8 -8,0 z M 56,168 l 8,0 0,8 -8,0 z M 64,168 l 8,0 0,8 -8,0 z M 88,168 l 8,0 0,8 -8,0 z M 104,168 l 8,0 0,8 -8,0 z M 120,168 l 8,0 0,8 -8,0 z M 144,168 l 8,0 0,8 -8,0 z M 152,168 l 8,0 0,8 -8,0 z M 160,168 l 8,0 0,8 -8,0 z M 168,168 l 8,0 0,8 -8,0 z M 176,168 l 8,0 0,8 -8,0 z M 184,168 l 8,0 0,8 -8,0 z M 192,168 l 8,0 0,8 -8,0 z M 200,168 l 8,0 0,8 -8,0 z M 216,168 l 8,0 0,8 -8,0 z M 224,168 l 8,0 0,8 -8,0 z M 232,168 l 8,0 0,8 -8,0 z M 72,176 l 8,0 0,8 -8,0 z M 136,176 l 8,0 0,8 -8,0 z M 144,176 l 8,0 0,8 -8,0 z M 152,176 l 8,0 0,8 -8,0 z M 168,176 l 8,0 0,8 -8,0 z M 200,176 l 8,0 0,8 -8,0 z M 208,176 l 8,0 0,8 -8,0 z M 216,176 l 8,0 0,8 -8,0 z M 224,176 l 8,0 0,8 -8,0 z M 232,176 l 8,0 0,8 -8,0 z M 8,184 l 8,0 0,8 -8,0 z M 16,184 l 8,0 0,8 -8,0 z M 24,184 l 8,0 0,8 -8,0 z M 32,184 l 8,0 0,8 -8,0 z M 40,184 l 8,0 0,8 -8,0 z M 48,184 l 8,0 0,8 -8,0 z M 56,184 l 8,0 0,8 -8,0 z M 72,184 l 8,0 0,8 -8,0 z M 80,184 l 8,0 0,8 -8,0 z M 96,184 l 8,0 0,8 -8,0 z M 104,184 l 8,0 0,8 -8,0 z M 128,184 l 8,0 0,8 -8,0 z M 144,184 l 8,0 0,8 -8,0 z M 160,184 l 8,0 0,8 -8,0 z M 168,184 l 8,0 0,8 -8,0 z M 184,184 l 8,0 0,8 -8,0 z M 200,184 l 8,0 0,8 -8,0 z M 208,184 l 8,0 0,8 -8,0 z M 216,184 l 8,0 0,8 -8,0 z M 8,192 l 8,0 0,8 -8,0 z M 56,192 l 8,0 0,8 -8,0 z M 96,192 l 8,0 0,8 -8,0 z M 120,192 l 8,0 0,8 -8,0 z M 128,192 l 8,0 0,8 -8,0 z M 136,192 l 8,0 0,8 -8,0 z M 160,192 l 8,0 0,8 -8,0 z M 168,192 l 8,0 0,8 -8,0 z M 200,192 l 8,0 0,8 -8,0 z M 224,192 l 8,0 0,8 -8,0 z M 232,192 l 8,0 0,8 -8,0 z M 8,200 l 8,0 0,8 -8,0 z M 24,200 l 8,0 0,8 -8,0 z M 32,200 l 8,0 0,8 -8,0 z M 40,200 l 8,0 0,8 -8,0 z M 56,200 l 8,0 0,8 -8,0 z M 72,200 l 8,0 0,8 -8,0 z M 96,200 l 8,0 0,8 -8,0 z M 144,200 l 8,0 0,8 -8,0 z M 168,200 l 8,0 0,8 -8,0 z M 176,200 l 8,0 0,8 -8,0 z M 184,200 l 8,0 0,8 -8,0 z M 192,200 l 8,0 0,8 -8,0 z M 200,200 l 8,0 0,8 -8,0 z M 216,200 l 8,0 0,8 -8,0 z M 224,200 l 8,0 0,8 -8,0 z M 8,208 l 8,0 0,8 -8,0 z M 24,208 l 8,0 0,8 -8,0 z M 32,208 l 8,0 0,8 -8,0 z M 40,208 l 8,0 0,8 -8,0 z M 56,208 l 8,0 0,8 -8,0 z M 72,208 l 8,0 0,8 -8,0 z M 80,208 l 8,0 0,8 -8,0 z M 88,208 l 8,0 0,8 -8,0 z M 104,208 l 8,0 0,8 -8,0 z M 112,208 l 8,0 0,8 -8,0 z M 120,208 l 8,0 0,8 -8,0 z M 136,208 l 8,0 0,8 -8,0 z M 168,208 l 8,0 0,8 -8,0 z M 208,208 l 8,0 0,8 -8,0 z M 216,208 l 8,0 0,8 -8,0 z M 224,208 l 8,0 0,8 -8,0 z M 232,208 l 8,0 0,8 -8,0 z M 8,216 l 8,0 0,8 -8,0 z M 24,216 l 8,0 0,8 -8,0 z M 32,216 l 8,0 0,8 -8,0 z M 40,216 l 8,0 0,8 -8,0 z M 56,216 l 8,0 0,8 -8,0 z M 72,216 l 8,0 0,8 -8,0 z M 80,216 l 8,0 0,8 -8,0 z M 112,216 l 8,0 0,8 -8,0 z M 120,216 l 8,0 0,8 -8,0 z M 128,216 l 8,0 0,8 -8,0 z M 136,216 l 8,0 0,8 -8,0 z M 160,216 l 8,0 0,8 -8,0 z M 168,216 l 8,0 0,8 -8,0 z M 176,216 l 8,0 0,8 -8,0 z M 184,216 l 8,0 0,8 -8,0 z M 192,216 l 8,0 0,8 -8,0 z M 200,216 l 8,0 0,8 -8,0 z M 208,216 l 8,0 0,8 -8,0 z M 216,216 l 8,0 0,8 -8,0 z M 224,216 l 8,0 0,8 -8,0 z M 8,224 l 8,0 0,8 -8,0 z M 56,224 l 8,0 0,8 -8,0 z M 72,224 l 8,0 0,8 -8,0 z M 88,224 l 8,0 0,8 -8,0 z M 104,224 l 8,0 0,8 -8,0 z M 112,224 l 8,0 0,8 -8,0 z M 128,224 l 8,0 0,8 -8,0 z M 152,224 l 8,0 0,8 -8,0 z M 168,224 l 8,0 0,8 -8,0 z M 208,224 l 8,0 0,8 -8,0 z M 224,224 l 8,0 0,8 -8,0 z M 8,232 l 8,0 0,8 -8,0 z M 16,232 l 8,0 0,8 -8,0 z M 24,232 l 8,0 0,8 -8,0 z M 32,232 l 8,0 0,8 -8,0 z M 40,232 l 8,0 0,8 -8,0 z M 48,232 l 8,0 0,8 -8,0 z M 56,232 l 8,0 0,8 -8,0 z M 72,232 l 8,0 0,8 -8,0 z M 104,232 l 8,0 0,8 -8,0 z M 120,232 l 8,0 0,8 -8,0 z M 128,232 l 8,0 0,8 -8,0 z M 144,232 l 8,0 0,8 -8,0 z M 160,232 l 8,0 0,8 -8,0 z M 200,232 l 8,0 0,8 -8,0 z M 216,232 l 8,0 0,8 -8,0 z " /></g>
  </svg>
</div>

<img src="https://avatars.githubusercontent.com/u/83699832?s=400&u=02b324dc21d8da4d6f179daaf7e14f4b4d01cac5&v=4" class="rounded-full w-40 abs-tr mt-16 mr-24" alt="Beat Hagenlocher"/>
