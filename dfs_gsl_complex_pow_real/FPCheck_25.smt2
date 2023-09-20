(declare-fun x1_ack!119 () (_ BitVec 64))
(declare-fun y1_ack!118 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!119) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!119))
        (fp.abs ((_ to_fp 11 53) y1_ack!118))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) y1_ack!118))
  (fp.abs ((_ to_fp 11 53) x1_ack!119))))

(check-sat)
(exit)
