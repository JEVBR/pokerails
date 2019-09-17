import consumer from './consumer'

const initPokemonChannel = () => {
  consumer.subscriptions.create({channel: 'PokemonChannel'},{
    connected() {
      console.log('clable vconected')
    }

  });

}

export { initPokemonChannel };
