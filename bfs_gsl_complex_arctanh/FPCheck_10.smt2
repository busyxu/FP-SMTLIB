(declare-fun y_ack!32 () (_ BitVec 64))
(declare-fun x_ack!33 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) y_ack!32) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!33) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW #x3ff0000000000000 x_ack!33))

(check-sat)
(exit)
