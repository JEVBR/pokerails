import consumer from './consumer'


const initPokemonChannel = () => {
  // consumer.subscriptions.create({channel: 'PokemonChannel' },{
  //   received(data) { // 2 days to find out its received , not recieved
  //     console.log(data);
  //   },
  //   connected(data) {
  //     console.log(data);
  //     console.log('clable vconected')
  //   }

  // });
} 


export { initPokemonChannel };
