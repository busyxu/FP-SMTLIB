(declare-fun a_ack!612 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!611 () (_ BitVec 64))
(assert (fp.leq ((_ to_fp 11 53) a_ack!612) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 b_ack!611))

(check-sat)
(exit)
