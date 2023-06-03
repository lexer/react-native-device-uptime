import { NativeModules } from 'react-native';

export type DeviceUptimeType = {
  getUptime: () => number;
};

const { DeviceUptime } = NativeModules;

export default DeviceUptime as DeviceUptimeType;
