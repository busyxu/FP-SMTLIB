(declare-fun b_ack!366 () (_ BitVec 64))
(declare-fun a_ack!367 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!366) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!366)
                    ((_ to_fp 11 53) a_ack!367))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!366)
                    ((_ to_fp 11 53) a_ack!367))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!366)
               ((_ to_fp 11 53) a_ack!367))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!366)
                                   ((_ to_fp 11 53) a_ack!367))
                           ((_ to_fp 11 53) #x3cb0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!367))
                           (fp.abs ((_ to_fp 11 53) b_ack!366))))))
  (FPCHECK_FADD_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
