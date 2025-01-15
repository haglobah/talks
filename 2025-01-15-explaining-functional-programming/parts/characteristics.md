---
layout: mono-header
---

::main::

<div v-click class="my-10 w-prose">

Functional Programming is a <em>programming style</em> in which one models the real world as a pure function.  
You can write a functional program in almost every language—all you need are first class functions. Closures, immutable data and recursion help, too.

</div>

<Highlight class="text-center">
  <span v-click>Writing functionally makes programs more declarative, simpler and less coupled</span> <em v-click>by default.</em>
</Highlight>

---
layout: mono-header
---

::header::

<Heading>3 | Characteristics</Heading>

::main::

<div class="grid grid-cols-3 h-full w-full self-start">
<v-clicks>
  <div class="flex flex-col">
    <Highlight class="text-sienna mb-4 text-center">Uncoupled</Highlight>
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

<Heading>3 | Characteristics: Coupling</Heading>

::main::

<div class="grid grid-cols-5 h-full w-full">
<v-clicks>
  <div class="flex flex-col">
    <Highlight class="text-sienna mb-4 text-center">Early days</Highlight>
    <img class="object-cover h-full rounded-lg m-2" src="https://upload.wikimedia.org/wikipedia/commons/d/d3/Glen_Beck_and_Betty_Snyder_program_the_ENIAC_in_building_328_at_the_Ballistic_Research_Laboratory.jpg" />
  </div>
  <div class="flex flex-col">
    <Highlight class="text-sienna mb-4 text-center">Assembly</Highlight>
    <!-- <Quote>Let's model everything as a sequence of steps!</Quote> -->
  </div>
  <div class="flex flex-col">
    <Highlight class="text-sienna mb-4 text-center">C</Highlight>

```c
char *result = NULL;
t_large *objs = NULL;
add_objs(objs);
calc(result, objs);

printf("%s\n", result);
```

  </div>
  <div class="flex flex-col">
    <Highlight class="text-sienna mb-4 text-center">Java</Highlight>
    <!-- <Quote>Let's model everything as a (pure) function!</Quote> -->
  </div>
  <div class="flex flex-col">
    <Highlight class="text-sienna mb-4 text-center">Elixir</Highlight>
    
```elixir
x =
  compute(
    large_object,
    fn x -> x * x end)
```
    
  </div>
</v-clicks>
</div>

