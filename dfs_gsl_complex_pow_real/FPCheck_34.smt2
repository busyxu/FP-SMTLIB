(declare-fun x1_ack!153 () (_ BitVec 64))
(declare-fun y1_ack!152 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!153) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!153))
             (fp.abs ((_ to_fp 11 53) y1_ack!152)))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) y1_ack!152))
  (fp.abs ((_ to_fp 11 53) y1_ack!152))))

(check-sat)
(exit)
