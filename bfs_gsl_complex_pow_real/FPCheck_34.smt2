(declare-fun x1_ack!138 () (_ BitVec 64))
(declare-fun y1_ack!137 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!138) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!138))
             (fp.abs ((_ to_fp 11 53) y1_ack!137)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) x1_ack!138))
  (fp.abs ((_ to_fp 11 53) y1_ack!137))))

(check-sat)
(exit)
