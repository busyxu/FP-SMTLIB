(declare-fun b_ack!3051 () (_ BitVec 64))
(declare-fun a_ack!3052 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3051) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3052) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3051) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3051))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3051)
                       ((_ to_fp 11 53) b_ack!3051))
               ((_ to_fp 11 53) b_ack!3051))
       ((_ to_fp 11 53) b_ack!3051)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3051))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3051)
                       ((_ to_fp 11 53) b_ack!3051))
               ((_ to_fp 11 53) b_ack!3051))
       ((_ to_fp 11 53) b_ack!3051)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!3051)
                          ((_ to_fp 11 53) b_ack!3051))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!3052)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!3052) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3051) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!3052) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3051)
                                   ((_ to_fp 11 53) a_ack!3052))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!3051)
               ((_ to_fp 11 53) a_ack!3052))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (CF_log (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffbecfa67baa57d)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3051)
                                   ((_ to_fp 11 53) a_ack!3052))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3ff8000000000000
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3fe7d9f4cf754afa)))))

(check-sat)
(exit)
