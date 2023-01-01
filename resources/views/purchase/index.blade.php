@extends('layouts.admin')
@section('content')
<section style="background-color: #eee; margin-top:20px;">
<div class="row">
<div class="col-md-12 mt-2">
<h5> Purchase Management</h5>
<div id="invContainer"></div>
    <form action="">
        
        <input type="hidden" name="userid" id="userid" value="{{Auth::id()}}">        
        <label for="product">Product</label>
        <input type="text" name="product" id="product" class="form-control mt-3">        
    </form>
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
    <th colspan="2" class="">
        <input type="text" id="overalldiscount" placeholder="discount" value="0">
    </th>
    <th colspan="2">
    <select name="payment" id="payment">
        <option value="cash" selected>Cash</option>    
        <option value="bKash">bKash</option>    
        <option value="cod">Cash On Delivery</option>    
    </select>
    <input type="text" id="trxid" placeholder="trxid for bkash">
    </th>
    <th>
        <input type="text" id="supplier_id" placeholder="supplier id" value="207">
    </th>
    <th colspan="2" class="">
        <button id="checkout" class="btn btn-outline-primary">Checkout</button>
    </th>
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
</div>
</div>
</section>
@endsection




@section('script')
    <script>
        let url = "{!! url('api/') !!}";
        let rooturl = "{!! url('/') !!}";
        $(document).ready(function () {
            $("#trxid").hide();
            //payment change
            $("#payment").change(function(){
                // alert($(this).val())
                if($(this).val() == "bKash"){
                    $("#trxid").show(200);
                }
                else{
                    $("#trxid").hide(200); 
                }
            });
            //payment change end
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
                let trxid = $("#trxid").val();
                let supp = $("#supplier_id").val();
$.each($('.pid'), function (indexInArray, valueOfElement) {ids.push($(this).text())});
$.each($('.productquan'), function (indexInArray, valueOfElement) {qtys.push($(this).val())});
if(!ids.length) return;
$.post(url+'/purchasecheckout', { 
    ids:ids,
    qtys:qtys,
    discount:oalld,
    total:oallt,
    payment:pay,
    trxid: trxid,
    userid:uid,
    comment:c,
    supplier:supp,
    status : $("#status").val()
},
    function (data, textStatus, jqXHR) {
        console.log(data);
        $("#invContainer").html("Order Complete, <a href='"+rooturl+"/pinvoice/"+data.purchase+"' target='_blank'>Invoice ID:" + data.purchase+"</a>");
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

            //    clear form        
            function clearForm(){
                $("#overalldiscount").val(0);
                $("#comment").val("");
                $("#overallt").html(0);
                $("#trxid").val('');
                $("#productContainer").empty();
            }
        });
    </script>
@endsection