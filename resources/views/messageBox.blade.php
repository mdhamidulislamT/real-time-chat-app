@extends('layouts.app')

@section('content')
    


<div class="container">
    <div class="row d-flex justify-content-center bg-info">
        <div class="col-md-6 p-5">
            <div class="card text-center">
                <div class="card-body">
                  <h4>username: <b class="text-uppercase">{{ Auth::user()->name }} </b></h4>
                  <h2>Live Chat</h2>
                  <h5 id="displayMyMessage">Message here...</h5>
                </div>
            </div>
        </div>
        <div class="col-md-2 p-5">
            <a href="{{ url('/ScoreUpdate') }}"> Score Update </a>
        </div>
    </div>
</div>



<div class="container">
    <div class="row d-flex justify-content-center bg-info">
        <div class="col-md-6 p-5">
            <div class="card text-center">
                <div class="card-body">
                    <h2>message-box</h2>
                        <div class="form-group">
                            <input type="text" class="form-control myMessage" placeholder=" Type Your Message Here..." autofocus>
                        </div>
                        <button type="button" class="btn btn-lg btn-primary w-100 btn-block mt-3 updateBtn"
                            onclick="sendMessage();">Send</button>
                </div>
            </div>
        </div>
        <div class="col-md-2 p-5">
            <a href="{{ url('/ScoreBoard') }}"> ScoreBoard  </a>
        </div>
    </div>
</div>




@endsection




@section('script')



    <script type="text/javascript">
        //send message
        function sendMessage() {
            const myMessage = $('.myMessage').val();
            alert(myMessage);

            var url = "send-message";
            axios.post(url, {
                myMessage: myMessage
            }).then(function(result) {
                //alert(JSON.stringify(result));
                $('.myMessage').val('');
            }).catch(function(response) {
              alert(JSON.stringify(response));
            })
        }


        // Enter key
        $(document).keyup(function(e) {
            if ($(".myMessage").is(":focus") && (e.keyCode == 13)) {
                sendMessage();
            }
        });


        var pusher = new Pusher('9695b8a4cffc575aad1b', {
            cluster: 'ap2'
        });

        var channelData = "2022";
        var channel = pusher.subscribe(channelData);
        channel.bind('my-event', function(data) {
            alert(data['myMessage']);
            $('#displayMyMessage').html(data['myMessage']);

        });
    </script>


@endsection
