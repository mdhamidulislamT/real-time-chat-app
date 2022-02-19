@extends('layouts.app')

@section('content')


<div class="container bg-info">
    <div class="row d-flex justify-content-center ">
        <div class="col-md-6 mt-3">
            <p class="border-bottom">username: <b class="text-uppercase">{{ Auth::user()->name }} </b></p>
            <input type="hidden" name="username" class="username" value="{{ Auth::user()->name }}">
            <div class="card ">
                <div class="card-body" id="displayMyMessage">
                  <h5 class="border-bottom border-5 text-center">Message Box</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="row d-flex justify-content-center ">
        <div class="col-md-6 mb-5 mt-3">
            <div class="card text-center">
                <div class="card-body">
                        <div class="form-group">
                            <input type="text" class="form-control myMessage" placeholder=" Type Your Message Here..." autofocus>
                        </div>
                        <button type="button" class="btn btn-lg btn-primary w-100 btn-block mt-3 updateBtn"
                            onclick="sendMessage();">Send</button>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container mb-5 d-none">
        <div class="row">
            <div class="col-md-10"></div>
            <div class="col-md-2 p-3">
                <a class="dropdown-item bg-warning " href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"> Logout </a>
    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
        @csrf
    </form>
            </div>
        </div>
</div>


@endsection


@section('script')

    <script type="text/javascript">
        //send message
        function sendMessage() {
            const myMessage = $('.myMessage').val();
            const username = $('.username').val();

            var url = "send-message";
            axios.post(url, {
                myMessage: myMessage,
                username: username
            }).then(function(result) {
                //alert(result['data']);
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

        $(document).ready(function(){

            var pusher = new Pusher('9695b8a4cffc575aad1b', {
                cluster: 'ap2'
            });

            var channelData = "2022";
            var channel = pusher.subscribe(channelData);
            channel.bind('my-event', function(data) {
                //alert(data['myMessage']);
                //alert(data.myMessage.username)
                var displayMyMsg = '<h6 class="border-bottom"> ' +data.myMessage.username +' : '+ data.myMessage.myMessage+ '</h6>'; 
                $('#displayMyMessage').append(displayMyMsg);

            });

        });


    </script>

@endsection
