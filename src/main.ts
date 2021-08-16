import { createApp } from 'vue'
import App from './App.vue'
import {router} from './route'
import './index.scss'

const app = createApp(App)

app.use(router)
app.mount('#app')
