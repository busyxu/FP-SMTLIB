(declare-fun x_ack!51 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!51) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!51) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!51)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!51))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not a!1)))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!51))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!51))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) x_ack!51))
  (fp.abs ((_ to_fp 11 53) x_ack!51))))

(check-sat)
(exit)
