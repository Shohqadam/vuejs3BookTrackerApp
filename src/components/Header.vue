<template>
<div>
    <h1>{{title}}</h1>
    <Button @toggle-add-task="$emit('toggle-add-task')" :BtnTitle="showAddTask ? `&#215` : 'Add'" :BgColor="showAddTask ? 'crimson' : 'green'"/>
</div>

</template>

<script>
import Button from './Button';
export default ({
    name:"Header",
    components:{
        Button,
    },
    props:{
        title:String,
        showAddTask:Boolean
    }
})
</script>

<style scoped>
    div{
        display: flex;
        justify-content: space-between;
    }
</style>
