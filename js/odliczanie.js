/**
 * Created by rodzyn on 06.12.15.
 */
function odliczaj(n)
{
    n--;
    s = n%60;
    if (n == 0)
        document.getElementById('sekundy').innerHTML = '0';
    else
    {
        document.getElementById('sekundy').innerHTML = (s);
        if(n >= 0)
            setTimeout("odliczaj(" + n + ")", 1000);
    }
}

window.onload = function(){odliczaj('4');}