(declare-fun c_ack!968 () (_ BitVec 64))
(declare-fun b_ack!967 () (_ BitVec 64))
(declare-fun a_ack!969 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!967))
       (fp.abs ((_ to_fp 11 53) c_ack!968))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!969))
       (fp.abs ((_ to_fp 11 53) b_ack!967))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!969))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!969))
                           (fp.abs ((_ to_fp 11 53) a_ack!969)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!969))
                           (fp.abs ((_ to_fp 11 53) a_ack!969)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!967))
                           (fp.abs ((_ to_fp 11 53) a_ack!969)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!967))
                           (fp.abs ((_ to_fp 11 53) a_ack!969))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!969))
                           (fp.abs ((_ to_fp 11 53) a_ack!969)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!969))
                           (fp.abs ((_ to_fp 11 53) a_ack!969)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!967))
                           (fp.abs ((_ to_fp 11 53) a_ack!969)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!967))
                           (fp.abs ((_ to_fp 11 53) a_ack!969))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) c_ack!968))
  (fp.abs ((_ to_fp 11 53) a_ack!969))))

(check-sat)
(exit)
