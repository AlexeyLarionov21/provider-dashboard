<template>
  <div :class="$style.block">
    <Icon :icon="icon" />
    <span>{{ label }}</span>
  </div>
</template>

<style module lang="scss" src="./Button.module.scss" />

<script setup lang="ts">
import { Icon } from "@iconify/vue";

interface Props {
  icon: string;
  label: string;
}

defineProps<Props>();
</script>
