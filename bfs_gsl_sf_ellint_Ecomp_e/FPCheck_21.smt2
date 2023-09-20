(declare-fun a_ack!42 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!42)
                     ((_ to_fp 11 53) a_ack!42))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!42)
                ((_ to_fp 11 53) a_ack!42))
        ((_ to_fp 11 53) #x3feffffff8000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa85b9906e45829)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!42)
                                   ((_ to_fp 11 53) a_ack!42))))))
  (FPCHECK_FADD_OVERFLOW #x3fb006f296ee960c a!1)))

(check-sat)
(exit)
