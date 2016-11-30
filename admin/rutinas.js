				function winPop(url,winName,ancho,alto,barras) { 
					var winl = (screen.width - ancho) / 2;
					var wint = (screen.height - alto) / 2;
					var paramet = 'top='+wint+',left='+winl+',resizable=yes,width='+ancho+',height='+alto+',scrollbars='+barras+'';
					var sw = window.open(url,winName,paramet);
					sw.focus();
				}

function ventana(theURL,winName,ancho,alto,features) { 
	var winl = (screen.width - ancho) / 2;
	var wint = (screen.height - alto) / 2;
	var paramet=features+',top='+wint+',left='+winl+',width='+ancho+',height='+alto;
	var splashWin=window.open(theURL,winName,paramet);
    splashWin.focus();
}

function popEntrar(){
	ventana("../admin/edicion/entrar.asp?idioma="+idioma,"Entrar",250,130,"resizable=yes")
}