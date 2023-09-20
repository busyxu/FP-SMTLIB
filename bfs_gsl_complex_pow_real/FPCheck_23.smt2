(declare-fun x1_ack!89 () (_ BitVec 64))
(declare-fun y1_ack!88 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!89) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!89))
        (fp.abs ((_ to_fp 11 53) y1_ack!88))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) x1_ack!89))
  (fp.abs ((_ to_fp 11 53) x1_ack!89))))

(check-sat)
(exit)
