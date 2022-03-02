<template>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center pt-2 pb-3">
              Forgot your password?
            </h5>
            <form class="form-signin" @submit.prevent="reset_password">
              <div class="form-label-group mb-3">
                <input
                  type="email"
                  id="email"
                  class="form-control"
                  v-model="email"
                  :placeholder="$lang['Email address']"
                  required
                />
              </div>

              <button
                type="submit"
                class="
                  btn btn-lg btn-primary btn-block
                  text-uppercase
                  btn-login
                  py-3
                  mt-2
                "
              >
                <span
                  v-if="loading"
                  class="spinner-border spinner-border-sm"
                ></span>
                <span v-if="!loading">Reset Password</span>
              </button>

              <router-link
                :to="{ name: 'login' }"
                class="
                  btn btn-lg btn-light
                  text-dark
                  btn-block
                  text-uppercase
                  py-3
                  mb-1
                "
                >{{ $lang["Already have an account?"] }}</router-link
              >
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
      email: "",
    };
  },
  computed: {
    ...mapGetters("auth", ["errors", "loading"]),
  },
  methods: {
    reset_password: function () {
      let data = {
        email: this.email,
      };
      this.$store
        .dispatch("auth/reset_password", data)
        .then((res) => {
          if (res.data.user_email) {
            localStorage.setItem('user_email', res.data.user_email);
            this.$awn.success(res.data.message);
            this.$router.push("/change-password");
          } else {
            localStorage.setItem('user_email', null);
            this.$awn.alert(res.data.message);
            exit();
          }
        })
        .catch((err) => {
            this.$awn.alert('Email address does not exists');
        });
    },
  },
};
</script>
