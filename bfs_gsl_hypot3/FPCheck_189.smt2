(declare-fun c_ack!1034 () (_ BitVec 64))
(declare-fun b_ack!1033 () (_ BitVec 64))
(declare-fun a_ack!1035 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1033))
       (fp.abs ((_ to_fp 11 53) c_ack!1034))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1035))
       (fp.abs ((_ to_fp 11 53) b_ack!1033))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1035))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1035))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1035))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1033))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1033))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1035))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1035))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1033))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1033))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1035))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1035))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1033))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1033))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!1034))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!1034))
                           (fp.abs ((_ to_fp 11 53) a_ack!1035))))))
  (FPCHECK_FADD_OVERFLOW (fp.add roundNearestTiesToEven a!1 a!2) a!3)))

(check-sat)
(exit)
