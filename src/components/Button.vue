<template>
  <button v-on:click="clickBtn()" :style="{ background: BgColor }" class="btn">
    {{ BtnTitle }}
  </button>
</template>
<script>
export default {
  name: "Button",

  props: {
    BtnTitle: String,
    BgColor: String,
  },

  methods: {
    clickBtn() {
      this.$emit('toggle-add-task');
    },
  },
};
</script>
