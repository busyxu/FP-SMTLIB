(declare-fun a_ack!3012 () (_ BitVec 64))
(declare-fun b_ack!3011 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!3012) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3011) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!3012))
                          (CF_log b_ack!3011))
                  ((_ to_fp 11 53) #xc0861b2bdd7abcd2))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!3012))
                          (CF_log b_ack!3011))
                  ((_ to_fp 11 53) #x40862642fefa39ef))))
  (not a!1)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3012) ((_ to_fp 11 53) #x404b000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3012) ((_ to_fp 11 53) #x403b000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3012) ((_ to_fp 11 53) #x403b000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!3011))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3012)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!3011))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!3012)))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) b_ack!3011))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!3012))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3011))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!3012))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!3011))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!3012))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!3011))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!3012))))))
  (FPCHECK_FADD_ACCURACY
    a!6
    (CF_pow (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4010000000000000)
                    ((_ to_fp 11 53) b_ack!3011))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) a_ack!3012)))))))))))

(check-sat)
(exit)
