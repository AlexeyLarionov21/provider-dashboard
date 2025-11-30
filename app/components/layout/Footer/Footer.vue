<template>
  <div :class="$style.container">
    <div :class="$style.left">
      <span :class="$style.title">Мы в соц.сетях</span>
      <div :class="$style['group-links']">
        <NuxtLink
          v-for="social in SOCIAL_LINKS"
          :to="social.link"
          :class="[$style.link, $style[social.style]]"
        >
          <Icon :class="$style.icon" :icon="social.icon" height="25" width="25"
        /></NuxtLink>
      </div>
    </div>
    <div :class="$style.right">
      <span>Текст какой-то</span>
    </div>
  </div>
</template>

<script setup lang="ts">
import { Icon } from "@iconify/vue";
import { SOCIAL_LINKS } from "@/config/social";
</script>

<style module lang="scss" src="./Footer.module.scss" />
