import { store } from './store';

export function printStore(){
    console.log('store', store.getState())
}