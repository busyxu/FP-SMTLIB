(declare-fun x1_ack!147 () (_ BitVec 64))
(declare-fun y1_ack!146 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!147) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!147))
             (fp.abs ((_ to_fp 11 53) y1_ack!146)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) x1_ack!147))
  (fp.abs ((_ to_fp 11 53) y1_ack!146))))

(check-sat)
(exit)
