(declare-fun a_ack!44 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!44)
                     ((_ to_fp 11 53) a_ack!44))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!44)
                ((_ to_fp 11 53) a_ack!44))
        ((_ to_fp 11 53) #x3feffffff8000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!44)
                                   ((_ to_fp 11 53) a_ack!44)))
                   ((_ to_fp 11 53) #x3fa2619b1b7df892))))
  (FPCHECK_FADD_ACCURACY #x3fb8beef74a49015 a!1)))

(check-sat)
(exit)
