<template>
  <div class="input-box">
    <input
      :value="modelValue"
      @input="onInput"
      :placeholder="placeholder"
      :type="type"
    />
  </div>
</template>

<script setup lang="ts">
const props = withDefaults(
  defineProps<{
    modelValue: string;
    type?: string;
    placeholder?: string;
  }>(),
  {
    type: "text",
    placeholder: "Номер договора",
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
