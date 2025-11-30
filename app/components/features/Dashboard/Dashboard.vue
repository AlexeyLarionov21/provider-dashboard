<template>
  <div :class="$style.container">
    <CardInformation />
    <div :class="$style['card-sector']">
      <Card
        v-for="card in SALES_BLOCK"
        :label="card.label"
        :variant="card.variant"
        :text="card.text"
        :link="card.link"
      />
    </div>
  </div>
</template>

<script setup lang="ts">
import CardInformation from "../UI/Cards/CardInformation.vue";
import Card from "../UI/Cards/Card.vue";
import { SALES_BLOCK } from "@/config/text-card";
</script>

<style module lang="scss" src="./Dashboard.module.scss" />
