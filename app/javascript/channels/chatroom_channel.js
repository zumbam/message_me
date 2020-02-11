import consumer from "./consumer"
import scroll_bottom from 'packs/utils'
consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("connected");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log("disconnected");
  },

  received(data) {
    console.log(data.rendered_message);
    $('#messages-container').append(data.rendered_message);
    scroll_bottom();
  }
});
