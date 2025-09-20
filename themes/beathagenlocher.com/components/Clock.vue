<template>
  <div class="inline-block text-center font-mono bg-gray-900 text-green-400 p-5 rounded-lg shadow-lg shadow-green-400/30">
    <div class="text-4xl font-bold mb-2 drop-shadow-lg">{{ currentTime }}</div>
    <div class="text-lg opacity-80">{{ currentDate }}</div>
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
      this.currentTime = now.toLocaleTimeString()
      this.currentDate = now.toLocaleDateString()
    }
  }
}
</script>

