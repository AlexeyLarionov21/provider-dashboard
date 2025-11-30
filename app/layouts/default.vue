<template>
  <div class="page">
    <div class="container">
      <Header />
      <slot />
      <div class="footer">
        <Footer />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import Header from "~/components/features/Header/Header.vue";
import Footer from "~/components/layout/Footer/Footer.vue";
</script>
