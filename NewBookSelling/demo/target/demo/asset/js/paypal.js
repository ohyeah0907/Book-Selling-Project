paypal.Buttons({
    style: {
        color: 'blue',
        shape: 'rect'
    },
    createOrder: function(data, actions) {
        return actions.order.create({
            purchase_unit: [{
                amount:{
                    value:'0.1'
                }
            }]
        })
    },
    onApprove: function(data, actions) {
        return actions.order.capture().then(function(details) {
            console.log(details)
        })
    }
}).render('#paypal-payment-button');