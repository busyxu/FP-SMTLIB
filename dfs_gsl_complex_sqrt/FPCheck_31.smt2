(declare-fun x_ack!90 () (_ BitVec 64))
(declare-fun y_ack!89 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!90) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!90))
             (fp.abs ((_ to_fp 11 53) y_ack!89)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) x_ack!90))
  (fp.abs ((_ to_fp 11 53) y_ack!89))))

(check-sat)
(exit)
