(declare-fun a_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!8 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!9) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!9)) ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY #x401921fb54442d18 c_ack!8))

(check-sat)
(exit)
