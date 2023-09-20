(declare-fun x_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!5)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!5))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not a!1)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!5))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (CF_log (fp.abs ((_ to_fp 11 53) x_ack!5)))
  #x3fe62e42fefa39ef))

(check-sat)
(exit)
