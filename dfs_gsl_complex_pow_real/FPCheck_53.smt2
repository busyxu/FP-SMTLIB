(declare-fun x1_ack!257 () (_ BitVec 64))
(declare-fun y1_ack!256 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!257) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!257))
        (fp.abs ((_ to_fp 11 53) y1_ack!256))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) x1_ack!257))
  (fp.abs ((_ to_fp 11 53) x1_ack!257))))

(check-sat)
(exit)
