(declare-fun c_ack!1061 () (_ BitVec 64))
(declare-fun b_ack!1060 () (_ BitVec 64))
(declare-fun a_ack!1062 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1060))
       (fp.abs ((_ to_fp 11 53) c_ack!1061))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1062))
       (fp.abs ((_ to_fp 11 53) b_ack!1060))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1062))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1062))
                           (fp.abs ((_ to_fp 11 53) a_ack!1062)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1062))
                           (fp.abs ((_ to_fp 11 53) a_ack!1062)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1060))
                           (fp.abs ((_ to_fp 11 53) a_ack!1062)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1060))
                           (fp.abs ((_ to_fp 11 53) a_ack!1062))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1062))
                           (fp.abs ((_ to_fp 11 53) a_ack!1062)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1062))
                           (fp.abs ((_ to_fp 11 53) a_ack!1062)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1060))
                           (fp.abs ((_ to_fp 11 53) a_ack!1062)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1060))
                           (fp.abs ((_ to_fp 11 53) a_ack!1062))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_ACCURACY (fp.abs ((_ to_fp 11 53) a_ack!1062)) #x3ff0000000000000))

(check-sat)
(exit)
