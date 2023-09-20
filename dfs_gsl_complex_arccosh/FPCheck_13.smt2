(declare-fun y_ack!44 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun x_ack!45 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!44) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW (fp.abs ((_ to_fp 11 53) x_ack!45)) #x3ff0000000000000))

(check-sat)
(exit)
