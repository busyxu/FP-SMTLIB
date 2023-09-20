(declare-fun y1_ack!96 () (_ BitVec 64))
(declare-fun x1_ack!97 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!97))
        (fp.abs ((_ to_fp 11 53) y1_ack!96))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y1_ack!96))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x1_ack!97))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) x1_ack!97))
  (fp.abs ((_ to_fp 11 53) x1_ack!97))))

(check-sat)
(exit)
