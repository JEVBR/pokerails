// src/PokemonList.js
// rfc

import React, { useState, useEffect} from 'react'

export default function PokemonList({ pokemon }) {
  const [test, setTest] = useState([]);

  useEffect(() => {
    //subsctibe to cable here

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
