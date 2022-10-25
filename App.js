import { StatusBar } from "expo-status-bar";
import React from "react";
import { StyleSheet, Text, View, Button } from "react-native";
import Crashes from "appcenter-crashes";
import Analytics from "appcenter-analytics";

export default function App() {
  return (
    <View style={styles.container}>
      <Text>Open up App.js to start working on your app!</Text>
      <Button
        title="New button! Press it to crash the app!"
        onPress={() => {
          Crashes.generateTestCrash();
        }}
      />
      <Button
        title="New button! Press it to track event!"
        onPress={() => {
          Analytics.trackEvent("Event tracked");
        }}
      />
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
});
