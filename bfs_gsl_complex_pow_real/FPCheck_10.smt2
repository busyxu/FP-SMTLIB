(declare-fun x1_ack!30 () (_ BitVec 64))
(declare-fun y1_ack!29 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) x1_ack!30) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!29) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!30))
             (fp.abs ((_ to_fp 11 53) y1_ack!29)))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) y1_ack!29))
  (fp.abs ((_ to_fp 11 53) y1_ack!29))))

(check-sat)
(exit)
