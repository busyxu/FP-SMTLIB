(declare-fun b_ack!777 () (_ BitVec 64))
(declare-fun a_ack!778 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!777) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!778) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!778) ((_ to_fp 11 53) #x4049000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!777) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!777) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!778)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!778)
                                  a!1))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!2))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!777) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!777) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!777) ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!778)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!778)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           a!2)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!778)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!777))
                           ((_ to_fp 11 53) b_ack!777))
                   a!3)))
  (FPCHECK_FMUL_UNDERFLOW a!4 #x0000000000000000))))))

(check-sat)
(exit)
