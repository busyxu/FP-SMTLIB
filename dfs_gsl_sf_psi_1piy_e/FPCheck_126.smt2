(declare-fun a_ack!188 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!188))
       ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!188)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!188))
                           (fp.abs ((_ to_fp 11 53) a_ack!188)))
                   (fp.abs ((_ to_fp 11 53) a_ack!188)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!188)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!188)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!188))
                           (fp.abs ((_ to_fp 11 53) a_ack!188)))
                   (fp.abs ((_ to_fp 11 53) a_ack!188)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!188)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!188))
                           (fp.abs ((_ to_fp 11 53) a_ack!188))))))
  (FPCHECK_FMUL_ACCURACY #x3f81111111111111 a!1)))

(check-sat)
(exit)
