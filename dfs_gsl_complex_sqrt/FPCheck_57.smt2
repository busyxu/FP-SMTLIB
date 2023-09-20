(declare-fun x_ack!180 () (_ BitVec 64))
(declare-fun y_ack!179 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!180) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!180))
        (fp.abs ((_ to_fp 11 53) y_ack!179))))
(assert (FPCHECK_FINVALID_SQRT
  (fp.abs ((_ to_fp 11 53) x_ack!180))
  (fp.abs ((_ to_fp 11 53) x_ack!180))))

(check-sat)
(exit)
