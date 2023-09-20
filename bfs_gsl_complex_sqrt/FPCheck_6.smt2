(declare-fun x_ack!22 () (_ BitVec 64))
(declare-fun y_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!22) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!22))
             (fp.abs ((_ to_fp 11 53) y_ack!21)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) x_ack!22))
  (fp.abs ((_ to_fp 11 53) y_ack!21))))

(check-sat)
(exit)
