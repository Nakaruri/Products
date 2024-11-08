const today = new Date();
const month = today.getMonth() +1;
const date = today.getDate();
document.querySelector('#today').textContent=month +"月"+date + "日";

function now () {
    const today = new Date();
    const hour =today.getHours();
    const minutes = today.getMinutes();
    const seconds = today.getSeconds();
document.querySelector('#now').textContent=hour+"時"+minutes+ "分"+seconds+"秒";
}setInterval('now()',1000);//1秒ごとに更新
