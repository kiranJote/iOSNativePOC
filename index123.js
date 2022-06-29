import React from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  Button,
  NativeModules,
  requireNativeComponent
} from 'react-native';


const RCTFirstView = requireNativeComponent('RCTFirstView');

const RNHighScores = ({ scores }) => {
  const contents = scores.map((score) => (
    <Text key={score.name}>
      {score.name}:{score.value}
      {'\n'}
    </Text>
  ));

  const increment = () => {
    var result = NativeModules.ViewController.increment(res => console.log(res))
  }

  return (
    <View style={styles.container}>
      <Text style={styles.highScoresTitle}>
        React Native Label
      </Text>
      <RCTFirstView/>
      <Text style={styles.scores}>{contents}</Text>
      <Button title="Increse Count" onPress={increment}/>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF'
  },
  highScoresTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10
  },
  scores: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5
  }
});

// Module name
AppRegistry.registerComponent('RNHighScores', () => RNHighScores);