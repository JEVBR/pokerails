// src/PokemonList.js
// rfc

import React, { useState, useEffect} from 'react'

export default function PokemonList({ pokemon }) {
  const [test, setTest] = useState([]);

  useEffect(() => {
    //subsctibe to cable here liki ths ex:
    // App.chatroom = App.cable.subscriptions.create({
    //   channel: "ChatroomChannel",
    //   id: this.state.chatroomId
    //   },
    //   {
    //     received: function(data) {
    //       this.updateMessages(JSON.parse(data.message))
    //     }.bind(this)
    //   });

    //https://reactjs.org/docs/hooks-intro.html
    //https://github.com/learnetto/reactchat/blob/master/client/app/bundles/Chatroom/components/Chatroom.jsx
    //return () => { // unsubscribe here}
  },[]);

  useEffect(() => {
    setTest(pokemon)
  },[pokemon]);

  return (
    <div>
      {test.map( p => (
          <div key={p}>{p}</div>
        ))} 
    </div>
  )
}
