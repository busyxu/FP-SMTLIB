(declare-fun a_ack!371 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!371) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!371) ((_ to_fp 11 53) #xc010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY a_ack!371 a_ack!371))

(check-sat)
(exit)
