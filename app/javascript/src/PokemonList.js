// src/PokemonList.js
// rfc

import React, { useState, useEffect} from 'react'
import consumer from '../channels/consumer'

export default function PokemonList({ pokemon }) {
  const [pokeList, setPokeList] = useState([]);

  useEffect(() => {
    var subscription = consumer.subscriptions.create({channel: 'PokemonChannel' },{
      received(data) { 
        setPokeList(pokeList => [...pokeList, data.message]);
      },
    });
    return () => {
      consumer.subscriptions.remove(subscription);
    }
  },[]);

  useEffect(() => {
    setPokeList(pokemon)
console.log(pokemon)

  },[pokemon]);

  return (
    <div>
      {pokeList.map( p => (
          <div key={p.uni}>{p.name}</div>
        ))} 
    </div>
  )
}
