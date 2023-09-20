(declare-fun x_ack!120 () (_ BitVec 64))
(declare-fun y_ack!119 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!120))
             (fp.abs ((_ to_fp 11 53) y_ack!119)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) x_ack!120))
  (fp.abs ((_ to_fp 11 53) y_ack!119))))

(check-sat)
(exit)
