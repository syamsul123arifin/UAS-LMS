import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentInstructions extends StatelessWidget {
  const PaymentInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Instructions',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF1A1A1A),
          ),
        ),
        const SizedBox(height: 16),

        // ATM Instructions
        Card(
          elevation: 4,
          shadowColor: Colors.black.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ExpansionTile(
            title: Text(
              'ATM Instructions',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1A1A1A),
              ),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInstructionStep('1. Insert your ATM card'),
                    _buildInstructionStep('2. Select language'),
                    _buildInstructionStep('3. Enter PIN'),
                    _buildInstructionStep('4. Select "Transfer"'),
                    _buildInstructionStep('5. Select "To BCA Account"'),
                    _buildInstructionStep('6. Enter account number: 1234567890'),
                    _buildInstructionStep('7. Enter amount: \$${99.99}'),
                    _buildInstructionStep('8. Confirm transaction'),
                    _buildInstructionStep('9. Take receipt'),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        // Mobile Banking Instructions
        Card(
          elevation: 4,
          shadowColor: Colors.black.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ExpansionTile(
            title: Text(
              'Mobile Banking Instructions',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1A1A1A),
              ),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInstructionStep('1. Open your mobile banking app'),
                    _buildInstructionStep('2. Login to your account'),
                    _buildInstructionStep('3. Select "Transfer" or "Pay"'),
                    _buildInstructionStep('4. Select "Transfer to BCA"'),
                    _buildInstructionStep('5. Enter account number: 1234567890'),
                    _buildInstructionStep('6. Enter amount: \$${99.99}'),
                    _buildInstructionStep('7. Add note (optional)'),
                    _buildInstructionStep('8. Confirm and enter PIN'),
                    _buildInstructionStep('9. Save transaction receipt'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInstructionStep(String step) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        step,
        style: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF666666),
        ),
      ),
    );
  }
}