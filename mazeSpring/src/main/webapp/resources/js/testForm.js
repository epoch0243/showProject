/**
 * 
 */
 const input = document.querySelector('input');
 const log = document.getElementById('log');
 // const log2 = document.getElementById('log2');

input. addEventListener('change', updateValue);

// alert(input);

function updateValue(e) {
  log.textContent = e.target.value;
  // log2.textContent = e.target.value;
}
