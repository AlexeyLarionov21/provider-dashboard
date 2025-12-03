<template>
  <div class="page">
    <div :class="$style['login-page']">
      <div :class="$style['left-sector']">
        <img
          :class="$style['left-sector-image']"
          src="~/assets/images/wallpaper-preview.jpg"
        />
      </div>
      <div :class="$style['right-sector']">
        <div :class="$style.header">
          <h2>Номер и пароль указаны в вашем договоре</h2>
          <h3>Контакт-центр 8 (412) 2-345-678</h3>
        </div>
        <div :class="$style.title">
          <Icon icon="material-symbols:lock-outline" width="28" height="28" />
          <span>Личный кабинет</span>
        </div>
        <div class="input-group">
          <Input v-model="contractInput" />
          <Input v-model="passwordInput" type="password" placeholder="Пароль" />
        </div>
        <button>Enter</button>
      </div>
    </div>
  </div>
</template>

<style module lang="scss" src="./Login.module.scss" />

<script setup lang="ts">
import Input from "~/components/features/UI/Inputs/Input.vue";
import { Icon } from "@iconify/vue";
import { ref } from "vue";

const contractInput = ref("");
const passwordInput = ref("");

definePageMeta({
  layout: "empty",
});
</script>
