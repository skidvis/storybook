import { defineConfig } from 'astro/config';
import vue from "@astrojs/vue";

import tailwind from "@astrojs/tailwind";

// https://astro.build/config
export default defineConfig({
  integrations: [vue({ appEntrypoint: '/src/_app' }), tailwind()],
  site: 'https://www.mazereader.com',
});