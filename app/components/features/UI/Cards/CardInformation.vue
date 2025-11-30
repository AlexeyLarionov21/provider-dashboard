<template>
  <div :class="[$style.container, $style.block]">
    <!-- сумма и скорость -->
    <div :class="$style.header">
      <div :class="[$style.group, $style['group-left']]">
        <span :class="$style.symbol"
          ><span :class="$style.balance">659.49 </span>₽</span
        >
        <span :class="$style.description">Баланс счета</span>
      </div>
      <div :class="[$style.group, $style['group-right']]">
        <span :class="$style['speed-sector']">100 Мбит/с</span>
      </div>
    </div>
    <!-- сумма и скорость -->
    <!-- тариф и лицевой счет -->
    <div :class="$style.line">
      <div :class="[$style.group, $style['group-left']]">
        <span :class="$style.plan">«ТВИНТЕРНЕТ ВИП»</span>
        <span :class="$style.description">Тарифный план</span>
      </div>
      <div :class="[$style.group, $style['group-right']]">
        <span :class="$style.number">№ 123-456-789</span>
        <span :class="$style.description">Лицевой счет</span>
      </div>
    </div>
    <!-- тариф и лицевой счет -->
    <!-- блок с суммой и датой -->
    <div :class="$style.line">
      <div :class="[$style.group, $style['group-left']]">
        <span :class="$style.number">600 ₽</span>
        <span :class="$style.description">Ежемесячный платеж</span>
      </div>
      <div :class="[$style.group, $style['group-right']]">
        <span :class="$style.date">25.12.2025</span>
        <span :class="$style.description">Дата следующего платежа</span>
      </div>
    </div>
    <!-- блок с суммой и датой -->

    <div :class="$style.line">
      <div :class="[$style.group]">
        <span :class="$style.address"
          >Россия, край Приморский, г. Владивосток, ул Русская, д. 102, кв. 30,
          п. 1, этаж 8
        </span>
      </div>
    </div>
    <!-- кнопки -->
    <div :class="$style['line-action']">
      <Button
        v-for="button_item in PAYMENT_BTN"
        :key="button_item.id"
        :label="button_item.label"
        :icon="button_item.icon"
        :link="button_item.link"
      />
    </div>
    <!-- кнопки -->
  </div>
</template>

<script setup lang="ts">
import Button from "../Buttons/Button.vue";
import { PAYMENT_BTN } from "@/config/payment";
</script>

<style lang="scss" module src="./CardInformation.module.scss" />
