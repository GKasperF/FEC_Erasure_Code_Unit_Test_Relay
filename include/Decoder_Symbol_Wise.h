//
// Created by elad on 2020-05-18.
//

#ifndef FEC_ERASURE_CODE_DECODER_SYMBOL_WISE_H
#define FEC_ERASURE_CODE_DECODER_SYMBOL_WISE_H
#include "FEC_Macro.h"
#include "FEC_Decoder.h"
#include "FEC_Encoder.h"

namespace siphon {

    class VariableRateDecoder;

    class Decoder_Symbol_Wise {

    public:
        Decoder_Symbol_Wise(int max_payload_value);

        virtual ~Decoder_Symbol_Wise();

        unsigned char *codeword;
        unsigned char **codeword_vector;
        unsigned char **codeword_new_vector;
        unsigned char **codeword_vector_store_in_burst;
        unsigned char codeword_new_symbol_wise[30000];
        bool *temp_erasure_vector;

        Decoder *decoder_current;
        Encoder *encoder_current;

//        FEC_Decoder *decoder_current;
//        FEC_Encoder *encoder_current;//, *encoder_old;
//        Memory_Allocator *memory_object;

//        void
//        receive_message_and_symbol_wise_encode(unsigned char *message, int received_seq, int latest_seq, int n, int k,
//                                               int k2,
//                                               int n2, size_t *UDP_loss_counter_, size_t *final_UDP_loss_counter_,
//                                               size_t *loss_counter_, size_t *final_loss_counter_, int temp_size,
//                                               unsigned char *generator_s_r, unsigned char *generator_r_d);
        void
        symbol_wise_encode_1(int k, int n,int k2,
                             int n2, size_t *loss_counter_, size_t *final_loss_counter_);


        void rotate_pointers_and_insert_zero_word(int n, int n2, int temp_size,int codeword_r_d_size_current);

        void push_current_codeword(unsigned char *message,int n,int n2, int temp_size,int codeword_r_d_size_current);

        void symbol_wise_decode_1(unsigned char *buffer, bool *flag, int k, int n);

    private:
        int max_payload;

    };
}
#endif //FEC_ERASURE_CODE_DECODER_SYMBOL_WISE_H