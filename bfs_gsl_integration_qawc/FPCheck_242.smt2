(declare-fun limit_ack!3096 () (_ BitVec 64))
(declare-fun a_ack!3097 () (_ BitVec 64))
(declare-fun b_ack!3093 () (_ BitVec 64))
(declare-fun epsabs_ack!3095 () (_ BitVec 64))
(declare-fun c_ack!3094 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3096)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3093) ((_ to_fp 11 53) a_ack!3097)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3095)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3094) ((_ to_fp 11 53) a_ack!3097))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3094) ((_ to_fp 11 53) b_ack!3093))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3094))
                   ((_ to_fp 11 53) a_ack!3097))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3093))
                 ((_ to_fp 11 53) b_ack!3093))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3094))
                   ((_ to_fp 11 53) a_ack!3097))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3093)))
         ((_ to_fp 11 53) b_ack!3093))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!3094))
                           ((_ to_fp 11 53) a_ack!3097))
                   ((_ to_fp 11 53) b_ack!3093))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3097)
                                   ((_ to_fp 11 53) b_ack!3093))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3093)
                           ((_ to_fp 11 53) a_ack!3097))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3097)
                                   ((_ to_fp 11 53) b_ack!3093)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1ecce03531adc176)))
      (a!5 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1ef65671cd9e98de))))
(let ((a!4 (fp.abs (fp.div roundNearestTiesToEven
                           a!3
                           (fp.sub roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!1 a!2)
                                   ((_ to_fp 11 53) c_ack!3094)))))
      (a!6 (fp.abs (fp.div roundNearestTiesToEven
                           a!5
                           (fp.sub roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!1 a!2)
                                   ((_ to_fp 11 53) c_ack!3094))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fb026cdaa7b61c4
    (fp.add roundNearestTiesToEven a!4 a!6))))))

(check-sat)
(exit)
