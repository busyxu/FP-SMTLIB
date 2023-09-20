(declare-fun c_ack!1016 () (_ BitVec 64))
(declare-fun b_ack!1015 () (_ BitVec 64))
(declare-fun a_ack!1017 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1015))
       (fp.abs ((_ to_fp 11 53) c_ack!1016))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1017))
       (fp.abs ((_ to_fp 11 53) b_ack!1015))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1017))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1017))
                           (fp.abs ((_ to_fp 11 53) a_ack!1017)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1017))
                           (fp.abs ((_ to_fp 11 53) a_ack!1017)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1015))
                           (fp.abs ((_ to_fp 11 53) a_ack!1017)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1015))
                           (fp.abs ((_ to_fp 11 53) a_ack!1017))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1017))
                           (fp.abs ((_ to_fp 11 53) a_ack!1017)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1017))
                           (fp.abs ((_ to_fp 11 53) a_ack!1017)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1015))
                           (fp.abs ((_ to_fp 11 53) a_ack!1017)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1015))
                           (fp.abs ((_ to_fp 11 53) a_ack!1017))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!1016))
          (fp.abs ((_ to_fp 11 53) a_ack!1017)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!1016))
          (fp.abs ((_ to_fp 11 53) a_ack!1017)))))

(check-sat)
(exit)
