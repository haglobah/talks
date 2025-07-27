---
layout: header
---

::header::
<Heading>Web: The Internet</Heading>

::main::
<div class="my-6 w-full h-full grid grid-cols-2 gap-2 content-stretch">

<div class="flex flex-col h-full justify-between">
  <Highlight v-click="1">Computer</Highlight>
  <Highlight v-click="3">Ports</Highlight>
  <Highlight v-click="9">Internet Protocol Address (aka. IP)</Highlight>
</div>

<div class="flex flex-col h-full justify-between">
  <div v-click="2">
```shell
$ hostname
gondor
```
  </div>

  <div class="flex flex-row">
    <div class="flex basis-1/4 flex-col">
      <span v-click="4" class="text-xl font-mono">:80</span>
      <span v-click="5" class="text-xl font-mono">:443</span>
      <span v-click="6" class="text-xl font-mono">:22</span>
      <span v-click="7" class="text-xl font-mono">:25</span>
      <span v-click="8" class="text-xl font-mono">:53</span>
    </div>
    <div class="flex basis-1/2 flex-col">
      <div v-click="4" >Web (HTTP)</div>
      <div v-click="5" >Web (HTTPS)</div>
      <div v-click="6" >ssh</div>
      <div v-click="7" >Email (SMTP)</div>
      <div v-click="8" >Domains (DNS)</div>
    </div>
  </div>
<div>

  <div v-click="10" class="text-xl font-mono">127.0.0.1</div>
  <div v-click="11" class="text-xl font-mono">192.168.0.30</div>
  <div v-click="12">

```shell
$ ip addr show
...
```

  </div>

</div>
</div>
</div>
