<template>
  <a
    :href="href"
    target="_blank"
    rel="noreferrer"
    class="group/outerlink"
  >
    <span
      :class="[
        'cursor-pointer font-medium group-hover/outerlink:text-cornflower-light transition duration-300 ease-in-out',
        className,
      ]"
    >
      <slot />
    </span>
    <span
      v-if="arrow"
      class="i-heroicons:arrow-right-20-solid relative left-[0.1em] top-[0.2em] text-cornflower group-hover/outerlink:text-cornflower-light transition-all duration-300 ease-in-out -rotate-45 inline-block group-hover/outerlink:translate-y-[0.08em] group-hover/outerlink:rotate-0 size-[1.2em]"
    />
  </a>
</template>

<script setup lang="ts">
interface Props {
  href: string
  arrow?: boolean
}

const props = withDefaults(defineProps<Props>(), {
  arrow: true
})
</script>
