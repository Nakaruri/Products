/**プルダウンを連動**/
var array = new Array();
array[''] = new Array({cd:"0", label:"選択してください"});
array["eigyo"] = new Array(
  {cd:"1", label:"札幌営業所"},
  {cd:"2", label:"横浜営業所"},
  {cd:"3", label:"名古屋営業所"}
);
array["soumu"] = [
  {cd:"1", label:"人事部"},
  {cd:"2", label:"経理部"},
  {cd:"3", label:"広報部"}
];
array["kenkyu"] = [
  {cd:"1", label:"研究部"},
  {cd:"2", label:"開発部"}
];

document.getElementById('bumon').onchange = function(){
  city = document.getElementById("busho");
  city.options.length = 0
  var changedBumon = bumon.value;
  for (let i = 0; i < array[changedBumon].length; i++) {
    var op = document.createElement("option");
    value = array[changedBumon][i]
    op.value = value.cd;
    op.text = value.label;
    busho.appendChild(op);
  }
}
/**チェックを入れるとボタンを押せる**/
const isAgreed =document.querySelector('#check');
const button = document.querySelector('#button');

isAgreed.addEventListener('change',()=>{
	if(isAgreed.checked){
		button.disabled =false;
	}else{
		button.disabled =true;
	}
});