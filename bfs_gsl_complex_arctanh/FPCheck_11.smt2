(declare-fun y_ack!36 () (_ BitVec 64))
(declare-fun x_ack!37 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) y_ack!36) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!37) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FDIV_ACCURACY #x3ff0000000000000 x_ack!37))

(check-sat)
(exit)
