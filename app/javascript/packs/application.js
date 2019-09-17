import "bootstrap";
import { initPokemonChannel } from '../channels/pokemon_channel'

initPokemonChannel();

import "../src";
// Support component names relative to this directory:
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);
