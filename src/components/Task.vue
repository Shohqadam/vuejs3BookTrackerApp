<template>
  <div
    v-on:click="$emit('toggle-reminder', task.id)"
    :class="[task.reminder ? 'reminder' : '', 'task']"
  >
    <h3>
      {{ task.text }}
      <i @click="$emit('delete-task', task.id)" class="fas fa-times"></i>
    </h3>
    <p>{{ task.day }}</p>
  </div>
</template>
<script>
export default {
  name: "Task",
  props: {
    task: Object,
  },
};
</script>
<style scoped>
.task {
  background: #f6f6f6;
  margin: 10px;
  padding: 10px 20px;
  cursor: pointer;
  border-left: 5px solid red;
}
.fas {
  color: red;
  padding: 10px;
}
.task.reminder {
  border-left: 5px solid green;
}
h3 {
  display: flex;
  align-items: center;
  justify-content: space-between;
}
</style>
