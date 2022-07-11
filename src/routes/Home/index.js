import { connect } from 'react-redux';

import * as NavigationActions from '../../utils/navigation-services';
import routeNames from '../';
import HomeScreen from './Home';
import Actions from '../../store/navigation/actions'

const mapStateToProps = null;
const mapDispatchToProps = dispatch => {
  return {
    handleDeviceInfoNavigate: () =>
      NavigationActions.navigate(routeNames.DeviceInfo),
    handleSliderExampleNavigate: () =>
      NavigationActions.navigate(routeNames.SliderExample),
    increment: () => dispatch(Actions.increment())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(HomeScreen);
