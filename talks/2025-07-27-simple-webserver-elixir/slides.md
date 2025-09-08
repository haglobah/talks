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
addons:
 - "@katzumi/slidev-addon-qrcode"
mdc: true
---

<Title>{{ $frontmatter.title }}</Title>

<Subtitle>Request in, Response out.</Subtitle>

---
layout: mono-header
---

::header::

<Heading>Link to Slides</Heading>

::main::
<div class="bg-white max-w-min my-10 mx-auto">
  <QRCode
    value="https://haglobah.github.io/talks/2025-07-27-simple-webserver-elixir"
    :width="400"
    :height="400"
    color="white"
  />
</div>

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

<div class="flex items-center gap-2 absolute bottom-22 right-27">
  <div class="bg-white">
    <QRCode
      class="rounded"
      value="https://beathagenlocher.com/me"
      :width="140"
      :height="140"
    />
  </div>
</div>

<img src="https://avatars.githubusercontent.com/u/83699832?s=400&u=02b324dc21d8da4d6f179daaf7e14f4b4d01cac5&v=4" class="rounded-full w-40 abs-tr mt-16 mr-24" alt="Beat Hagenlocher"/>
