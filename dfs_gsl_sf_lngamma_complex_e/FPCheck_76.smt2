(declare-fun a_ack!253 () (_ BitVec 64))
(declare-fun b_ack!252 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!253) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!253)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!253)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!253)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!253)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!253)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!252)
                                   ((_ to_fp 11 53) b_ack!252))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3feffffffffff950)
                         (fp.mul roundNearestTiesToEven a!2 a!1))
                 ((_ to_fp 11 53) #x3feffffffffff950))
         (fp.mul roundNearestTiesToEven a!2 a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!253)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!252)
                                   ((_ to_fp 11 53) b_ack!252))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3feffffffffff950)
                         (fp.mul roundNearestTiesToEven a!2 a!1))
                 (fp.mul roundNearestTiesToEven a!2 a!1))
         ((_ to_fp 11 53) #x3feffffffffff950)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!252))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!252)
                       ((_ to_fp 11 53) b_ack!252))
               ((_ to_fp 11 53) b_ack!252))
       ((_ to_fp 11 53) b_ack!252)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!252))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!252)
                       ((_ to_fp 11 53) b_ack!252))
               ((_ to_fp 11 53) b_ack!252))
       ((_ to_fp 11 53) b_ack!252)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!253)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FDIV_ACCURACY
    #x40881a9661d3b4d8
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!1)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!252)
                    ((_ to_fp 11 53) b_ack!252))))))

(check-sat)
(exit)
