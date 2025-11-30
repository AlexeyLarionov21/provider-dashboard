<template>
  <NuxtLink :to="link" :class="$style.block">
    <Icon :icon="icon" />
    <span :class="$style.label">{{ label }}</span>
  </NuxtLink>
</template>

<style module lang="scss" src="./Button.module.scss" />

<script setup lang="ts">
import { Icon } from "@iconify/vue";

interface Props {
  icon: string;
  label: string;
  link: string;
}

defineProps<Props>();
</script>
