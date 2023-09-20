(declare-fun y1_ack!200 () (_ BitVec 64))
(declare-fun x1_ack!203 () (_ BitVec 64))
(declare-fun y2_ack!202 () (_ BitVec 64))
(declare-fun x2_ack!201 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!203))
             (fp.abs ((_ to_fp 11 53) y1_ack!200)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!203) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!201))
             (fp.abs ((_ to_fp 11 53) y2_ack!202)))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) y2_ack!202))
  (fp.abs ((_ to_fp 11 53) y2_ack!202))))

(check-sat)
(exit)
