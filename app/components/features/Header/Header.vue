<template>
  <div :class="$style.container">
    <a href="/" :class="$style.logo">
      <img src="/assets/images/logo_s.png" alt="Logo" />
    </a>

    <div>
      <Nav />
    </div>

    <div :class="$style['right-sector']">
      <div :class="$style['support-number-block']">
        <Icon
          :class="$style['icon-call']"
          icon="fluent:call-20-filled"
          width="20"
          height="20"
        />
        <span>2-300-400</span>
      </div>
      <button :class="$style['logout-button']">
        <Icon
          :class="$style['logout-icon']"
          icon="material-symbols-light:logout"
          width="20"
          height="20"
        />
      </button>
    </div>
  </div>
</template>

<script setup lang="ts">
import { Icon } from "@iconify/vue";
import Nav from "./UI/Nav.vue";
const iconSize = 20;
</script>

<style module lang="scss" src="./Header.module.scss" />
