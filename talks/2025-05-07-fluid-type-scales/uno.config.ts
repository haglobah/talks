import {
  defineConfig,
  transformerDirectives,
  presetWind,
  presetWebFonts,
  presetIcons,
 } from 'unocss'
import { presetFluid } from 'unocss-preset-fluid'

export default defineConfig({
  cli: {
    entry: [
      {
        patterns: [
          '**/*.html', '*.html',
        ],
        outFile: 'public/uno.css'
      }
    ], // CliEntryItem | CliEntryItem[]
  },
  transformers: [transformerDirectives()],
  shortcuts: [],
  theme: {
    colors: {
      'space-cadet': '#282D3F',
      cornflower: {
        light: '#97b6f0',
        DEFAULT: '#6E98E8',
      },
      sienna: {
        light: '#ecb1a2',
        mid: '#E28E78',
        DEFAULT: '#DC755C',
      },
    },
  },
  extendTheme: (theme) => {
    return {
      ...theme,
      breakpoints: {
        xs: '520px',
        ...theme.breakpoints
      }
    }
  },
  presets: [
    presetIcons(),
    presetWind(),
  ],
  // ...
})

