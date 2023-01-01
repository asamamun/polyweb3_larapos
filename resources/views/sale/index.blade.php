@extends('layouts.admin')
@section('content')
<section style="background-color: #eee; margin-top:20px;">
<div class="row">
<div class="col-md-12 mt-2">
<h5>Sale Management</h5>
<div id="invContainer"></div>
    <form action="" id="saleform" name="saleform">
        <input type="hidden" name="userid" id="userid" value="{{Auth::id()}}">
        <input type="text" name="" id="product" class="form-control">
    
    <div class="table-responsive">
    <table class="table">
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Image</th>
            <th>Product Price</th>
            <th>Quantity</th>
            <th>Total</th>
            <th>Discount</th>
            <th>Grand Total</th>
            <th>Action</th>
        </tr>
        <tbody id="productContainer">
            
        </tbody>
        <tfoot>
<tr>
    <th colspan="6" class="text-center text-success">Overall Total</th>
    <th colspan="3" id="overallt" class="text-right text-primary">0</th>
</tr>
<tr>
    <th colspan="2" class=""><input type="text" id="overalldiscount" placeholder="discount" value="0"></th>
    <th colspan="2"><select name="payment" id="payment">
    <option value="cash" selected>Cash</option>    
    <option value="bKash">bKash</option>    
    <option value="cash">Cash On Delivery</option>    
    </select></th>
    <th><input type="text" id="customer" placeholder="customer id" value="203"></th>
    <th><select name="status" id="status">
        <option value="c" selected>Complete</option>    
        <option value="i">incomplete</option>    
         
        </select></th>
    <th colspan="2" class=""><button id="checkout" type="button" class="btn btn-outline-primary">Checkout</button></th>
</tr>
<tr>
    <th colspan="9">
        <textarea name="comment" id="comment" class="form-control" placeholder="transaction details or order info"></textarea>
    </th>
</tr>
        </tfoot>
    </table>
    <hr>
    
</div>
</form>
</div>
</div>
</section>
@endsection




@section('script')
    <script>
        let url = "{!! url('api/') !!}";
        let rooturl = "{!! url('/') !!}";
        $(document).ready(function () {
            //function autoc
            $( "#product" ).autocomplete({
               source: function(request,response){
                console.log(request.term)                
                $.post(url+'/search/'+request.term, {},
                    function (data, textStatus, jqXHR) {
                        response(data); 
                    },
                    "json"
                );
               },
            //    autoFocus:true,
               select: function( event, ui ) {
                //console.log(ui.item);
                let u = ui.item;
                $("#productContainer").append("<tr><td class='pid'>"+u.value+"</td><td>"+u.label+"</td><!--td>"+u.description+"<td--><td><img src='storage/"+u.image+"' width='120px'/></td><td class='salep'>"+u.saleprice+"</td><td><input type='number' min='1' class='productquan' value='1'/></td><td class='total'>"+u.saleprice+"</td><td class='discount'>"+u.discount+"</td><td class='grandtotal'>"+u.saleprice+"</td><td><i class='fa fa-trash' aria-hidden='true'></i></td></tr>");
                $( "#product" ).val("");
                updateTotal();
                return false;
               },
               minLength : 2
            });



/*             function autoc(d) {

            } */
            //alert(5)
/*            $("#product").keyup(function (e) { 
                if($(this).val().length < 3) return false;
                $t = $(this);
                
                //ajax

            }); */

            //delete row
            $("#productContainer").on("click",".fa-trash",function(){
                let c = confirm("Are you sure you want to delete?");
                if(c) { $(this).parent().parent().remove();}
                updateTotal();
                return;
            })
            //change quantity
            $("#productContainer").on("change",".productquan",function(){
                $t = $(this);
                let p = $t.closest("tr").find('.salep').text()
                let d = Number($t.closest("tr").find('.discount').text())
                let q = $t.val();
                $t.closest("tr").find('.total').text(p*q);
                $t.closest("tr").find('.grandtotal').text((p-p*d/100)*q);
                updateTotal();
            });
            //function updateTotal
            function updateTotal(){
                $gt = $(".grandtotal");
                //console.log($gt.length);
                let grandt = 0;
                $.each($gt, function (indexInArray, valueOfElement) { 
                    grandt += Number($(this).text())
                    //  console.log($(this).text())
                });
                grandt = grandt - Number($("#overalldiscount").val())
                $("#overallt").html(grandt);
            }
            //function updateTotal end
            //checkout start
            $("#checkout").click(function(){
                var ids = [];
                var qtys = [];
                var oalld = $("#overalldiscount").val();
                var oallt = Number($("#overallt").text());
                var uid = $("#userid").val();
                let c = $("#comment").val();
                let pay = $("#payment").val();
                let cus = $("#customer").val();
$.each($('.pid'), function (indexInArray, valueOfElement) {ids.push($(this).text())});
$.each($('.productquan'), function (indexInArray, valueOfElement) {qtys.push($(this).val())});
if(!ids.length) return;
$.post(url+'/salecheckout', { 
    ids:ids,
    qtys:qtys,
    discount:oalld,
    total:oallt,
    payment:pay,
    userid:uid,
    comment:c,
    customer:cus,
    status : $("#status").val()
},
    function (data, textStatus, jqXHR) {
        console.log(data);
        $("#invContainer").html("Order Complete, <a href='"+rooturl+"/invoice/"+data.saleid+"' target='_blank'>Invoice ID:" + data.saleid+"</a>");
        //document.getElementById("saleform").reset();
        clearForm();
    },
    "json"
);
            })
            //checkout end

            $("#overalldiscount").change(function(){
                updateTotal();
            })

            function clearForm(){
                $("#overalldiscount").val(0);
                $("#comment").val("");
                $("#overallt").html(0);
                $("#productContainer").empty();
            }
        });
    </script>
@endsection