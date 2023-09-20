(declare-fun x1_ack!134 () (_ BitVec 64))
(declare-fun y1_ack!133 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!134) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!134))
             (fp.abs ((_ to_fp 11 53) y1_ack!133)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) x1_ack!134))
  (fp.abs ((_ to_fp 11 53) y1_ack!133))))

(check-sat)
(exit)
