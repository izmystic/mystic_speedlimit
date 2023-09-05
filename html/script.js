const hud = Vue.createApp({
  data() {
    return {
      show: false,
      speedlimit: "",
    };
  },
  destroyed() {
    window.removeEventListener("message", this.listener);
  },
  mounted() {
    this.listener = window.addEventListener("message", (event) => {
      if (event.data.action === "updateHud") {
        this.updateHud(event.data);
      }
    });
  },
  methods: {
    updateHud(data) {
      this.show = data.show;
      this.speedlimit = data.speedlimit;
    },
  },
}).mount("#container")