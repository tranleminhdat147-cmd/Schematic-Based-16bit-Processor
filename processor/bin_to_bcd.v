module bin_to_bcd (
    input  [7:0] binary,         // 8-bit binary input
    output reg [3:0] hundreds,   // BCD hundreds
    output reg [3:0] tens,       // BCD tens
    output reg [3:0] ones        // BCD ones
);

    integer i;

    always @(*) begin
        // initialize all BCD digits
        hundreds = 4'd0;
        tens = 4'd0;
        ones = 4'd0;

        // perform the shift-and-add-3 algorithm
        for (i = 7; i >= 0; i = i - 1) begin
            // Step 1: check and add 3 if any BCD digit >= 5
            if (hundreds >= 5)
                hundreds = hundreds + 3;
            if (tens >= 5)
                tens = tens + 3;
            if (ones >= 5)
                ones = ones + 3;

            // Step 2: shift left by 1 bit
            hundreds = hundreds << 1;
            hundreds[0] = tens[3];
            tens = tens << 1;
            tens[0] = ones[3];
            ones = ones << 1;
            ones[0] = binary[i];  // bring next binary bit in
        end
    end
endmodule
