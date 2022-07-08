import React from 'react';
import {
  StyleSheet,
  Text,
  View,
  NativeModules,
  Button,
} from 'react-native';


const SecondMultipleScreen = () => {
  const increment = () => {
    var result = NativeModules.ViewController.increment(res => console.log(res))
  }

  return (
    <View style={styles.container}>
      <Text style={styles.highScoresTitle}>
        React Second Multiple Screen
      </Text>
      <Button title="Go Back" onPress={increment}/>
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
  },
  tinyLogo: {
    width: 50,
    height: 50,
  },
  logo: {
    width: 66,
    height: 58,
  },
});

export default SecondMultipleScreen;