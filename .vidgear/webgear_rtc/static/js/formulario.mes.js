// FUNCIONES PARA EL FORMUALRIO DE AÑO-MES 
// Funcion para retornar el ultimo dia del mes
function getLastDayOfMonth(year, month) {
    let date = new Date(year, month + 1, 0);
    return date.getDate();
}
document.addEventListener('DOMContentLoaded', () => {
    let mes = document.getElementById('mes');
    if (mes) {
        let guion = '-';
        let mesDateStart = document.getElementById('mesDateStart');
        let mesDateEnd = document.getElementById('mesDateEnd');
        let mesArr;
        let year;
        let mesS
        let ultimoDia;
        mes.addEventListener('input', () => {
        mesArr = mes.value.split(guion);

        year = parseInt(mesArr[0]);
        mesS = parseInt(mesArr[1]);

        ultimoDia = getLastDayOfMonth(year, mesS-1);
        ultimoDia = ultimoDia < 10 ? ('0' + ultimoDia) : '' + ultimoDia;
        
        mesDateStart.value = mes.value + '-' + '01';
        mesDateEnd.value = mes.value + '-' + ultimoDia;
        });
    }   
});
    