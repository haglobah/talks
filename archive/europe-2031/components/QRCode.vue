<template>
  <QrcodeCanvas
    :value="value"
    :size="width"
    :foreground="foreground"
    :background="background"
    :margin="margin"
    level="H"
  />
</template>

<script lang="ts" setup>
import { QrcodeCanvas } from 'qrcode.vue';

const props = withDefaults(defineProps<{
  value: string
  width?: number
  height?: number
  color?: string
  margin?: number
}>(), {
  width: 200,
  color: '#000000',
  margin: 2,
});

const foreground = props.color.startsWith('#') ? props.color : `#${props.color}`;
const background = '#FFFFFF';
</script>
