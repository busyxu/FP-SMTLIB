(declare-fun a5_ack!186 () (_ BitVec 64))
(declare-fun a0_ack!187 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!186) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!187))
                           ((_ to_fp 11 53) a5_ack!186)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!187))
                           ((_ to_fp 11 53) a5_ack!186)))))
  (FPCHECK_FADD_OVERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
