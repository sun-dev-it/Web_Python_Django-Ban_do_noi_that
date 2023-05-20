var updateBtns = document.getElementsByClassName('update_giohang')

for (i=0; i < updateBtns.length; i++){
    updateBtns[i].addEventListener('click', function(){
        var sp_id = this.dataset.sanpham
        var action = this.dataset.action
        var user = this.dataset.user
        console.log('sp_id', sp_id, 'action', action)
        console.log('user', user)
        if (user ===  "AnonymousUser"){
            console.log('Người dùng chưa đăng nhập')
        } else {
            updateUserOrder(sp_id, action)
        }
    })
}

function updateUserOrder(sp_id, action){
    console.log('Người dùng đã đăng nhập')
    var url = '/update_item/'
    fetch(url, {
        method: 'POST',
        headers:{
            'Contenr-Tyoe':'application/json',
            'x-CSRFToken': csrftoken,
        },
        body: JSON.stringify({'sp_id' :sp_id, 'action' :action})
    })
    .then((response) => {
        return response.json()
    })
    .then((data) => {
        console.log('data', data)
        location.reload()
    })
}