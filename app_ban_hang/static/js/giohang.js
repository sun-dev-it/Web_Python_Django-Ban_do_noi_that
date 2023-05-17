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
            console.log('Người dùng đã đăng nhập')
        }
    })
}