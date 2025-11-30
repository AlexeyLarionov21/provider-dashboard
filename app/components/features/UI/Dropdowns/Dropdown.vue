<template>
  <div :class="$style.dropdownHost">
    <button :class="$style['menu-collapse']" @click="emit('toggle')">
      <Icon
        :class="$style.icon"
        icon="material-symbols:menu-rounded"
        height="20"
        width="20"
      />
    </button>
    <nav v-if="visible" :class="$style.dropdown">
      <ul :class="$style['dropdown-content']">
        <li
          v-for="item in HEADER_NAV"
          :class="$style['dropdown-element']"
          :key="item.id"
        >
          <NuxtLink
            :to="item.path"
            :class="$style['dropdown-link']"
            @click="emit('close')"
          >
            <span>{{ item.name }}</span>
          </NuxtLink>
        </li>
      </ul>
    </nav>
  </div>
</template>

<style module lang="scss" src="./Dropdown.module.scss" />

<script setup lang="ts">
import { Icon } from "@iconify/vue";
import { HEADER_NAV } from "~/config/navigation";

const props = defineProps({
  visible: {
    type: Boolean,
    required: true,
  },
});

const emit = defineEmits<{
  (e: "toggle"): void;
  (e: "close"): void;
}>();
</script>
