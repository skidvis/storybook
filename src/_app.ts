import type { App } from 'vue';
import VueGtag from "vue-gtag";

export default (app: App) => {
  app.use(VueGtag, {
    config: { id: "G-HVNSLBJ5S7" }
  });
};