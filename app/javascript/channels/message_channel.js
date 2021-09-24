import consumer from "./consumer"

consumer.subscriptions.create("MessageChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const messages = document.getElementById('messages');
 
    const textElement = document.createElement('div');
    textElement.setAttribute('class', "message-display");

    const topElement = document.createElement('div');
    topElement.setAttribute('class', "upper-message");

    const nameElement = document.createElement('div');
    nameElement.setAttribute('class', "message-user");

    const timeElement = document.createElement('div');
    timeElement.setAttribute('class', "message-date");

    const bottomElement = document.createElement('div');
    bottomElement.setAttribute('class', "lower-message");

    const messageElement = document.createElement('div');
    messageElement.setAttribute('class', "message-content");

    messages.insertBefore(textElement, messages.firstElementChild);
    textElement.appendChild(topElement);
    textElement.appendChild(bottomElement);
    topElement.appendChild(nameElement);
    topElement.appendChild(timeElement);
    bottomElement.appendChild(messageElement);

    const name = `${data.name}`;
    nameElement.innerHTML = name;
    const time = `${data.time}`;
    timeElement.innerHTML = time;
    const message = `${data.content.message}`;
    messageElement.innerHTML = message;

    const newComment = document.getElementById('message_form');
    newComment.value='';

    const inputElement = document.getElementById('btn');
    inputElement.disabled = false;
    
  }
});
