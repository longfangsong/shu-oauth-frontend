<template>
    <v-app id="inspire">
        <v-content>
            <router-view></router-view>
        </v-content>
    </v-app>
</template>
<script lang="ts">
    import Vue from "vue";

    export default Vue.extend({
        name: "App",
    });
</script>
