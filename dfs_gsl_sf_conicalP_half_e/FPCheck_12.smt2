(declare-fun b_ack!14 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!14) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!14) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!14) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 (fp.abs ((_ to_fp 11 53) b_ack!14))))

(check-sat)
(exit)
