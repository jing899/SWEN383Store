
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <!--link href="/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"!-->
</head>
<body>
<style>
    h1{text-align: center;}
    .themed-grid-col {
        padding-top: 15px;
        padding-bottom: 15px;
        background-color: rgba(86, 61, 124, .15);
        border: 1px solid rgba(86, 61, 124, .2);
    }

    .themed-container {
        padding: 15px;
        margin-bottom: 30px;
        background-color: rgba(0, 123, 255, .15);
        border: 1px solid rgba(0, 123, 255, .2);
    }
    #main{ margin: 2% 10% auto 10%;}
</style>
<h1>Payment</h1>
<div id="main">
    <div class="row mb-3">
        <div class="col-md-8 themed-grid-col">
            <div class="pb-3">
                ITEM LIST
            </div>
            <div class="row">

                <div class="col-md-6 themed-grid-col">ITEM : 1</div>
                <div class="col-md-6 themed-grid-col">ITEM : 2</div>
            </div>
        </div>
        <div class="col-md-4 themed-grid-col">PAYMENT
            <div>
                <form>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="validationDefault01">First name</label>
                            <input type="text" class="form-control" id="validationDefault01" value="First Name" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="validationDefault02">Last name</label>
                            <input type="text" class="form-control" id="validationDefault02" value="Last Name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="CardNumber">Card Number</label>
                        <input type="text" class="form-control" id="CardNumber">
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="date">Expiration Date</label>
                            <input type="month" class="form-control" id="date">
                        </div>
                        <div class="form-group col-md-2">
                            <label for="cvv">CVV</label>
                            <input type="text" class="form-control" id="cvv">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress">Billing Address</label>
                        <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputCity">City</label>
                            <input type="text" class="form-control" id="inputCity">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">State</label>
                            <select id="inputState" class="form-control">
                                <option selected>Choose...</option>
                                <option value="AL">Alabama</option>
                                <option value="AK">Alaska</option>
                                <option value="AZ">Arizona</option>
                                <option value="AR">Arkansas</option>
                                <option value="CA">California</option>
                                <option value="CO">Colorado</option>
                                <option value="CT">Connecticut</option>
                                <option value="DE">Delaware</option>
                                <option value="DC">District Of Columbia</option>
                                <option value="FL">Florida</option>
                                <option value="GA">Georgia</option>
                                <option value="HI">Hawaii</option>
                                <option value="ID">Idaho</option>
                                <option value="IL">Illinois</option>
                                <option value="IN">Indiana</option>
                                <option value="IA">Iowa</option>
                                <option value="KS">Kansas</option>
                                <option value="KY">Kentucky</option>
                                <option value="LA">Louisiana</option>
                                <option value="ME">Maine</option>
                                <option value="MD">Maryland</option>
                                <option value="MA">Massachusetts</option>
                                <option value="MI">Michigan</option>
                                <option value="MN">Minnesota</option>
                                <option value="MS">Mississippi</option>
                                <option value="MO">Missouri</option>
                                <option value="MT">Montana</option>
                                <option value="NE">Nebraska</option>
                                <option value="NV">Nevada</option>
                                <option value="NH">New Hampshire</option>
                                <option value="NJ">New Jersey</option>
                                <option value="NM">New Mexico</option>
                                <option value="NY">New York</option>
                                <option value="NC">North Carolina</option>
                                <option value="ND">North Dakota</option>
                                <option value="OH">Ohio</option>
                                <option value="OK">Oklahoma</option>
                                <option value="OR">Oregon</option>
                                <option value="PA">Pennsylvania</option>
                                <option value="RI">Rhode Island</option>
                                <option value="SC">South Carolina</option>
                                <option value="SD">South Dakota</option>
                                <option value="TN">Tennessee</option>
                                <option value="TX">Texas</option>
                                <option value="UT">Utah</option>
                                <option value="VT">Vermont</option>
                                <option value="VA">Virginia</option>
                                <option value="WA">Washington</option>
                                <option value="WV">West Virginia</option>
                                <option value="WI">Wisconsin</option>
                                <option value="WY">Wyoming</option>
                            </select>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="inputZip">Zip</label>
                            <input type="text" class="form-control" id="inputZip">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck">
                            <label class="form-check-label" for="gridCheck">
                                Check me out
                            </label>
                        </div>
                    </div>
                    <div class="col-sm-10">
                        <button type="button" class="btn btn-secondary">CASH</button>
                        <button type="submit" class="btn btn-primary">CONFIRM</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

</body>
</html>








</body>
</html>