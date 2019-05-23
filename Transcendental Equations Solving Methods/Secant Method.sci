function y = f(x)
    y = 1 - (1+x).^-9 - (140/26.5)*x //função cuja raiz é procurada
endfunction

x_ant = 0.14; //chutes iniciais de x
x = 0.13;

while (1)
    x_temp = x_ant //guarda os valores da iteração anterior
    x_ant = x
    x = x_ant - f(x_ant)*(x_ant - x_temp)/(f(x_ant) - f(x_temp))
    //ponto onde a reta que passa por x0 e x1 toca o eixo (reta secante à curva)
    Er = abs((x- x_ant)/x) //cálculo do erro
    if (Er < 10^-3) then //condição de saída do loop
        break
    end
end
