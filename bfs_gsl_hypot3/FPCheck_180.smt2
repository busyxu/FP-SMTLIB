(declare-fun c_ack!971 () (_ BitVec 64))
(declare-fun b_ack!970 () (_ BitVec 64))
(declare-fun a_ack!972 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!970))
       (fp.abs ((_ to_fp 11 53) c_ack!971))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!972))
       (fp.abs ((_ to_fp 11 53) b_ack!970))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!972))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!972))
                           (fp.abs ((_ to_fp 11 53) a_ack!972)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!972))
                           (fp.abs ((_ to_fp 11 53) a_ack!972)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!970))
                           (fp.abs ((_ to_fp 11 53) a_ack!972)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!970))
                           (fp.abs ((_ to_fp 11 53) a_ack!972))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!972))
                           (fp.abs ((_ to_fp 11 53) a_ack!972)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!972))
                           (fp.abs ((_ to_fp 11 53) a_ack!972)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!970))
                           (fp.abs ((_ to_fp 11 53) a_ack!972)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!970))
                           (fp.abs ((_ to_fp 11 53) a_ack!972))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) c_ack!971))
  (fp.abs ((_ to_fp 11 53) a_ack!972))))

(check-sat)
(exit)
