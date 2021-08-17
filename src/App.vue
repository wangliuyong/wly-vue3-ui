<template>
  <router-view></router-view>
</template>

<script setup>
import { ref } from "@vue/reactivity";
import { provide } from "@vue/runtime-core";
import { router } from './route'

const width = document.documentElement.clientWidth;
const menuVisible = ref(width <= 500 ? false : true);
provide("menuVisible", menuVisible); // set
router.afterEach(() => {
  if (width <= 500) {
    menuVisible.value = false;
  }
});

</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
