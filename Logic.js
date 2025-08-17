const listPrices = [1,9,7,5,6,4]

function myProfit (listPrices) {
    let maxProfit = 0;
    let firstDay = Infinity

    for (let atualPrice of listPrices){
        if (atualPrice < firstDay){
            firstDay = atualPrice
        }

        let profit = atualPrice - firstDay

        if (profit > maxProfit){
            maxProfit = profit
        }
    }
    return maxProfit
}
console.log(myProfit(listPrices));
