App.test = App.cable.subscriptions.create("TestChannel", {
  connected: function() {
    console.log('connected');
  },

  disconnected: function() {
    console.log('disconnected');
  },

  received: function(data) {
    document.getElementById('action_cable_result').style.display = 'block';
  }
});
