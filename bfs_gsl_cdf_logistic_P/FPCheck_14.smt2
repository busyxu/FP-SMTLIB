(declare-fun mu_ack!64 () (_ BitVec 64))
(declare-fun x_ack!65 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!65)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) mu_ack!64)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.geq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) x_ack!65)
                ((_ to_fp 11 53) mu_ack!64))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!65)
          ((_ to_fp 11 53) mu_ack!64))))

(check-sat)
(exit)
