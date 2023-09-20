(declare-fun key_ack!5670 () (_ BitVec 32))
(declare-fun limit_ack!5669 () (_ BitVec 64))
(declare-fun epsabs_ack!5668 () (_ BitVec 64))
(declare-fun b_ack!5667 () (_ BitVec 64))
(declare-fun a_ack!5671 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt key_ack!5670 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!5670)))
(assert (= #x00000001 key_ack!5670))
(assert (not (bvult #x00000000000003e8 limit_ack!5669)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5668)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5671)
                                   ((_ to_fp 11 53) b_ack!5667))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5671)
                           ((_ to_fp 11 53) b_ack!5667))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5667)
                           ((_ to_fp 11 53) a_ack!5671)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fd9f95df119fd62)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fd9f95df119fd62)))))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fefba009d4d09b1)))))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fefba009d4d09b1)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3febacf827b9bb3e)))))
      (a!18 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3febacf827b9bb3e)))))
      (a!20 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fe2c13a049dfa24)))))
      (a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fe2c13a049dfa24)))))
      (a!24 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fca98b2892e0c77)))))
      (a!25 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fca98b2892e0c77))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb026cdaa7b61c4)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!3)
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!5)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc200ed0f46e8c1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!7)
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!8)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc85d6861c80eb1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!11)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!12)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f977c5b67d57470)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!14)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!15)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fbad384a34814c6)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!17)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!18)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc5a1f266e47d5c)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!20)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!21)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!26 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fca2adbcbec9cd8)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!24)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!25)
                                    ((_ to_fp 11 53) #x7ff8000000000001))))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fcad04f9087090f))
                            a!6)
                    a!9)))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!10 a!13)
                                    a!16)
                            a!19)
                    a!22)))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (CF_log a!3)
            ((_ to_fp 11 53) #x7ff8000000000001))
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!23 a!26)
            ((_ to_fp 11 53) #x3fe0000000000000)))))))))

(check-sat)
(exit)
