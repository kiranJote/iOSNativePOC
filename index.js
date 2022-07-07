/**
 * @format
 */

import { AppRegistry, LogBox } from 'react-native';
import App from './src/app';
import FirstMultipleScreen from './src/MultipleScreen'
import SecondMultipleScreen from './src/MultipleScreen2'

LogBox.ignoreLogs([
  "[react-native-gesture-handler] Seems like you're using an old API with gesture components, check out new Gestures system!",
]);

console.log("App loaded")

AppRegistry.registerComponent('FirstMultipleScreen', () => FirstMultipleScreen);
AppRegistry.registerComponent('SecondMultipleScreen', () => SecondMultipleScreen);
AppRegistry.registerComponent('App', () => App);
