<template>
  <div :class="$style.container">
    <div :class="$style.group">
      <span :class="$style.symbol"
        ><span :class="$style.balance">659.49 </span>₽</span
      >
      <span>Баланс счета</span>
    </div>

    <div :class="$style.line">
      <div :class="$style['group']">
        <span :class="$style.number">№ 123-456-789</span>
        <span :class="$style.description">Лицевой счет</span>
      </div>
      <div :class="$style['group']">
        <span :class="$style.date">25.12.2025</span>
        <span :class="$style.description">Дата следующего платежа</span>
      </div>
    </div>
    <div :class="$style['line-action']">
      <!-- <Button ></Button> -->
    </div>
  </div>
</template>

<script setup lang="ts">
import Button from "../Buttons/Button.vue";
</script>

<style lang="scss" module src="./CardInformation.module.scss" />
