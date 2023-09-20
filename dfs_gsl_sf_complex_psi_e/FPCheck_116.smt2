(declare-fun a_ack!375 () (_ BitVec 64))
(declare-fun b_ack!374 () (_ BitVec 64))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq ((_ to_fp 11 53) a_ack!375) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!375) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!375) ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!374))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x4034000000000001)
               ((_ to_fp 11 53) a_ack!375))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_ceil (fp.sub roundNearestTiesToEven
                              ((_ to_fp 11 53) #x4034000000000001)
                              ((_ to_fp 11 53) a_ack!375)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!374)
                                   ((_ to_fp 11 53) #x3fa8618618618618)))
                   ((_ to_fp 11 53) #x3fa8618618618618))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!375)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                           ((_ to_fp 11 53) #x3fa8618618618618))
                   ((_ to_fp 11 53) #x3fa8618618618618))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0cccccccccccd)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!2)
                           (fp.mul roundNearestTiesToEven a!3 a!3)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!4
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 a!4)
         ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_ceil (fp.sub roundNearestTiesToEven
                              ((_ to_fp 11 53) #x4034000000000001)
                              ((_ to_fp 11 53) a_ack!375)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!374)
                                   ((_ to_fp 11 53) #x3fa8618618618618)))
                   ((_ to_fp 11 53) #x3fa8618618618618))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!375)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                           ((_ to_fp 11 53) #x3fa8618618618618))
                   ((_ to_fp 11 53) #x3fa8618618618618))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0cccccccccccd)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!2)
                           (fp.mul roundNearestTiesToEven a!3 a!3)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!4
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!4)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_ceil (fp.sub roundNearestTiesToEven
                              ((_ to_fp 11 53) #x4034000000000001)
                              ((_ to_fp 11 53) a_ack!375)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!374)
                                   ((_ to_fp 11 53) #x3fa8618618618618)))
                   ((_ to_fp 11 53) #x3fa8618618618618))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!375)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                           ((_ to_fp 11 53) #x3fa8618618618618))
                   ((_ to_fp 11 53) #x3fa8618618618618))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff0cccccccccccd)
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!2)
                                   (fp.mul roundNearestTiesToEven a!3 a!3)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_UNDERFLOW #xbfde79e79e79e79e a!4)))))

(check-sat)
(exit)
