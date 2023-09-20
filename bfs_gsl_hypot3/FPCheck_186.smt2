(declare-fun c_ack!1010 () (_ BitVec 64))
(declare-fun b_ack!1009 () (_ BitVec 64))
(declare-fun a_ack!1011 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1009))
       (fp.abs ((_ to_fp 11 53) c_ack!1010))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1011))
       (fp.abs ((_ to_fp 11 53) b_ack!1009))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1011))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1011))
                           (fp.abs ((_ to_fp 11 53) a_ack!1011)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1011))
                           (fp.abs ((_ to_fp 11 53) a_ack!1011)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1009))
                           (fp.abs ((_ to_fp 11 53) a_ack!1011)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1009))
                           (fp.abs ((_ to_fp 11 53) a_ack!1011))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1011))
                           (fp.abs ((_ to_fp 11 53) a_ack!1011)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1011))
                           (fp.abs ((_ to_fp 11 53) a_ack!1011)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1009))
                           (fp.abs ((_ to_fp 11 53) a_ack!1011)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1009))
                           (fp.abs ((_ to_fp 11 53) a_ack!1011))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!1010))
          (fp.abs ((_ to_fp 11 53) a_ack!1011)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!1010))
          (fp.abs ((_ to_fp 11 53) a_ack!1011)))))

(check-sat)
(exit)
