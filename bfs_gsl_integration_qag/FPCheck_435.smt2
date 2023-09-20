(declare-fun key_ack!4550 () (_ BitVec 32))
(declare-fun limit_ack!4549 () (_ BitVec 64))
(declare-fun epsabs_ack!4548 () (_ BitVec 64))
(declare-fun b_ack!4547 () (_ BitVec 64))
(declare-fun a_ack!4551 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt key_ack!4550 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!4550)))
(assert (= #x00000001 key_ack!4550))
(assert (not (bvult #x00000000000003e8 limit_ack!4549)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4548)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4551)
                                   ((_ to_fp 11 53) b_ack!4547))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4551)
                           ((_ to_fp 11 53) b_ack!4547))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!4547)
                           ((_ to_fp 11 53) a_ack!4551)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fd9f95df119fd62)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fd9f95df119fd62)))))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fefba009d4d09b1)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fefba009d4d09b1)))))
      (a!18 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3febacf827b9bb3e)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3febacf827b9bb3e))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (CF_log a!4)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (CF_log a!5)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!8)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!9)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!11)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!12)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!15)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!16)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!18)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!19)
                                    ((_ to_fp 11 53) #x7ff8000000000001))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fcad04f9087090f)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb026cdaa7b61c4)
                           a!6))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc200ed0f46e8c1)
                                    a!10))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc85d6861c80eb1)
                            a!13))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven
            a!14
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f977c5b67d57470)
                    a!17))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fbad384a34814c6) a!20))))))))

(check-sat)
(exit)
