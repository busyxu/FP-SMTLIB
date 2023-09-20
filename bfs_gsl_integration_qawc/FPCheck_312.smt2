(declare-fun limit_ack!3931 () (_ BitVec 64))
(declare-fun a_ack!3932 () (_ BitVec 64))
(declare-fun b_ack!3928 () (_ BitVec 64))
(declare-fun epsabs_ack!3930 () (_ BitVec 64))
(declare-fun c_ack!3929 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3931)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3928) ((_ to_fp 11 53) a_ack!3932)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3930)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3929) ((_ to_fp 11 53) a_ack!3932))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3929) ((_ to_fp 11 53) b_ack!3928))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3929))
                   ((_ to_fp 11 53) a_ack!3932))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3928))
                 ((_ to_fp 11 53) b_ack!3928))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3929))
                   ((_ to_fp 11 53) a_ack!3932))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3928)))
         ((_ to_fp 11 53) b_ack!3928))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!3929))
                           ((_ to_fp 11 53) a_ack!3932))
                   ((_ to_fp 11 53) b_ack!3928))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3932)
                                   ((_ to_fp 11 53) b_ack!3928))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3928)
                           ((_ to_fp 11 53) a_ack!3932))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3932)
                           ((_ to_fp 11 53) b_ack!3928)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x1ef0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))
                   ((_ to_fp 11 53) c_ack!3929)))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))
                   ((_ to_fp 11 53) c_ack!3929)))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))
                    ((_ to_fp 11 53) c_ack!3929)))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))
                    ((_ to_fp 11 53) c_ack!3929))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!3929)))
                   ((_ to_fp 11 53) #x3fcad04f9087090f)))
      (a!7 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!5)
                                   ((_ to_fp 11 53) #x1ecce03531adc176))
                           a!6)))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!8)
                                    ((_ to_fp 11 53) #x1ef65671cd9e98de))
                            a!9)))
      (a!13 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!11)
                                    ((_ to_fp 11 53) #x1ee044cc17865903))
                            a!12)))
      (a!16 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!14)
                                    ((_ to_fp 11 53) #x1ef51d5f44bcc9fe))
                            a!15))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            (fp.abs a!3)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb026cdaa7b61c4)
                    (fp.add roundNearestTiesToEven a!7 a!10)))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fc200ed0f46e8c1)
            (fp.add roundNearestTiesToEven a!13 a!16)))))))

(check-sat)
(exit)
