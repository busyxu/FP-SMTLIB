(declare-fun y_ack!68 () (_ BitVec 64))
(declare-fun x_ack!69 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!69)) (fp.abs ((_ to_fp 11 53) y_ack!68))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y_ack!68))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!69))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) x_ack!69))
  (fp.abs ((_ to_fp 11 53) x_ack!69))))

(check-sat)
(exit)
