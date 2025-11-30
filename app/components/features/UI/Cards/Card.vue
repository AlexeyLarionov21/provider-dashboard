<style module lang="scss" src="./Card.module.scss" />

<template>
  <div :class="[$style.block, variant && $style[variant]]">
    <div :class="$style.label">{{ label }}</div>
    <div :class="$style.text">{{ text }}</div>
    <div :class="$style['button-sector']">
      <NuxtLink :class="$style.button" :to="link"> Подробнее </NuxtLink>
    </div>
  </div>
</template>

<script setup lang="ts">
interface Props {
  variant: string | undefined;
  label: string | undefined;
  text: string | undefined;
  link: string | undefined;
}

defineProps<Props>();
</script>
