<template>
  <div>
    <div
      :class="[$style['input-box'], { [$style.isInvalid ?? '']: isInvalid }]"
    >
      <Icon
        :class="$style.icon"
        :icon="icon"
        :height="iconSize"
        :width="iconSize"
      />
      <input
        :class="$style['input']"
        :value="modelValue"
        @input="onInput"
        :placeholder="placeholder"
        :type="type"
      />
    </div>
    <p v-if="isInvalid" :class="$style.label">{{ textError }}</p>
  </div>
</template>

<style module lang="scss" src="./Input.module.scss" />

<script setup lang="ts">
import { Icon } from "@iconify/vue";

const iconSize = 24;

const props = withDefaults(
  defineProps<{
    modelValue: string;
    icon?: string;
    type?: string;
    placeholder?: string;
    isInvalid?: boolean;
    textError?: string;
  }>(),
  {
    type: "text",
    placeholder: "Номер договора",
    icon: "",
    isInvalid: false,
    textError: "Ошибка",
  }
);

const emit = defineEmits<{
  (e: "update:modelValue", value: string): void;
}>();

const onInput = (event: Event) => {
  const target = event.target as HTMLInputElement;
  emit("update:modelValue", target.value);
};
</script>
