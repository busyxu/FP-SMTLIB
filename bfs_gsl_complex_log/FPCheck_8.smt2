(declare-fun y_ack!32 () (_ BitVec 64))
(declare-fun x_ack!33 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!33))
             (fp.abs ((_ to_fp 11 53) y_ack!32)))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) x_ack!33))
  (fp.abs ((_ to_fp 11 53) y_ack!32))))

(check-sat)
(exit)
