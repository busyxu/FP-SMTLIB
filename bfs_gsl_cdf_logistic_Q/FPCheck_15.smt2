(declare-fun mu_ack!70 () (_ BitVec 64))
(declare-fun x_ack!71 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!71)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) mu_ack!70)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.geq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) x_ack!71)
                ((_ to_fp 11 53) mu_ack!70))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!71)
          ((_ to_fp 11 53) mu_ack!70))))

(check-sat)
(exit)
