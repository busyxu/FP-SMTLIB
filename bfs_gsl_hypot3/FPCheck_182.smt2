(declare-fun c_ack!986 () (_ BitVec 64))
(declare-fun b_ack!985 () (_ BitVec 64))
(declare-fun a_ack!987 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!985))
       (fp.abs ((_ to_fp 11 53) c_ack!986))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!987))
       (fp.abs ((_ to_fp 11 53) b_ack!985))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!987))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!987))
                           (fp.abs ((_ to_fp 11 53) a_ack!987)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!987))
                           (fp.abs ((_ to_fp 11 53) a_ack!987)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!985))
                           (fp.abs ((_ to_fp 11 53) a_ack!987)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!985))
                           (fp.abs ((_ to_fp 11 53) a_ack!987))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!987))
                           (fp.abs ((_ to_fp 11 53) a_ack!987)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!987))
                           (fp.abs ((_ to_fp 11 53) a_ack!987)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!985))
                           (fp.abs ((_ to_fp 11 53) a_ack!987)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!985))
                           (fp.abs ((_ to_fp 11 53) a_ack!987))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!986))
  (fp.abs ((_ to_fp 11 53) a_ack!987))))

(check-sat)
(exit)
