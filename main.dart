
import 'dart:ui';
import 'package:loginanimation/signup.dart';

import 'FadedAnimation.dart';
import 'login.dart';

import'package:flutter/material.dart';

//void main() => runApp(MaterialApp(home: MyApp()));

void main() => runApp(MaterialApp(
initialRoute: '/',
routes:{
'/':(context)=>MyApp (),
  '/signup':(context)=>SignUp(),
'/login':(context)=>Login(),
},

)
);


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Sign up'),backgroundColor: Colors.indigo,),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Stack(


                children: <Widget>[

                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/background.png'),
                            fit: BoxFit.fill
                        )
                    ),

                  ),

               Container(

                 margin:EdgeInsets.only(top:90 ,left:120 ) ,

                 child:ClipRRect(
                    borderRadius: BorderRadius.circular(150.0),
                    child: Image.asset(
                      'images/cow.png', height: 110.0, width: 100.0,),),
               ),
                ],),

              Container(
                child: ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (rect) {
                    return LinearGradient(

                      colors: <Color>[Color.fromRGBO(130, 158, 251, 9),
                        Color.fromRGBO(103, 104, 251, .6),
                      ],
                      tileMode: TileMode.mirror,
                    ).createShader(rect);
                  },
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(29.0),
                    child: const Text('Who are you?',
                      style: TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),),
                  )),
                ),

              ),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children:<Widget>[
            /*  Container(
                child: ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (rect) {
                    return LinearGradient(
                      colors: <Color>[Color.fromRGBO(130, 198, 171, 78),
                        Color.fromRGBO(103, 114, 251, .6),
                      ],
                      tileMode: TileMode.mirror,
                    ).createShader(rect);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/BuyerPage');
                    },
                      child: Text('A Buyer', style: TextStyle(
                          fontSize: 27, fontWeight: FontWeight.bold),),),
                  ),
                ),


              ),
*/

    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 50,
        width:130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(130, 158, 251, 9),
                  Color.fromRGBO(103, 104, 251, .6),
                ]
            )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(child:Text('A Buyer',style: TextStyle(color:Colors.white),) ,),
          ),
        ),
      ),
    ),


    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 50,
        width:130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(130, 158, 251, 9),
                  Color.fromRGBO(103, 104, 251, .6),
                ]
            )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(onPressed: (){
              Navigator.pushNamed(context, '/login');
            },
              child:Text('A Seller',style: TextStyle(color:Colors.white),) ,),
          ),
        ),
      ),
    ),

  ],),


            ],),),),);
  }
  }
    ///cP5XQ0DQAxG9xueREbHHzrVc6lYAzGWpUAs0xGMx7zzz7mtP8r+ov+b/AE+vdP1KOMkYMPcEEVur5EnW3Lf4PiUJbtGMgN48E9sT++q630f6zViqXSoLGMpxOoBlSOQT/ua04+eZdWaWx5ZXYUrFTWVdDUpSlApSlApSlApSlApSlApSlApSlApSlApSlApSlApSvDQRfUeuW0uTe4AEiTvxPtzXHdZ6zcvXMcsVIj7Yg68Fvf5HtWX1T1uV+NhUxQESZczI50R+3ioHV9GMAwYF7Zk5L3CCG0wEwJ2PmvG+X8rO53DHqMcrbUTqneGR9kFtqpJHiAAN6j5iodi7bA39zI9shSY8DEcbJGv3mt/99Kdys2RnwSTvZ7gDHzEwd1WdTea4ZZFaTwY7BB7ixBmRIiN+YB3jxW3r6Y0t9cMzghy7lzLKIWfIkEAwdGPG4kjfd6sgZZyB8B2tnuI0ARMDjXA5negdNcMhkUL3SJEC2CRBVRG1Hgce+6s7dtETMzIkrABnIzAOv942K6ZljFVV0vVZ2pFx5kTmg8QDIhgoMf8AyrTZ9QyfApcLMY1IVTuDmOe0cqvniasZDLItMp/xOpZwOSRsQQGO5mOJrTavZzLNC/0yZKgqFymCImWEHjtNXuM0N7KcRCMmiYBtlpmAC8/lrjjXxqt6246CLlq4yuWiDkSSNACWZWXZ/iKz6K+xCice9lAFy2ZGh9xmk6yHABIDGImp15sVVznHiCQBAgSJIkTJHGveotxwmhXocUJKEgDIpENDATJgh5XwOT43W61eWTGwCIXBVaTCp3AgZbIjRmZrG912JUoFifA1sxIEyBlzvg/FZdTfR5RzDMNug7tQW4BA2W3MkccVrO50Oo+mPqJ7RFt925MiDKz+obmJJJr6GjgiQZFfGrlu04hQsjRDH+pwQAZMn9m9xV39K/WIssOnvNI2RCYkbn38bkCeDW3Hya6rfj5NdV9MpVf6V6zZ6gE2nDRMjhhBjandWFdEu2+ylKVIUpSgUpSgUpSgUpSgUpSgUpSgUpSgUpSgUNKGg5X6o6aWY7PaIBkgHYMbjfmuda2WQ4ypAHtuDJWfYmf5jirf6qVvutlMHHE54wvBxI4MzP8AtVSvVIhKjgcjQEnZkzsn9vNfO/K3+XLTHK9qb1Msu5U7QAkCApJGgB4JmTP81GvO5RreQLESxKhlieBwYHHEaialdZ1qPci4cE0xMqY32HxILfPH81F6vqUtpEZfz8yT8DXI5g+9W49zW2FbbFg2x9za8ltzkeJXHQ0SfEdvyKk2LSwCxiO4xl3SBjyeB7QP21UOz1zMPtM4LKQDrgHQ7Yke8mfFard24uBUSHA7iQIHBUjyZ+BBqc7leh71FyCStt1VvA2AxiSQJ7p8b/asbhvFgS4eBJwtKCRvMEkEYrJAGiSfEGq/qHyeXx5YsRJFvRK5KF3kVYgzuKlvdZipIebh7ZUtb3t1bFlDfjMkefMCerD+PVHrIdL2EHPsyUW2Ak8KgYkkAwCQMTxxTp9AR2suJKI0BHhmwLsSirHdoQZEUF5ys9oJIOwbgzxTgAS3BnQI5yitXV9OF78HIXIf0mCsqSZyUjuJkApMjI/Ma/eqI/QFkVne6l0jtDw5dUaIItQJg+CBog6FWAa6wAG7ZH67YUhNjH7eI8EGJgQdiogvoSCCVYQWZcrdtt9yB1ElSo5JPEAEmvA+AbSLLEtna2QSSy67iQGkEjYMRqp9iVeQ2sSttAF0BJLspxEIJiTj88DmNzx1COq9uonwAdQYLczJGv8AiqzppYhB/TbcQVVntkARtIYTA4kmNbNZI2V37YYqQSCOwENOzJUFhIIEQe7zUfaUq31Vy27MjGNR3sCdeGJgMQDoaEAmu1+mPrZHUJe7SABlOQGv1Mdk/MRM/vXB9VdQabBcySuSjbkN7gwQRBnWqwtugAIhrjLIxGCsVJJ7QYHPJ3utJlcU453F9zt3AwBBBB2COKzr5t9KesPadbbN/TZ4jH8Z0B7+3xX0a3cDCQQR7jYrowz8nTjl5RnSlK0WKUpQKUpQKUpQKUpQKUpQKUpQKUpQKUpQc79X2FZFyXSmcpGtgYhf1Fp4iOa4Tq7ANxkURB3pgxJ/xgiQJEDjX+dfU/UOhS8ht3BKmOCQdEEQRscVxP1J9Jspu9QjKQBl3E5qF5AP6tbExv8AzrzvlfGyyy84x5Mbe3G9RnZYyA5mI+2JUZGYnSmY8T7RXty4jBWWSEOIUyzLI5L/AOKTHvBmpP3Q5DFmZzob53oDXMb/AJqw6jXSLbJEZFg0AgZGNQee6BPsa8+ZWstKa2qtLdqlgBrEOTExqJg+3/1WZ6QnJGjvJbiRPcqsu4HMHZ8a81p9N9Qs4t942gksVlMvuLiDAXlNfHg1Zeo2Tb/q2YUOcgcshJGziw3KxoRwfJM6W5S6qNdK/rehwQP9y44WSELA6IgqS0c6mP8AitPX9RmWQswwOwULCWWO4bCqAZnLkTBqP1XWEoxvNkqkKrhUK5B40G9hGv8Ajmi6e2l4uFJFsFgXLfaxLAyuIO1OI5nQNb8XH1vIWlhg9y4beTNkgLfdL5KRhbgKQRIQgmNKW5nW7p7N4xca2VYBO+BcOgSGVrhlPyH6eJ41W+0mKhT2ooUR+ahRlAdViQMSZAmW2QOY14sFJVs2KF2LYumDroLJBBUkCBvfmui3f6iRYv22yV8CGiCA2LoBACh2JY98CB84msDbFtmO0yYZS+IyBxxCHQEbKsNAyPasB1eTlyWCsSEGGSMSv20NovDFTl3AfjI/etHU2kudrBC0EfcRpxZWAMAsS59pHJPip1rsS2JDYiWI2GKZrrcZDnuUwIAAIM1oupLj7gVS3cSrd8AqQSxnejP7kAnRrLo7d+2VR2uXQogkYIqkwRbI5kEzMwcor3rbttXD/eQSMVyUOY8gEGYEzBGoFZ52ixFrNQjqJVwyjjLyjKCMYxkcCY8eY1rAaOzsg5baeG33TIiAQJPkbrDo8G8EvGLGSAVGyBA7oOxB4asbHVC7k1t2knABgHMKcRiJBOwSd7irz0JHRda84tEN+JTyoGuDoeeJB96+qfQV8N0oAuNcKswJYQQZmPkQZn5/ivk322JUSujLhlhvyjtEkrB99xuu/wD7Ouugm0xHeMh3eRyADsaPHxV+PrLa/HdV31KUrrdJSlKBSlKBSlKBSlKBSlKBSlKBSlKBSlKBWu+wCkn2NbKrvWr0KF9z/oKy5s/DC0cr1XR2kIYW1EbEAaJJMgcAyZmtLXEvKbRAUtOLaPdBjR86qy6yxKxXI+rM6OuoGamfMrJ1/BNeHvK1jenN9Tdu2OodMEKgBAMOyIIhhl5UEA6g+9dd6J1iN0oyAKsuY1pJIKqB4gFefmuQ9b6tmuO0EN2ABgdE7HAiNsP4mvfSQFtFfzdgboUkj7doKoBZvJkCf3mujPG5YzftlLpE6tXuk24XBGlZ0kmV8HwRM/vOq0HpzkRYbDGCwc5/cYkgFVA9mO+BXQel9PjZaW07uyyZy44E+BMbkeeKrjatJbzSQ7XGLkptUJ7QQd9p4H6pqcMt24z6Qsb5A6YKWW5cBIZlZVALaALCIAkfwKo/v2hF4IysSYbVz7bAjF2SDipAgnloHGq3XyuCsdhAbhHeuRUzjGgDIznkcftj0KR/VBCtduZxcbHtmQTlywiOCP5rfjx8JRuCDm6QQswcmYlZD5gEkKw8qnwPas2SBjhcKH8jkqkgLGPdG4IIHPM72dN24oJZIMrsROSsRuRwwjXkzMTWF292F2tsCGYNKmUAaCwY8uUbHiTA5q2El/kl71Nm6rIrWyVPbdAaCuUFbg4Ewo7iCZPnVTES1eQhhKySCAknHf6QMWgAETutCY8rceEyhgAC4B7g8wJAAPA/4rX1vVPByIZe1Sx2pVgswRBI0AR4FW9ztDfJTE45d+2CnFcmXuG42Nfx8RXvXdI8kHtYzsIuLkZmSoMyBAB5/wCfHuE24VguX6oBGA33nyGMTPEz4rV6jr7NwmGQMv4FoBC/iYAJOIieQefFJNCR0bXLhR8wrBTmFSMgTE5BtiJEe61ffSd8r1VpgwnIBjz/AOJEwIBnngwN8zQFlLMUJBUFwVhtsDkoE73BOvbUVv6a/oZO5ZcywgSdAkiNEL4I5873TX2mXt94Fe1TfSvrCdRZUhlLqAHA8HwY9jz/AJ+1XNdku5t1S7KUpUpKUpQKUpQKUpQKUpQKUpQKUpQKUpQKofVbk3I9tf8AdXPUXcRNc31b8nzXn/P5OphEWoXqnUHEwYqo6Tq7YZGgB0bJQZhiJ4P7TUrrgTAqi9WtMpVl5U6+fevMx97Y32j+p2Rce5dJxLEkgsSJmfP8VG6W47oFCqLVogEjtk8SzCCwA4HzUjo/Qrl4y2hyff8Ayrpeq9EX+7NaXt0I8QQQZ53x5rfGZfdV8VLc6K2LXbijRo4ghZ+Avv7c1zQs23i2l7JnaXKmAwAgIo1x4J/8ifarjqOqb7bMW4BnEAsWE/hEQNb+I3uqz1JgZb9WJYMMQI40obKYPHPxThwyila/VQSxAGDmRKtBDPiu9kYwJOvB/YxX6xcipuKrbXd2cHViQzga34C+f3rD7lvOLafdyKqrXFCrhjBBUCNSDMT4rHpOjHT52w+DBi7hYCFQe1QW/VloRGvau3Cax1T6b/7w4uIMWAuG4Fgg4iFUgvc0QxAaB+x4qP8A3u2ACW7RgHD/AHBm6jAxEjR3l5AIqSbd25GmUywx7AyOykx3fmDMkrGhWkO33Pto8qoYOqTkqaXTNojTexEfFWnrse2ulsd7EFirlgERlxUtPY3B0ePIrf03UOUjZJ/Rq3jbB2MiZOzET/tXlu9cQBGbucfbHAgaiCdfqJB37VFdEC3Dj/UIgsSQSxGLbMREzr2IpjdiT/dgO4PhIPapLjPYkKRtdkH+TXt+6wAUvMg6Bx7FhmBy2f1CR7CoHT9THTliGhMZybIMeAQPCFpHxlNaFvu2OJS2Z+7AMAgkMCq+DK7/AHHvVtJ0trKhSTaksX4lV+2dxqFOMNMyORUuwHL25CmAC0Et7QVY+Nb/AJnxUSwGUjZ7ogBRBaWbIhhOgDB3xH7bunvgl7vgArsSNbBM75B0B48zUaQ+if2UsCl8n88lDgDQiRpvPnXj+a76vn/9lpP9eUPI7tASdsABrn44FfQK6OOaxdOH6lKUrRcpSlApSlApSlApSlApSlApSlAqP13VraXNuJA18kD/AJqRVb61bR0NthOUj9gdE/61ly5+GFo13+ozkjgVU9SJMV56e7r2XNkduXhh+lv5HI96kG3uvGzz8+77U9oa9JJr2/6cMWAMGPyiY/arJQFFROpOQg8f71HUiLI0+nWVReQR7/PFRPXeo/ptrIERExzUu7chcQPHFc91d64VZACzQfkfEkVfHL6RfSm6xF7X2MSToY5dpUhhEHkj/wDaqbb5EtiFPEIjFtSQc+VnKCfEbqyueo2m6Yk6bjf5TPsDvide/wA1znqHWDM2lYky2OByCCJbLQnYHHEVfh8stysKy9ZsrHAiHZYg6IE6GyDGjx/FedL04kobmSlQ7MyP9xl5CMswVB58bPvULovVLhLBVlQVN3IQTDSSscCATsedVI6i/k5tkrkVLYFpgwW7Xkdnd+POuK6PC60JnXWLVuW3Pa2QbYblQJMmdDidc1T9fbMSrHLsuOmMsWZiCMgO2Twnmp3T3g+IW2CYWPufiAZIDXDMFSpAXt/11KFlsjIkEBxdccsdAsoHBxiFnY8CDV8JcYlXnqMlZe4NIYSAwIy7SGUaMA9vv81mmNxhgWzBIVmW48gH/E41xjPH+VT7vTqpLOFfRzJCgIDGIOOgPy2ZA5PkVlJA1J8SCCp3AA0BI7djUqferW6Q19QRhvtUkA//AM2xH69gQToHc7HxVd07E3IEnAMh7gSqchguuBHvxxqrK5aLbb9UQzlhlOmDJoDieeP5iD13SIjcNk8LiANqScoP4zAB/YRzSXY39ORpspFhhB74jjunR4mfdq39R16oGxiHll3M/iCSD4JMQNwAdVUp1ZW81tFEADEg6YlgsNPGwR/AqdZssrNcl+8aUQwXH2JEEHnx/NSnT67/AGX/APpn3xcZePIAkz5ma7KuT/s3+3/dmxHd9xzc/wDcYI/iCK6yunD06cP1hSlKssUpSgUpSgUpSgUpSgUpSg8qNc65AwSe4/6fvXvXg4HEwfj281UW+lWczyeJ8CuP5Pybx2SQXN7qVA9zVUzEkk8msgR7issa4ObnvL/xCFfSSK3IABWeG91hcuAfNYYzXaGlpNYNbrJ758RWHTXwTyDPn5HINXws3pDB+mnkwPYf91U/Ud42LOVsQSQoMTB54PMxH810NyuI+ruoYXlBHZjGm1jkO7EnbgnwOB8mtfSmfUcj1KopKQASGJxDEqBMCF235LwYg1BtoZFxSyEnZVUXFxCumBOwFaTrxVp6vc+4QASN8YiYDcSDJLc4j44io3S9NEhQMizMW7lZ0G4ViDye3fgc1thetsFf1fpsgqJUkQW+4dS0gMFEsCTjLea1H051AhhnaYDOFhDAIURPlo9verPbgOR4OQIkKCMzkAQTBaQN+4qJbVrYAKJbdMUaJllJUi6I2upBb5rfHdiUno3uAhXYOy4kuxZVKEq2SqYGUlhM+/FSbtlZV7cBpYShK5aK4TBGmJM/+ETsVX9bbCuhDqMGgg5sVQFgAbbSTIPt7VKG4ZWbF1VIXhVDEEZOI1lMQeai73sbhcEAjHGe1lkKynRKgfhtt+/zWd4MD2MDkNAgFWKljEjc70QOedzULqFVrTwZ7WQAg45huQVOJx58DVaOm65GARitth2lTkqwBl2kHTbI14NMse9iZ1PVlW7gRKh2DHUz2hYBgQGG+Y8zWdhswq3G2TkhLckJE6aOD/rUWzkHS4IxbNSciotKD+loJ4Y8z+VbyAcFUoqsWPap0REAsvnH+SSfFW0I/wDdQrD7bgI8tJORBgsTMx5j+akWbCqZaO04qQYLAkwCJj4+NERWXU44OqrEKMV2TvEQJje4g8arSrZBFcaMNJGW5IEyujwCQfFQPpv9lnVFvvLlIGDFYOnIgxPGlAj4r6BXyf8AsuLr1RAEZI2YJLEKCMe7gjI6PPca+sCunjvTp47/ABKUpWi5SlKBSlKBSlKBSlKBSlKDXeBxMcxVRdNXZqu9SsayH7f9Vx/L4fPHc+hX4zWmz1nE6kkRMxuK9sdQDPuOR7Gqfq7x7sjGMx/nqvH1pXa3v9TUZr8mBVTa6ssJ814/WQKmf2pclubgHNUn3nt3brAjByrLvhohtfxVb13qrRKgke9dR6X9NWyqjqbh+7dEqqtGI50PJ+eK34+LLk/VHtv9N+9fUMqwvGTGBI0Y8ndc39Q27xutZDCE/IFR3riSY3IkjR/0r6X0nTLbRbajtUACuL+sE/u9w3o7bpXNyBCjStEDZgA75rs5uDwwlntbLHp88boranB0u4yciCQuRAI7gCQf9qn/AE/0ds52kUAq2SnMsAsgGdDc65rO/bcB/t3C2Zdu047MkZBTrtZT8H5qCvqCW1hS2TAyZybIARO9AN+35HmK4rvLph6qN6t0oS4YXMglcD+oXJDHKOdKd62feq89RbHbcS4vYrHI5EEAqArbhp4M/pPvNSb1wshuXGCucgwXGRsBSd/E6ggz4Na+leVV5AglVa2Dg40snnJpnXzXXx2zHtVHKQgJW5ce5I3G9AZQ0jUbGvHtW30lx9sEACJCqFxdVEBe4nbNCtA9/PNaev6h+xiFYhlDglkmVZVL+/cdH54qY90zBJyYKwzx0CoKnmIlSIEHXmtbJcVvpEv2Vds1DGCGaVIOE4aDHFuDoTs+K2WbJJZexv6hIYYmWie4RsAagSJXdbHsoIMFpygEzPsQGAAGzIXQyHmsLpkAooxVp0ASDEAsoEFiT/8ACmN6GdkEFfbuYNns8BYESwIjR9vmskunFgx7s3iRG8slLCOfMsCPHE1GF0jtwDMVxIQMp7lJPmNwBrxFe9MzKoLwSYbLuhSAVBOXDczrzT6QmdarYtiuipZmJkkBZxAJ02udeKjB7hwA4xJIkee5tGNkFYkmNVK6q6RadgT+M6IJMkMcTHmY/ipH0x6b/ebtmwinFgxZpJwTRP4nnu4P7/FTJs1vp3v9lfpzQ/UumOShEMQGX8iR7jgT8GvoVaelsLbVUQBVUBVA8AaArdXVjjqadWM1NFKUqyxSlKBSlKBSlKBSlKBSvKUHtYXFkEHg1lNeFqWbHN9XaCE63PPv81SdexYEeK6z1a3IyH7GuJ9WvYkg88R814vy+Pxy1FckL7+IqR6Z6Xe6kyq9v+JtL/Hv/FWXonoGRFzqBrkWz5/93x8V1q9QAIEADwNAfxWnx/ibm81Zjv25n1L6UuYBLTK86M9mPz5mr30P0denAJYu+IUsfbmBJ4/6FSD1IrA9VXfhw8eF3FpJFgblUP1p6b/eeldFEsveok7YeIHMgkRUs9VWB6qtcrLNUvcfLLDtb/plTbI5ttkGBIBllJ2YAgmdAxXNeoXnmP0mQ/fAYTIDRtdaDA19P+ruhN5rbggAAqxjgQYLGdgeP3+a+b9Y2jAA/OeIMECB8iTFeV4Xj5HNlNM0UFVWRIjHZMBdDuY934+fbzNQr5hsMwoX+qcgfwJOEyQW38Txuo6m4EwVwZmSVJM+QfB555j2rSLRZixFvIiBkN5KNxEBPOzPnzW2Em6hvTrCwRrbAEbZSWY/4pAMjL2EGIrbY6oszFWa2kJi/wBvbOWJ75Bw7iR4Fe9IrwxlgxPMEFZIBLQYBxnQBMVpFg/dDFnEwoxmRAIUKrfkFYDZEia1xynojc91HBBIEFdfkcwCkIAcokD4PsZreERmYQAGaQT2K2oBCkdsgn9ypNR+kuNiCxlgASBjwAZDQQZB3z7TW0EqAA0RoLIByEHIH9QG9T7bqLRrF5IXNguxLCSNflMeCCO7k6rZfYsC3ichIbXnStsa9vb5igCOpUQYJksAQwldftMARWfS/cu4oAm2VFjtHd26nYP8+KrvaUq3YuXsLVpGbIiYD8kriJjtHdydCK+0fSP0+nSWFSAbhANxwIk+B+wGh+1RfpP0S30drANm5ADvETHAA9hvmTs7roBdrr4+PXdb4Y67bxXtag9ZBq100Z0rEGsqgKUpQYzSscq9mg9mvZrCaTU6GU0msSaxmmhnlXhesJrGg9Z61OxrIisCKrUbR7zGuT9a6G9mLltFLLw3kfJBFdiyVqa1WPJxTP2iuO9N6bqVLM5Ys3MkwP2E1aoLnmrg2axNqox4vGK6V4DV7Bqabdamt1bxEUzWDTUhlrWwpoRLwkQdg+Dv/Sub+oPRUe0/2rSfc/JY7dyCfgSBXTXah3qpljKrXygWHtgl0dZlgCuOudg8zxHjVYs4gwccmkjIbxEhjqOYH813f1DaU2ySuTRA1Pnjg6rh/WGFp1DpiIjRynunLjiPFc1lxyZWMej65gdrOvyyy0ZcCfJ/y4r26yueZDdm8hvZmJ/L5/6FV/3+498qADsa94g60Sa19X1wxGMGZMjYiBIj3BH+tTJ30aTsm0p3OTSZAPuDvjQ87raWA3G/xJ2O4EmSSZAI155FVQ9SxHMsAACSDrmB/uT8mtY66SdzkfAEcyBoDwav42+zS4vXmMCVXP42AB

    /*return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadedAnimation(1, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/light-1.png')
                              )
                          ),
                        ),),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadedAnimation(1.5,
                            Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadedAnimation(1.6, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/clock.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadedAnimation(1.7, Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      //FadedAnimation(1.8,
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      ),//),
                      //SizedBox(height: 30,),
                     // FadedAnimation(2,
                          Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(130, 158, 251, 9),
                                  Color.fromRGBO(103, 104, 251, .6),
                                ]
                            )
                        ),
                        child: Center(
                          child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ),//),
                    //  SizedBox(height: 70,),
                      //FadedAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),
                    InkWell(
                      child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Don't have account?Sign Up here",style:TextStyle(color:Colors.red),),
                    ),

                      onTap: (){
                        Navigator.pushNamed(context, '/signup');
                      },



                    ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    ); */



