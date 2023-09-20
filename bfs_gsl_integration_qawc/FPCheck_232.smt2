(declare-fun limit_ack!3001 () (_ BitVec 64))
(declare-fun a_ack!3002 () (_ BitVec 64))
(declare-fun b_ack!2998 () (_ BitVec 64))
(declare-fun epsabs_ack!3000 () (_ BitVec 64))
(declare-fun c_ack!2999 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3001)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2998) ((_ to_fp 11 53) a_ack!3002)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3000)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2999) ((_ to_fp 11 53) a_ack!3002))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2999) ((_ to_fp 11 53) b_ack!2998))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2999))
                   ((_ to_fp 11 53) a_ack!3002))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2998))
                 ((_ to_fp 11 53) b_ack!2998))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2999))
                   ((_ to_fp 11 53) a_ack!3002))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2998)))
         ((_ to_fp 11 53) b_ack!2998))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2999))
                           ((_ to_fp 11 53) a_ack!3002))
                   ((_ to_fp 11 53) b_ack!2998))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3002)
                                   ((_ to_fp 11 53) b_ack!2998))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2998)
                           ((_ to_fp 11 53) a_ack!3002))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3002)
                                   ((_ to_fp 11 53) b_ack!2998)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x1ef0000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!4)))
                   ((_ to_fp 11 53) #x1ecce03531adc176)))
      (a!6 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!4)))
                   ((_ to_fp 11 53) #x1ef65671cd9e98de))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!2999)))
                   ((_ to_fp 11 53) #x3fdabfd7e03c2fa6)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!5
                           (fp.sub roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!1 a!4)
                                   ((_ to_fp 11 53) c_ack!2999)))
                   (fp.div roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!1 a!4)
                                   ((_ to_fp 11 53) c_ack!2999))))))
  (FPCHECK_FADD_ACCURACY
    a!3
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fc092f69f826d57) a!7))))))

(check-sat)
(exit)
