// Funciones principales para las secciones de ondemand y busqueda

document.addEventListener('DOMContentLoaded', e => {  // Cuando el navegador cargue todo el contenido

    // -- CHECKBOX PARA EL CAMBIO DE FORMULARIOS DE BUSQUEDA [RANGO DE FECHA / AÑO-MES] -- //
    // Variales para el control de los elementos html
    let rangeContainer = document.getElementById('rangeContainer');
    let mesContainer = document.getElementById('mesContainer');
    let inputSwitch = document.getElementById('inputSwitch');
    if (rangeContainer && mesContainer && inputSwitch) {
            mesContainer.style.display = 'none';
            inputSwitch.addEventListener('input', () => { // Cuando el input de tipo checkbox detecte un cambio en su valor
            // Si el valor es Checked=true
            if (inputSwitch.checked) {
                // Se muestra el formulario de rango de fechas
                rangeContainer.style.display = 'block';
                mesContainer.style.display = 'none';
                inputSwitch.title = 'FILTRAR POR AÑO Y MES';
            }
            // El valor es Checked=false
            else{
                // Se muestra el formulario de año-mes
                rangeContainer.style.display = 'none';
                mesContainer.style.display = 'block';
                inputSwitch.title = 'FILTRAR POR RANGO DE FECHAS';
            }
        });
        // Variables para crear un mensaje informativo
        var tooltipElement = document.getElementById('inputSwitch');
        var tooltip = new bootstrap.Tooltip(tooltipElement);
    }


    // -- REPRODUCTOR DE VIDEO, MODAL PARA REPPRODUCIR VIDEO -- //
    // Inicializacion del reproductor de video (videoJS)
    let player = videojs('video-modal', {
        // opciones de reproduccion
        autoplay: false,
        controls: true,
        playbackRates: [0.25, 0.5, 1, 1.5, 2, 2.5, 3],
    });
    // Variables para el control de los elementos html
    let container = document.getElementById('container'); // Elemento padre directo de videoModal
    let videoModal = document.getElementById('videoModal'); // Modal dentro del cual se desplegara el reproductor de video
    let video = document.getElementById('video-modal'); // Reproductor de video <video></video>
    let modalLabel = document.getElementById('ModalLabel'); // Encabezado del modal
    let carouselSiguiente = document.getElementById('carousel__siguiente'); // Boton para avanzar en el carousel
    let carouselAnterior = document.getElementById('carousel__anterior'); // Boton para retroceder en el carousel
    let descargar = document.getElementById('descargar'); // Boton para descargar video
    let moverAPapelera = document.getElementById('mover_a_papelera'); // Boton para mover video a papelera
    // Seleccionar todos los elementos <a> con la clase btn-video que sean hijos de container
    let anchor = Array.from(container.querySelectorAll('.btn-video'));
        for (let i = 0; i < anchor.length; i++) { // Recorrer el array anchor
            anchor[i].addEventListener('click', (e) => { // Agregar el evento click a cada elemento
                // Prevenir el comportamiento por defecto de los elementos
                e.preventDefault();

                // Guardar en la variable src el valor del atributo href(url) del elemento anchor[i]. 
                // Recordemos que estamos recorriendo un array con elementos <a></a> y por tanto estamos 
                // guardando el valor de un atributo href en la variable src
                let src = anchor[i].href;

                // Asignar el valor src al atributo src de video (reproductor de video) y a su elemento hijo <source></source> 
                // para poder reproducir el video desde la fuente
                video.src = src;
                video.children[0].src = src;
                
                // Asignacion del valor de la fecha del video al encabezado del modal
                modalLabel.textContent = formatearFecha(anchor[i].dataset.fecha);

                // Si existen los botones avanzar y retroceder
                if(carouselSiguiente && carouselAnterior){
                    // Se asignan estilos para ocultarlos, evitando asi errores de visualizacion
                    carouselSiguiente.style.zIndex = -10;
                    carouselAnterior.style.zIndex = -10;
                }

                if(descargar){
                    descargar.href = descargar.dataset.url + '?download=' + anchor[i].dataset.id;
                }
                if(moverAPapelera){
                    moverAPapelera.href = moverAPapelera.dataset.url + '?mover_a_papelera=' + anchor[i].dataset.id + '&page=' + anchor[i].dataset.page + '&page_number=' + anchor[i].dataset.pagenumber;
                }
            });
        }

    // if(moverAPapelera){
    //     moverAPapelera.addEventListener('click', ()=>{
    //         const xhr = new XMLHttpRequest();
    //         xhr.open('GET', moverAPapelera.href, true);
    //         xhr.send();
    //         window.location.reload();
    //     });
    // }

    videoModal.addEventListener('hidden.bs.modal', () => { // Cuando se cierra la ventana modal
        // Se resetean los valores de las variables
        video.src = '#';
        video.children[0].src = '#';
        modalLabel.textContent = ''

        if(carouselSiguiente && carouselAnterior){
            carouselSiguiente.style.zIndex = 10;
            carouselAnterior.style.zIndex = 10;
        }

        if(descargar){
            descargar.herf = '#';
        }
        if(moverAPapelera){
            moverAPapelera.herf = '#';
        }
    });
});
function formatearFecha(fecha) {
    fechaArray = fecha.split(' ');
    nuevaFecha = fechaArray[1].replaceAll('_', '-');
    hora = fechaArray[3].replace('.mp4', '').replaceAll('_', ':');
    fechaFormateada = moment(nuevaFecha + ' ' + hora,).format('MMMM D, YYYY  -  h:mm:ss a');
    return fechaFormateada;
}
