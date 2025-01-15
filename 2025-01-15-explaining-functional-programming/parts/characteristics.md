---
layout: mono-header
---

::main::

<div v-click class="my-10 w-prose">

Functional Programming is a <em>programming style</em> in which one models the real world as a <em>pure function</em>.  
You can write a functional program in almost every language—all you need are <em>first class functions</em>. <em>Closures</em>, <em>immutable data structures</em> and <em>recursion</em> help, too.

</div>

<Highlight class="text-center">
  <span v-click>A functional program is more <em>declarative</em>, simpler and less <em>coupled</em></span> <em v-click>by default.</em>
</Highlight>

---
layout: mono-header
---

::header::

<Heading>3 | Characteristics</Heading>

::main::

<div class="grid grid-cols-3 w-full">
<v-clicks>
  <div class="flex flex-col">
    <Highlight class="text-sienna mb-4 text-center">Decoupled</Highlight>
    <!-- <Quote>Let's model everything as a sequence of steps!</Quote> -->
  </div>
  <div class="flex flex-col">
    <Highlight class="text-sienna mb-4 text-center">Simple</Highlight>
    <!-- <Quote>Let's model everything as an object!</Quote> -->
  </div>
  <div class="flex flex-col">
    <Highlight class="text-sienna mb-4 text-center">Declarative</Highlight>
    <!-- <Quote>Let's model everything as a (pure) function!</Quote> -->
  </div>
</v-clicks>
</div>

---
layout: mono-header
---

::header::

<Heading class="absolute" v-click.hide="'6'">3 | Characteristics: Coupling</Heading>
<Heading class="absolute" v-click="'6'" v-click.hide="'7'">3 | Characteristics: Simplicity</Heading>
<Heading class="absolute" v-click="'7'">3 | Characteristics: Declarative Style</Heading>

<div class="m-2"></div>

::main::

<div class="grid grid-cols-5 h-full w-full">
<v-clicks>
  <div class="flex flex-col">
    <Highlight class="text-sienna mb-4 text-center">Early days</Highlight>
    <img class="object-cover h-full rounded m-2" src="https://upload.wikimedia.org/wikipedia/commons/d/d3/Glen_Beck_and_Betty_Snyder_program_the_ENIAC_in_building_328_at_the_Ballistic_Research_Laboratory.jpg" />
  </div>
  <div class="flex flex-col h-full mx-1">
    <Highlight class="text-sienna mb-4 text-center">Assembly</Highlight>

```asm
pushq %rbp
movq %rsp, %rbp

movq $0, obs(%rip)

leaq obs(%rip), %rdi
call add_objs

leaq res(%rip), %rdi
leaq obs(%rip), %rsi
call calc

movq %rbp, %rsp
popq %rbp
ret
```

</div>
  <div class="flex flex-col mx-1">
    <Highlight class="text-sienna mb-4 text-center">C</Highlight>

```c
char *result = NULL;
t_large *obs = NULL;
add_objs(obs);
calc(result, obs);

return (result);
```

  </div>
  <div class="flex flex-col mx-1">
    <Highlight class="text-sienna mb-4 text-center">Java</Highlight>

```java
ObjectManager objectManager =
  new ObjectManager();
objectManager.addObjects();

Calculator calculator =
  new Calculator();
String result =
  calculator.calculate(
    objectManager.getObjects()
  );

System.out.println(result);
```

</div>
  <div class="flex flex-col ml-1">
    <Highlight class="text-sienna mb-4 text-center">Elixir</Highlight>

```elixir
large_objects =
  init_objects()
result =
  compute(
    large_objects,
    fn x -> x * x end)
```
  
  </div>
</v-clicks>
</div>

