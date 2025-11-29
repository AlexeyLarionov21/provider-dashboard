<template>
  <div class="page">
    <div class="container">
      <Header />
      <slot />
    </div>
  </div>
</template>

<script setup lang="ts">
import Header from "~/components/features/Header/Header.vue";
</script>
