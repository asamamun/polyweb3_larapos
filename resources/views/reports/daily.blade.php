@extends('layouts.admin')
@section('content')
    <form action="">
        <div class="row justify-content-center">
        <div class="form-group col-4">
            {{-- <div class="form-label">Date</div> --}}
            <input type="date" class="form-control" id="sdate">
        </div>
        <div class="form-group mt-1 col-4">
            <button type="button" class="btn btn-outline-primary" id="showBtn">Show</button>
            <button type="button" class="btn btn-outline-primary" id="printBtn">Print</button>
        </div>
    </div>
    </form>
    <hr>
    <div id="reportContainer">
        <div class="d-flex justify-content-between">
            <h3>Daily Sales Report : <span id="reportdate"></span></h3>
            <h3>Total Sale : <span id="totalsale">0</span></h3>
        </div>
        
<table class="table">
    <tr>
        <th>Sale ID</th>
        <th>Sale Info</th>
        <th>Sale Amount</th>
        <th>Comment</th>
        <th>Payment</th>
        <th>Status</th>
        <th>Items</th>
        <th>date time</th>
    </tr>
    
    <tbody id="maindata">

    </tbody>
</table>
    </div>
@endsection

@section('script')
    <script>
        function showreport(d){
            document.getElementById("maindata").innerHTML = "";
            let html = ``;
            if(d.length){
                let ggtotal = 0;
                //sale foreach start
                d.forEach(e => {
ggtotal += Number(e.total);
                    let item = `<ul>`;
                        //product foreach start
                    e.saledetails.forEach(i => {
                        item += `<li>Product: ${i.product_id} <br>
                            Quantity: ${i.quantity} <br>
                            Price: ${i.price} <br>
                            Discount: ${i.discount}
                            </li>`;
                    });
                    //product foreach end
                    item+= `</ul>`;
                    html += `<tr>
        <td>${e.id}</td>
        <td>User: ${e.user_id} <br>, Customer : ${e.customer_id}</td>
        <td>Total: ${e.total} <br>, Discount : ${e.discount}</td>
        <td>${e.comment}</td>
        <td>${e.payment}</td>
        <td>${e.status=="c"?"complete":"incomplete"}</td>
        <td>${item}</td>
        <td>${e.created_at}</td>
    </tr>`;
                });
                //product foreach end

                document.getElementById("maindata").innerHTML = html;
                document.getElementById("totalsale").innerHTML = ggtotal;
            }
            else{
                html = `<tr><th colspan="8">No data available</th></tr>`;
            }
            document.getElementById("maindata").innerHTML = html;
        }
        let url = "{{url('/dailyreports')}}";
        $(document).ready(function () {
            $("#showBtn").click(function(){
                $d = $("#sdate").val();
                $.post(url, {date:$d},
                    function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#reportdate").html($d);
                        showreport(data);
                    },
                    "json"
                );
            })
        });
    </script>
@endsection