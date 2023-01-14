<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../images/favicon.png">
    <title>ITV-Party-Dashboard</title>

    <!-- bootstrap CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <!-- text animation -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    

    <!-- Google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alkalami&family=Inter:wght@500&display=swap" rel="stylesheet">

    <!-- Jquery CDN -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- CSS Style sheet -->
    <link href="./CSS/Home.css">

<style>
	body {
            font-family: var(--secondary-font);
            background-color: var(--bg-white);
          
        }
    .body{
        background-image:url('https://i.pinimg.com/originals/4f/93/20/4f932047f96fa94a01bf0f51cada47e9.gif');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: 100% 100%;
    
    } 
    * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }


        .header_wrapper .navbar {
            -o-transition: all .2s linear;
            -webkit-transition: all .2s linear;
            transition: all .2s linear;
        }

        .header_wrapper .navbar-brand img {
            max-width: 210;
            height: auto;
        }

        .header_wrapper .nav-item {
            margin: 1 10px;
        }

        .header_wrapper .nav-item .nav-link {
            font-size: 20px;
            font-weight: 400;
            color: var(--text-white);
            line-height: 1;
            letter-spacing: 1px;
            color: rgba(255, 0, 0, 0.875);
        }

        .header_wrapper .nav-item .nav-link:hover {
            color: black;
        }

        .top-left {
            width: 100%;
        }

        .header_scrolled {
            position: fixed;
            margin-top: 0;
            top: 0;
            left: 0;
            width: 100%;
            height: 85px;
            background: var(--bg-yellow) !important;
            -webkit-box-shadow: 0 4px 6px 0 rgba(12, 0, 46, .05);
            box-shadow: 0 4px 6px 0 rgba(12, 0, 46, .05);
        }

        .header_scrolled .nav-item .nav-link {
            color: var(--text-black);
        }

        .header_scrolled .nav-item .nav-link.active {
            color: var(--text-red);
        }

        .header_scrolled .nav-brand img {
            filter: invert(0);
        }

        .banner_wrapper {
            background: var(--bg-red);
        }


        .celebrate__container {
            row-gap: 1rem;
        }

        .celebrate__data {
            text-align: center;
        }

        .celebrate__title {
            margin-bottom: var(--mb-1-5);
        }

        .celebrate__description {
            margin-bottom: var(--mb-2-5);
        }

        .main {
            background-image: url('../images/deals/deal-1.png');
            height: 100vh;
            width: 100vw;
            background-attachment: none;
            /* margin-top: 2%; */
            background-size: 100% 100%;
        }

        .wrapper1 {
            width: 90%;
            max-width: 34.37em;
            max-height: 90vh;
            background-color: #ffffff;
            position: absolute;
            transform: translate(-50%, -50%);
            top: 60%;
            left: 72%;
            padding: 3em;
            border-radius: 1em;
            box-shadow: 0 4em 5em rgba(27, 8, 53, 0.2);
        }

        .container1 {
            position: relative;
            width: 100%;
            height: 100%;
        }

        #wheel {
            max-height: inherit;
            width: inherit;
            top: 0;
            padding: 0;
        }

        @keyframes rotate {
            100% {
                transform: rotate(360deg);
            }
        }

        #spin-btn {
            position: absolute;
            transform: translate(-50%, -50%);
            top: 50%;
            left: 50%;
            height: 20%;
            width: 20%;
            border-radius: 50%;
            cursor: pointer;
            border: 0;
            background: radial-gradient(#fdcf3b 50%, #d88a40 85%);
            color: #c66e16;
            text-transform: uppercase;
            font-size: 1.8em;
            letter-spacing: 0.1em;
            font-weight: 600;
        }

        #santa-img {
            position: absolute;
            border-radius: 80%;
            width: 20%;
            top: 40%;
            left: 90%;
        }

        #final-value {
            font-size: 1.5em;
            text-align: center;
            margin-top: 1.5em;
            color: #202020;
            font-weight: 500;
        }

        @media screen and (max-width: 768px) {
            .wrapper {
                font-size: 12px;
            }

            img {
                right: -5%;
            }
        }
</style>
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="85" class="body">
   
    <div class="snowflake">
   
    </div>
    <header class="header_wrapper">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand" href="">
                    <img src="./resoureces/images/logo.png" class="img-fluid" alt="logo">
                </a>
                <button class="navbar-toggler p-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-stream navbar-toggler-icon"></i>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="Event-M.html"><b>Mumbai</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Event-D.html"><b>Delhi</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Event-K.html"><b>Kolkata</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Event-B.html"><b>Bangluru</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html"><b>Contact</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="gifts.html"><b>LuckyDraw</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.html"><b>Logout</b></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    
    <h2 style="padding:100px;">Booking Report Of All Location</h2>
    <div style="display:flex;">
        <div style="padding:100px;display: inline;">
            <section class="row sec10">
                <div class="col-lg-6 col-xs-10" id="sec10_img">
                    <img src=".//resoureces//R1.jpeg"
                        alt=""
                        style="height:380px;width:350px; box-shadow: 0 0px 70px rgb(0, 0, 0);border-radius: 20px;">
                </div>
            </section>
        </div>
        
        <div style="padding:100px;display: inline;">
            <section class="row sec10">
                <div class="col-lg-6 col-xs-10" id="sec10_img">
                    <img src=".//resoureces//R3.jpeg"
                        alt=""
                        style="height:380px;width:350px; box-shadow: 0 0px 70px rgb(0, 0, 0);border-radius: 20px;">
                </div>
            </section>
        </div>
    </div>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/ChristProject" user="root" password="Yogesh@1996"></sql:setDataSource>
