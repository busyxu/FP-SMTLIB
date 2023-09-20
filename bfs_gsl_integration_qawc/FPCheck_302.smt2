(declare-fun limit_ack!3831 () (_ BitVec 64))
(declare-fun a_ack!3832 () (_ BitVec 64))
(declare-fun b_ack!3828 () (_ BitVec 64))
(declare-fun epsabs_ack!3830 () (_ BitVec 64))
(declare-fun c_ack!3829 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3831)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3828) ((_ to_fp 11 53) a_ack!3832)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3830)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3829) ((_ to_fp 11 53) a_ack!3832))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3829) ((_ to_fp 11 53) b_ack!3828))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3829))
                   ((_ to_fp 11 53) a_ack!3832))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3828))
                 ((_ to_fp 11 53) b_ack!3828))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3829))
                   ((_ to_fp 11 53) a_ack!3832))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3828)))
         ((_ to_fp 11 53) b_ack!3828))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!3829))
                           ((_ to_fp 11 53) a_ack!3832))
                   ((_ to_fp 11 53) b_ack!3828))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3832)
                                   ((_ to_fp 11 53) b_ack!3828))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3828)
                           ((_ to_fp 11 53) a_ack!3832))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3832)
                           ((_ to_fp 11 53) b_ack!3828)))))
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
                   ((_ to_fp 11 53) c_ack!3829)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))
                   ((_ to_fp 11 53) c_ack!3829)))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))
                    ((_ to_fp 11 53) c_ack!3829)))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))
                    ((_ to_fp 11 53) c_ack!3829))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!3829)))
                   ((_ to_fp 11 53) #x3fcad04f9087090f)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!5)
                                   ((_ to_fp 11 53) #x1ecce03531adc176))
                           a!6)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!7)
                                   ((_ to_fp 11 53) #x1ef65671cd9e98de))
                           a!8)))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!10)
                                    ((_ to_fp 11 53) #x1ee044cc17865903))
                            a!11)
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!12)
                                    ((_ to_fp 11 53) #x1ef51d5f44bcc9fe))
                            a!13))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven
            a!3
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb026cdaa7b61c4)
                    a!9))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fc200ed0f46e8c1) a!14))))))

(check-sat)
(exit)
