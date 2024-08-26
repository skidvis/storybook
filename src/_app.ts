import type { App } from 'vue';
import { createGtm } from '@gtm-support/vue-gtm';

export default (app: App) => {
  app.use(createGtm({
    id: 'GTM-MVTSKJTQ', 
    debug: true, // Whether or not display console logs debugs (optional)
  }),);
};