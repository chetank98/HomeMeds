<?php

 $apiKey = "rzp_test_vbKCJvkT5BF7LZ";

?>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>



<form action="thankyou.php" method="get">
<script
    src="https://checkout.razorpay.com/v1/checkout.js"
    data-key="<?php echo $apiKey; ?>" 
    data-amount="<?php echo 269.55 * 100;?>" 
    data-currency="INR"
    data-id="<?php echo 'OID'.rand(10,100).'END';?>"
    data-buttontext="Pay with Razorpay"
    data-name="HomeMeds"
    data-description="Medicine Delivery"
    data-image="images/doctor1.png"
    data-theme.color="#F37254"
></script>
<input type="hidden" custom="Hidden Element" name="hidden">
</form>