/*new code
   return Scaffold(
    backgroundColor: Colors.white,
    body: SingleChildScrollView(
    child: Container(
    child: Column(
    children: <Widget>[
      Stack(


        children: <Widget>[

          Container(
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.fill
                )
            ),

          ),
        Container(
          margin: EdgeInsets.only(top: 150),
          child: Center(
            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
          ),

        ),
          Container(
            margin: EdgeInsets.only(top:150,left: 70),
            child:Icon(Icons.account_circle,color: Colors.white,size:50.0,),

          ),



        ],
      ),



    Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
    border: Border(bottom: BorderSide(color: Colors.grey[100]))
    ),
    child: TextField(
    decoration: InputDecoration(
    border: InputBorder.none,
    hintText: "Email",
    hintStyle: TextStyle(color: Colors.grey[400])
    ),
    ),
    ),
    Container(
    padding: EdgeInsets.all(8.0),
    child: TextField(
    decoration: InputDecoration(
    border: InputBorder.none,
    hintText: "Password",
    hintStyle: TextStyle(color: Colors.grey[400])
    ),
    ),
    ),


    Container(
    height: 50,
    width:120,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
    colors: [
    Color.fromRGBO(130, 158, 251, 9),
    Color.fromRGBO(103, 104, 251, .6),
    ]
    )
    ),
    child: Center(
    child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
    ),
    ),//),
    //  SizedBox(height: 70,),
    //FadedAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),
    InkWell(
    child:Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text("Don't have account?Sign Up here",style:TextStyle(color:Colors.red),),
    ),

    onTap: (){
    Navigator.pushNamed(context, '/signup');
    },



    ),











    ],
    ),
    ),),
    );
    }
    }




*/


















