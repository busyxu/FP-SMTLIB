(declare-fun x_ack!591 () (_ BitVec 64))
(declare-fun e_ack!590 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!591) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!591) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!591)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!591))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not (not a!1))))
(assert (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven e_ack!590)
        ((_ to_fp 11 53) #x4090000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven e_ack!590)
          ((_ to_fp 11 53) #x4090000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
