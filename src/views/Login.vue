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
                        <v-form action="http://10.10.0.35:30080/oauth/login" method="post" ref="form">
                            <v-text-field label="username" name="username" prepend-icon="mdi-account" type="text"
                                          v-model="username"></v-text-field>
                            <v-text-field id="password" label="password" name="password" prepend-icon="mdi-lock"
                                          type="password"
                                          v-model="password"></v-text-field>
                        </v-form>
                    </v-card-text>
                    <v-card-actions>
                        <div class="flex-grow-1"></div>
                        <v-btn @click="login" color="primary">Login</v-btn>
                    </v-card-actions>
                </v-card>
            </v-col>
        </v-row>
    </v-container>
</template>

<script lang="ts">
    import Vue from "vue";

    export default Vue.extend({
        data() {
            return {
                username: "",
                password: ""
            };
        },
        methods: {
            login(): void {
                ((this.$refs.form as Vue).$el as HTMLFormElement).submit();
            }
        }
    });
</script>
