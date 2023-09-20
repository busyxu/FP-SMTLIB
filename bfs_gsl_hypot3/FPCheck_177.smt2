(declare-fun c_ack!956 () (_ BitVec 64))
(declare-fun b_ack!955 () (_ BitVec 64))
(declare-fun a_ack!957 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!955))
       (fp.abs ((_ to_fp 11 53) c_ack!956))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!957))
       (fp.abs ((_ to_fp 11 53) b_ack!955))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!957))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!957))
                           (fp.abs ((_ to_fp 11 53) a_ack!957)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!957))
                           (fp.abs ((_ to_fp 11 53) a_ack!957)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!955))
                           (fp.abs ((_ to_fp 11 53) a_ack!957)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!955))
                           (fp.abs ((_ to_fp 11 53) a_ack!957))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!957))
                           (fp.abs ((_ to_fp 11 53) a_ack!957)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!957))
                           (fp.abs ((_ to_fp 11 53) a_ack!957)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!955))
                           (fp.abs ((_ to_fp 11 53) a_ack!957)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!955))
                           (fp.abs ((_ to_fp 11 53) a_ack!957))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!956))
  (fp.abs ((_ to_fp 11 53) a_ack!957))))

(check-sat)
(exit)
