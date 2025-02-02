//
// Created by silas on 11/03/19.
//

#ifndef FEC_ERASURE_CODE_APPLICATION_LAYER_SENDER_H
#define FEC_ERASURE_CODE_APPLICATION_LAYER_SENDER_H
#include "Variable_Rate_FEC_Encoder.h"
#include "FEC_Message.h"
#include "Payload_Simulator.h"
#include "ConnectionManager.h"

class UDP_Manager_Sender;

class Application_Layer_Sender {

private:
    int seq_number, T, B, N, max_payload;                   //seq_number, T, B, N and counter are used to generate an
    int T2,B2,N2;
    // FEC
    // message

    int T_ack, B_ack, N_ack;

    //siphon::Variable_Rate_FEC_Encoder *variable_rate_FEC_encoder;

    bool adaptive_coding;

    Payload_Simulator *payload_simulator;
    unsigned char *raw_data, *codeword;

    ConnectionManager *connection_manager;

    int flag;

    unsigned char **codeword_new_vector;

public:
    Application_Layer_Sender(const char *Tx, const char *Rx, int packet_size,
                             int packet_interarrival_time, int T_value, int B_value, int N_value,int flag_val);
    ~Application_Layer_Sender();

    void generate_message_and_encode(unsigned char
                                     *udp_parameters, unsigned char *udp_codeword, int *udp_codeword_size);

    void update_parameter(int *response_size, unsigned char *response_buffer);

    void set_coding_parameters(int T_updated, int B_updated, int N_updated);

    void send(int message_size, unsigned char *message_buffer, unsigned char *udp_codeword, int *udp_codeword_size);
    //void decode(int coding_parameter_size, unsigned char *coding_parameter_buffer);

    FEC_Message *message_transmitted;
    siphon::Variable_Rate_FEC_Encoder *variable_rate_FEC_encoder;

    float debug_rate_second_hop;
    float debug_rate_second_hop_curr;
    int debug_rate_second_hop_num_packets;

    void message_wise_encode_at_relay(unsigned char *received_data, int orig_seq_num, unsigned char *udp_parameters,
                                      unsigned char *udp_codeword, int *udp_codeword_size);

    void send_sym_wise_message(unsigned char *encoded_symwise_word, int encoded_symwise_word_size,
                          unsigned char *udp_parameters, unsigned char *udp_codeword, int *udp_codeword_size,int missing_packets,
                          int k2,int n2,int counter_for_start_and_end);

};


#endif //FEC_ERASURE_CODE_APPLICATION_LAYER_SENDER_H
