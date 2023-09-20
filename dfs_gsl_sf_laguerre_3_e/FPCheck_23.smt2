(declare-fun a_ack!86 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!85 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!86) ((_ to_fp 11 53) #xc000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY #x4008000000000000 b_ack!85))

(check-sat)
(exit)
