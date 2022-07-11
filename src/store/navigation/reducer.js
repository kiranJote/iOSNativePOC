import createReducer from '../../utils/create-reducer';

import Types from './types';

const initialState = {increment: 0};

const handleNavigation = (state, action) => state;

const incrementAction = (state, action) => {
  return { ...state, increment: state.increment + 1 }
};

const actionHandlers = {
  [Types.NAVIGATE]: handleNavigation,
  'increment': incrementAction
};

export default createReducer(initialState, actionHandlers);
