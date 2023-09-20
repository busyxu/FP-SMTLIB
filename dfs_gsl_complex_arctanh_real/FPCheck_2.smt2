(declare-fun x_ack!4 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) x_ack!4) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FDIV_ACCURACY #x3ff0000000000000 x_ack!4))

(check-sat)
(exit)
