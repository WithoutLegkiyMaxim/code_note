import Vue from 'vue/dist/vue.esm'
// Это мы короч импортировали сам vuejs
import App from '../just.vue'
// Тут мы импортировали компонент


document.addEventListener('DOMContentLoaded', () => {
  let pagination = document.getElementById("navig_pages")
  let list = pagination.children
  for(let i in list) {
      if (list[i].className == 'current') {
        list[i].classList.add("is-current")
      }
      list[i].classList.add("pagination-link")
  }
  document.getElementsByClassName("previous_page")[0].classList.add("pagination-previous]")
  document.getElementsByClassName("next_page")[0].classList.add("pagination-next]")
  // тут происходит привязка запуска компонента
  // после загрузки страницы

  // const app = new Vue({
  // // объявляем новый Vue-элемент

  //   // говорим куда его засунуть
  //   // в данном случае это будет блок
  //   // с id="app"
  //   el: "#app",
  //   // Кстати фича в том, что этот блок
  //   // я создал во вьюшке
    
  //   // а тут мы тип говорим произвести
  //   // рендер нашего компонента
  //   render: h => h(App)
    
  // })

  // testing new component
//   const new_app = new Vue({
//     el: "#tags",
//     data: {
//       msg: ''
//     }
//   })

 })