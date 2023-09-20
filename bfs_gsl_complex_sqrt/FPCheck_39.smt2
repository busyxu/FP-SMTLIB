(declare-fun x_ack!112 () (_ BitVec 64))
(declare-fun y_ack!111 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!112) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!112))
             (fp.abs ((_ to_fp 11 53) y_ack!111)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) x_ack!112))
  (fp.abs ((_ to_fp 11 53) y_ack!111))))

(check-sat)
(exit)
