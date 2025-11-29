<template>
  <nav>
    <ul :class="$style.menu">
      <li
        v-for="item in HEADER_NAV"
        :class="[$style.li_element, isActive(item.id) && $style.active]"
        :key="item.id"
      >
        <NuxtLink
          :to="item.path"
          :class="$style.link"
          @click="setActive(item.id)"
        >
          <Icon :icon="item.icon" />
          <span>{{ item.name }}</span>
        </NuxtLink>
      </li>
    </ul>
  </nav>
</template>

<script setup lang="ts">
import { Icon } from "@iconify/vue";
import { HEADER_NAV } from "~/config/navigation";
import { useMenuSelection } from "@/composables/useMenuSelection";

const { setActive, isActive, activeID } = useMenuSelection();

console.log(activeID.value);
</script>

<style module lang="scss" src="./Nav.module.scss" />
