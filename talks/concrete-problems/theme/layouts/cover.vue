<script setup lang="ts">
import { computed } from 'vue'
import { handleBackground, resolveAssetUrl } from '../layoutHelper'

const props = defineProps({
  background: { default: undefined as string | undefined },
  image: { default: undefined as string | undefined },
})

const style = computed(() => handleBackground(props.background, false))
</script>

<template>
  <div class="slidev-layout cover" :style="style">
    <div class="cover-grid" :class="{ 'with-image': image }">
      <div class="cover-text">
        <slot />
      </div>
      <img
        v-if="image"
        class="cover-hero"
        :src="resolveAssetUrl(image)"
        alt=""
        aria-hidden="true"
      />
    </div>
  </div>
</template>

<style scoped>
.slidev-layout.cover {
  background: var(--paper);
  color: var(--ink);
}

.cover-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 3rem;
  align-items: center;
  height: 100%;
  width: 100%;
}

.cover-grid.with-image {
  grid-template-columns: 1.1fr 1fr;
}

.cover-text {
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.cover-hero {
  width: 100%;
  height: auto;
  max-height: 80vh;
  object-fit: contain;
}
</style>
