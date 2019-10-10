<template>
    <v-container class="fill-height" fluid>
        <v-row align="center" justify="center">
            <v-col cols="12" md="4" sm="8">
                <v-card class="elevation-12">
                    <v-toolbar color="primary" dark flat>
                        <v-toolbar-title>Login form</v-toolbar-title>
                        <div class="flex-grow-1"></div>
                    </v-toolbar>
                    <v-card-text>
                        <v-form action="http://10.10.0.35:30080/oauth/authorize" method="post" ref="form"></v-form>
                    </v-card-text>
                    <v-card-actions>
                        <div class="flex-grow-1"></div>
                        <v-btn @click="auth" color="primary">Auth</v-btn>
                    </v-card-actions>
                </v-card>
            </v-col>
        </v-row>
    </v-container>
</template>

<script lang="ts">
    import Vue from "vue";

    export default Vue.extend({
        methods: {
            auth(): void {
                ((this.$refs.form as Vue).$el as HTMLFormElement).submit();
            }
        }
    });
</script>
