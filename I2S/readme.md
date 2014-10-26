#**I2S Module**
---
This is an I2S communication module. It is a **master** module, meaning it coordinates the whole communication process.

![enter image description here](http://s9.postimg.org/952v7pp7j/I2_S.png)

It receives the following

 - MCK: This is the data clock. The device will latch the incoming serial data to the beat of this clock
 - LR: This is the left/right clock. HIGH = left, LOW = right.
 - DATA: This is a 48 bit vector of the data. It is made of a right channel (47 downto 24) an a left channel (23 downto 0). The most significant bits are 47 and 23, of course. Keep in mind that the data must be in 2's complement (I2S Specification).
 - CE: This enables the operation of the I2S Module.

It outputs the following

 - SCK: The same as MCK.
 - WS: Word Select, the same as LR.
 - SD: Serial Data. Its the data vector shifted out bit by bit.

The diagram is the following.
![enter image description here](http://s8.postimg.org/kcy2o9exh/I2_S_diagram.png)
Here is the PDF of the I2S specification
 https://www.sparkfun.com/datasheets/BreakoutBoards/I2SBUS.pdf
