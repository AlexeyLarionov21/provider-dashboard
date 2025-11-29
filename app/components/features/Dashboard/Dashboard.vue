<template>
  <div :class="$style.container">
    <CardInformation />
  </div>
</template>

<script setup lang="ts">
import CardInformation from "../UI/Cards/CardInformation.vue";
</script>

<style module lang="scss" src="./Dashboard.module.scss" />