<sql:query dataSource="${db}" var="rs">select * from booking;</sql:query>


 <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Mail ID</th>
                            <th>Date</th>
                            <th>Price</th>
                            <th>Venue</th>
                            <th>Quantity</th>
                            
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                    <c:forEach var="table" items="${rs.rows}">
                    
                        <tr>
                            <td class="align-middle"><c:out value="${table.Um}"/> </td>
                            <td class="align-middle"><c:out value="${table.date}"/></td>
                             <td class="align-middle"><c:out value="${table.price}"/></td>
                            <td class="align-middle"><c:out value="${table.venue}"/></td>  
                            <td class="align-middle"><c:out value="${table.qty}"/></td>
                            
                        </tr>
                        </c:forEach>
                        
                        </tbody>
                </table>
            </div>
            </div>
            </div>


    <!-- Chart JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <!-- Chart JS Plugin for displaying text over chart -->
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/chartjs-plugin-datalabels/2.1.0/chartjs-plugin-datalabels.min.js">
    </script>

    <!-- Script -->

    <script>
        const wheel = document.getElementById("wheel");
        const spinBtn = document.getElementById("spin-btn");
        const finalValue = document.getElementById("final-value");
        //Object that stores values of minimum and maximum angle for a value
        const rotationValues = [{
                minDegree: 0,
                maxDegree: 30,
                value: "Gift Hamper"
            },
            {
                minDegree: 31,
                maxDegree: 90,
                value: "Zomato Offer"
            },
            {
                minDegree: 91,
                maxDegree: 150,
                value: "Netflix subscription"
            },
            {
                minDegree: 151,
                maxDegree: 210,
                value: "Amazon vouture"
            },
            {
                minDegree: 211,
                maxDegree: 270,
                value: "Boat Handset"
            },
            {
                minDegree: 271,
                maxDegree: 330,
                value: "Gpay-10% discount"
            },
            {
                minDegree: 331,
                maxDegree: 360,
                value: "Gift Hamper"
            },
        ];
        //Size of each piece
        const data = [16, 16, 16, 16, 16, 16];
        //background color for each piece
        var pieColors = [
            "#8b35bc",
            "#b163da",
            "#8b35bc",
            "#b163da",
            "#8b35bc",
            "#b163da",
        ];
        //Create chart
        let myChart = new Chart(wheel, {
            //Plugin for displaying text on pie chart
            plugins: [ChartDataLabels],
            //Chart Type Pie
            type: "pie",
            data: {
                //Labels(values which are to be displayed on chart)
                labels: ["Zomato Offer", "Gift Hamper", "Gpay-10% discount", "Boat Handset",
                    "Amazon vouture",
                    "Netflix subscription"
                ],
                //Settings for dataset/pie
                datasets: [{
                    backgroundColor: pieColors,
                    data: data,
                }, ],
            },
            options: {
                //Responsive chart
                responsive: true,
                animation: {
                    duration: 0
                },
                plugins: {
                    //hide tooltip and legend
                    tooltip: false,
                    legend: {
                        display: false,
                    },
                    //display labels inside pie chart
                    datalabels: {
                        color: "#ffffff",
                        formatter: (_, context) => context.chart.data.labels[context.dataIndex],
                        font: {
                            size: 13
                        },
                    },
                },
            },
        });
        //display value based on the randomAngle
        const valueGenerator = (angleValue) => {
            for (const i of rotationValues) {
                //if the angleValue is between min and max then display it
                if (angleValue >= i.minDegree && angleValue <= i.maxDegree) {
                    finalValue.innerHTML = `<p>Congratulation !-<%= request.getParameter("Umail") %></p>`;
                    spinBtn.disabled = true;
                    break;
                }
            }
        };

        //Spinner count
        let count = 0;
        //100 rotations for animation and last rotation for result
        let resultValue = 101;
        //Start spinning
        spinBtn.addEventListener("click", () => {
            spinBtn.disabled = true;
            //Empty final value
            finalValue.innerHTML = `<p>Welcome in New Year Celebration !</p>`;
            //Generate random degrees to stop at
            let randomDegree = Math.floor(Math.random() * (355 - 0 + 1) + 0);
            //Interval for rotation animation
            let rotationInterval = window.setInterval(() => {
                //Set rotation for piechart
                /*
                Initially to make the piechart rotate faster we set resultValue to 101 so it rotates 101 degrees at a time and this reduces by 1 with every count. Eventually on last rotation we rotate by 1 degree at a time.
                */
                myChart.options.rotation = myChart.options.rotation + resultValue;
                //Update chart with new value;
                myChart.update();
                //If rotation>360 reset it back to 0
                if (myChart.options.rotation >= 360) {
                    count += 1;
                    resultValue -= 5;
                    myChart.options.rotation = 0;
                } else if (count > 15 && myChart.options.rotation == randomDegree) {
                    valueGenerator(randomDegree);
                    clearInterval(rotationInterval);
                    count = 0;
                    resultValue = 101;
                }
            }, 10);
        });
    </script>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous">
            </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous">
            </script>
            </body>
</html>