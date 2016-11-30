	// Es número entero
	function isNumberFloat(inputString) {
		return (!isNaN(parseInt(inputString))) ? true : false;
	}

	// Validar una cadena de texto vacia
	function noVacio(pCampo, pTitulo){
		campo = document.getElementById(pCampo)
		if (!campo) campo = document.getElementById("FromName");
		if (campo) {
			if(""+campo.value==""){
				campo.focus()
				alert("El campo \""+ pTitulo +"\" es requerido.")
				return false
			}
		} else {
			alert("No se ha encontrao el campo \""+ pTitulo +"\" ("+ pCampo +").(1)")
			return false
		}
		return true
	}

	// Verificar E-mail
	function esEmail(pCampo, pTitulo){
		var er_email = /^(.+\@.+\..+)$/;
		campo = document.getElementById(pCampo)
		if (!campo) campo = document.getElementById("FromAddress")
		if (campo) {
			if(""+campo.value==""){
				campo.focus()
				alert("El campo \""+ pTitulo +"\" es requerido.")
				return false
			}
			if(!er_email.test(campo.value)) {
				alert("Introduzca una dirección E-mail válida en el campo \""+ pTitulo +"\".\nEjemplo: minombre@miempresa.com");
				campo.focus();
				return false
			}
		} else {
			alert("No se ha encontrao el campo \""+ pTitulo +"\" ("+ pCampo +").(2)")
			return false
		}
		return true
	}

	// Comprobar si es un número
	function esNumero(pCampo, pTitulo){
		campo = document.getElementById(pCampo)
		if (campo){
			if(""+campo.value==""){
				campo.focus()
				alert("El campo \""+ pTitulo +"\" es requerido.")
				return false
			}
			if(!isNumberFloat(campo.value)){
				campo.focus()
				alert("El campo \""+ pTitulo +"\" debe ser un número.")
				return false
			}
		} else {
			alert("No se ha encontrao el campo \""+ pTitulo +"\" ("+ pCampo +").(3)")
			return false
		}
		return true
	}
	

	