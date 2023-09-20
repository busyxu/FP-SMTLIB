(declare-fun a5_ack!1643 () (_ BitVec 64))
(declare-fun a0_ack!1644 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!1643) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1644))
                           ((_ to_fp 11 53) a5_ack!1643)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1644))
                           ((_ to_fp 11 53) a5_ack!1643)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1644))
                           ((_ to_fp 11 53) a5_ack!1643)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1644))
                           ((_ to_fp 11 53) a5_ack!1643)))))
  (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1644))
                           ((_ to_fp 11 53) a5_ack!1643)))))
  (not (fp.lt ((_ to_fp 11 53) #x4010000000000000)
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1644))
                           ((_ to_fp 11 53) a5_ack!1643)))))
  (not (fp.gt ((_ to_fp 11 53) #x4010000000000000)
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1644))
                           ((_ to_fp 11 53) a5_ack!1643)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fee666666666666)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4010000000000000))
         a!2))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) a0_ack!1644))
          ((_ to_fp 11 53) a5_ack!1643))
  #x3fe0000000000000))

(check-sat)
(exit)
