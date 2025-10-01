<template>
  <div class="font-mono text-cornflower p-5">
    <div class="text-6xl mb-2 drop-shadow-xl">{{ currentTime }}</div>
  </div>
</template>

<script>
export default {
  name: 'Clock',
  data() {
    return {
      currentTime: '',
      currentDate: '',
      timer: null
    }
  },
  mounted() {
    this.updateTime()
    this.timer = setInterval(this.updateTime, 1000)
  },
  beforeUnmount() {
    if (this.timer) {
      clearInterval(this.timer)
    }
  },
  methods: {
    updateTime() {
      const now = new Date()
      this.currentTime = now.toLocaleTimeString('de-DE')
    }
  }
}
</script>

