// src/PokemonList.js
// rfc

import React, { useState, useEffect} from 'react'
import consumer from '../channels/consumer'

export default function PokemonList({ pokemon }) {
  const [test, setTest] = useState([]);

  useEffect(() => {


    consumer.subscriptions.create({channel: 'PokemonChannel' },{
      received(data) { // 2 days to find out its received , not recieved
        console.log('rcv:')
        console.log(data.message);
        setTest(test => [...test, data.message]);
      },
      connected(data) {
        console.log(data);
        console.log('clable vconected')
      }
  
    });
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
