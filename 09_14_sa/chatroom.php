<?php
require 'funcs.php';

// DB接続
$pdo = connect_db();
$u_id=$_SESSION['id'];
$u_name = $_SESSION["username"];
$r_id=$_SESSION['roomId'];
// $roomId = 1;
$sql = "select * from chat inner join chat_quest on chat.room_id = chat_quest.RoomNumber where (life != 'deleted' and room_id = :r_id)";

 $stmt = $pdo->prepare($sql);
 $stmt->bindValue(':r_id', $r_id, PDO::PARAM_INT);
 $status = $stmt->execute();

 // データ登録処理後
if ($status == false) {
  // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
  $error = $stmt->errorInfo();
  // データ登録時，失敗で以下を表示
  exit('sqlError:'.$error[2]);
} else {
  // 正常にSQLが実行された場合は入力ページファイルに移動し，入力ページの処理を実行する
// fetchAll()関数でSQLで取得したレコードを配列で取得できる
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="utf-8">
  <title>CSS Chat</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
  <div id="app">
    <div class="input" style="position:fixed;
  background-color: pink; z-index:10;">
      <div class="pic">
              <?= img_tag($u_id); ?>
              <?= h($u_name);?>
                    </div>
        <form action="" class="add-form" @submit.prevent="add">
          <!-- message -->
          <input type="text" name="chat" ref="message">
          <!-- button -->
          <button type="button" class="done" @click="send_message">送信</button>
        </form>
    </div>
    <!-- フォーム -->
    <div class="container">
      <!-- データベースの値を表示させるところ -->
      <ul class="messages">
        <?php foreach($results as $result): ?>
          <?if($result['user_id'] == $u_id):?>
    <li class="left-side" id="chat_<?=h($result['id']);?>" data-id="<?= h($result['id']); ?>">
        <div class="pic">
          <?= img_tag($result['user_id']); ?>
        </div>
        <div class="text">
          <?=h($result['chat']);?>
        </div>
      </li>
      <? else :?>
        <li class="right-side" id="chat_<?=h($result['id']);?>" data-id="<?= h($result['id']); ?>">
        <div class="pic">
          <?= img_tag($result['user_id']); ?>
        </div>
        <div class="text">
          <?=h($result['chat']);?>
        </div>
      </li>
      <? endif?>
      <?php endforeach ?>
      </ul>

      <!-- 新しく入力した値を表示させるところ -->
      <ul class="messages"  v-for="item in list">
      <li class="left-side">
        <div class="pic">
          <img src="img/<?=h($u_id);?>.png">  <!-- セッション使用 -->
        </div>
        <div class="text">
          {{item.message}}
        </div>
      </li>
      </ul>

    </div>
  </div>
  <!-- Vue.jsのCDN -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<!-- #CDNのaxios -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.js"></script>
<script>
  (function(){
  'use strict';
 var vm = new Vue ({
    el: '#app',
    data: {
        list: [],
    },
    methods: {
      send_message: function(event, value) {
       var message = this.$refs.message
       if(!message.value.length){
         return
       }
       this.list.push({
         message: message.value
       })
      let params = new URLSearchParams();
      params.append('u_id', <?=h($u_id);?>);
      params.append('message', message.value);
      params.append('r_id', <?= h($r_id); ?>);
    axios
     .post('_ajax_add_chat.php', params)
     .then(function(rs){
      //  送信をクリックすると値を書き換える＋表示に反映される
      console.log(rs.data);

      message.value=''
     })
     .catch(error => (this.error = error))

      }
    }

  })
})();
</script>
</body>
</html>