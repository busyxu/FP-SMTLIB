(declare-fun x_ack!45 () (_ BitVec 64))
(declare-fun y_ack!44 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!45) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!44) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!45))
             (fp.abs ((_ to_fp 11 53) y_ack!44)))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!45) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW y_ack!44 #x7ff0000000000001))

(check-sat)
(exit)
