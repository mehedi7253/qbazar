<template>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center pt-2 pb-3">
              Change Your Password
            </h5>
            <form class="form-signup" @submit.prevent="change_password">

              <div class="form-label-group mb-3">
                <input
                  type="password"
                  id="password"
                  v-bind:class="
                    errors && errors.password
                      ? 'form-control is-invalid'
                      : 'form-control'
                  "
                  v-model="password"
                  :placeholder="$lang['Password']"
                />
                <span class="text-danger" v-if="errors && errors.password">
                  {{ errors.password[0] }}
                </span>
              </div>

              <div class="form-label-group mb-3">
                <input
                  type="password"
                  id="password_confirmation"
                  class="form-control"
                  v-model="password_confirmation"
                  :placeholder="$lang['Confirm Password']"
                />
              </div>

              <button
                type="submit"
                class="
                  btn btn-lg btn-primary btn-block btn-login
                  text-uppercase
                  py-3
                  mt-2
                "
              >
                <span
                  v-if="loading"
                  class="spinner-border spinner-border-sm"
                ></span>
                <span v-if="!loading">Change Password</span>
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { mapGetters } from "vuex";

export default {
  data() {
    return {
      password: "",
      password_confirmation: "",
      user_id: '',
      user_email: '',
    };
  },
  mounted() {
    if(localStorage.getItem('user_email')) {
      try {
        this.user_email = localStorage.getItem('user_email');
      } catch(e) {
        localStorage.removeItem('user_email');
      }
    }
    
    let strLength = this.user_email.length;
      
    if (strLength === 0) {
      this.$awn.alert('Email address not found!');
      this.$router.push("/");
    }
  },
computed: {
    ...mapGetters("auth", ["errors", "loading"]),
    resetuser: function () {
      return this.$store.getters["auth/resetuser"];
    },
  },
  methods: {
    change_password: function () {
      let strLength = this.user_email.length;

      if (strLength === 0) {
      this.$awn.alert('Email address not found!');
        this.$router.push("/");
      } else {
        let data = {
        password: this.password,
        password_confirmation: this.password_confirmation,
        user_email: this.user_email
      };
      this.$store
        .dispatch("auth/change_password", data)
        .then((res) => {

          if(res.data.status_code === 500) {
            this.$awn.alert(res.data.message);
            exit();
          }
          localStorage.removeItem('user_email');
          this.$awn.success(res.data.message);
          this.$router.push("/");
        })
        .catch((err) => console.log(err));
      }
    }
  },
};
</script>
