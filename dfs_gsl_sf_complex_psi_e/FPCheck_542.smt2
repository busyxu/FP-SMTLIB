(declare-fun a_ack!1979 () (_ BitVec 64))
(declare-fun b_ack!1978 () (_ BitVec 64))
(declare-fun CF_sinh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1979) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!1979))
               ((_ to_fp 11 53) a_ack!1979))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!1979)))
       ((_ to_fp 11 53) a_ack!1979)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!1979))
               ((_ to_fp 11 53) #x400921fb54442d18))
       ((_ to_fp 11 53) a_ack!1979)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1979))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!1979))
               ((_ to_fp 11 53) a_ack!1979))
       ((_ to_fp 11 53) #x400921fb54442d18)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x400921fb54442d18)
                                  ((_ to_fp 11 53) b_ack!1978)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x400921fb54442d18)
                                   ((_ to_fp 11 53) a_ack!1979)))
                   (CF_sinh (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x400921fb54442d18)
                                    ((_ to_fp 11 53) b_ack!1978))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) a_ack!1979))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) a_ack!1979))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       ((_ to_fp 11 53) b_ack!1978)))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1978)))
                   ((_ to_fp 11 53) #x4034000000000000))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) b_ack!1978)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1978)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!1978)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x4034000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x4018fae0bc28e17b)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!1979)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (CF_ceil (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018fae0bc28e17b)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) a_ack!1979))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1979))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!1979)))))
  (fp.eq a!2
         ((_ to_fp 11 53)
           roundNearestTiesToEven
           ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_ceil (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018fae0bc28e17b)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) a_ack!1979))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1979))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32) roundTowardZero a!1)))))
  (fp.eq a!2
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 ((_ to_fp 11 53) a_ack!1979))))))
(assert (let ((a!1 (CF_ceil (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018fae0bc28e17b)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) a_ack!1979))))))
(let ((a!2 (fp.abs (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1979))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_ceil (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018fae0bc28e17b)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) a_ack!1979))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!1979))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32) roundTowardZero a!1)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x3fb893c438dd7d5a))
                 a!2)
         ((_ to_fp 11 53) #x3fb893c438dd7d5a)))))
(assert (let ((a!1 (CF_ceil (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018fae0bc28e17b)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) a_ack!1979))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!1979))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32) roundTowardZero a!1)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x3fb893c438dd7d5a))
                 ((_ to_fp 11 53) #x3fb893c438dd7d5a))
         a!2))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) b_ack!1978)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1978))
                           ((_ to_fp 11 53) #x3fb893c438dd7d5a))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!1978)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fb893c438dd7d5a))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1978))
                           ((_ to_fp 11 53) #x3fb893c438dd7d5a))
                   ((_ to_fp 11 53) #x3fb893c438dd7d5a))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) b_ack!1978)))))
(assert (let ((a!1 (CF_ceil (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018fae0bc28e17b)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) a_ack!1979)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1978))
                           ((_ to_fp 11 53) #x3fb893c438dd7d5a)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1979))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) #x3fb893c438dd7d5a))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x3fb893c438dd7d5a))
            (fp.mul roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x3fb893c438dd7d5a)))
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    a!3
                    ((_ to_fp 11 53) #x3fb893c438dd7d5a))
            (fp.mul roundNearestTiesToEven
                    a!3
                    ((_ to_fp 11 53) #x3fb893c438dd7d5a)))))))

(check-sat)
(exit)
