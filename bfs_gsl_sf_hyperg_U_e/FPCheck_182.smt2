(declare-fun c_ack!908 () (_ BitVec 64))
(declare-fun a_ack!909 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!907 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!908) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!909) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!908) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!909)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!909)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!909)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!909)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!908) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!907) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) a_ack!909))
                          ((_ to_fp 11 53) b_ack!907))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!909))
               ((_ to_fp 11 53) b_ack!907))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!907))
                           (CF_log c_ack!908))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x40762e42fefa39ef)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!907))
                           (CF_log c_ack!908))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x0000000000000000))
                          ((_ to_fp 11 53) #x40026bb1bbb55516))
                  ((_ to_fp 11 53) #x41dfffffff800000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!907))
                           (CF_log c_ack!908))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x0000000000000000))
                          ((_ to_fp 11 53) #x40026bb1bbb55516))
                  ((_ to_fp 11 53) #xc1dfffffffc00000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!907))
                           (CF_log c_ack!908))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     a!1
                                     ((_ to_fp 11 53) #x0000000000000000))
                             ((_ to_fp 11 53) #x40026bb1bbb55516)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x40026bb1bbb55516))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32) roundTowardZero a!2)))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3ff0000000000000
    (CF_exp (fp.mul roundNearestTiesToEven
                    a!3
                    ((_ to_fp 11 53) #x40026bb1bbb55516))))))))

(check-sat)
(exit)
