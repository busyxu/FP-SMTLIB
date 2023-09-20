(declare-fun limit_ack!3156 () (_ BitVec 64))
(declare-fun a_ack!3157 () (_ BitVec 64))
(declare-fun b_ack!3153 () (_ BitVec 64))
(declare-fun epsabs_ack!3155 () (_ BitVec 64))
(declare-fun c_ack!3154 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3156)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3153) ((_ to_fp 11 53) a_ack!3157)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3155)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3154) ((_ to_fp 11 53) a_ack!3157))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3154) ((_ to_fp 11 53) b_ack!3153))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3154))
                   ((_ to_fp 11 53) a_ack!3157))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3153))
                 ((_ to_fp 11 53) b_ack!3153))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3154))
                   ((_ to_fp 11 53) a_ack!3157))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3153)))
         ((_ to_fp 11 53) b_ack!3153))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!3154))
                           ((_ to_fp 11 53) a_ack!3157))
                   ((_ to_fp 11 53) b_ack!3153))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3157)
                                   ((_ to_fp 11 53) b_ack!3153))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3153)
                           ((_ to_fp 11 53) a_ack!3157))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3157)
                                   ((_ to_fp 11 53) b_ack!3153)))
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
      (a!7 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!4)))
                   ((_ to_fp 11 53) #x1ef65671cd9e98de))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!3154)))
                   ((_ to_fp 11 53) #x3fcad04f9087090f)))
      (a!6 (fp.abs (fp.div roundNearestTiesToEven
                           a!5
                           (fp.sub roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!1 a!4)
                                   ((_ to_fp 11 53) c_ack!3154)))))
      (a!8 (fp.abs (fp.div roundNearestTiesToEven
                           a!7
                           (fp.sub roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!1 a!4)
                                   ((_ to_fp 11 53) c_ack!3154))))))
  (FPCHECK_FADD_ACCURACY
    (fp.abs a!3)
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fb026cdaa7b61c4)
            (fp.add roundNearestTiesToEven a!6 a!8)))))))

(check-sat)
(exit)
