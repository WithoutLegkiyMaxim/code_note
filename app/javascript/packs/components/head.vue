
<script>
  import logo from "./templates/head.html.slim"
  export default {
    mixins: [logo]
  }
</script>



// Это пример подключения компонентов
//   import Modal from './modal'

//   import template from './filter-modal.slim' 

//   export default {
//     mixins: [template],

//     props: ['hideModal', 'saveFilter', 'canSave'],

//     components: {
//       modal: Modal,
//     }
//   }
// </script>