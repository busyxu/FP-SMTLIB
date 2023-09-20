(declare-fun limit_ack!8390 () (_ BitVec 64))
(declare-fun a_ack!8391 () (_ BitVec 64))
(declare-fun b_ack!8386 () (_ BitVec 64))
(declare-fun epsabs_ack!8388 () (_ BitVec 64))
(declare-fun epsrel_ack!8389 () (_ BitVec 64))
(declare-fun c_ack!8387 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!8390)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!8386) ((_ to_fp 11 53) a_ack!8391)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!8388) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!8389)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!8389)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!8387) ((_ to_fp 11 53) a_ack!8391))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!8387) ((_ to_fp 11 53) b_ack!8386))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!8387))
                   ((_ to_fp 11 53) a_ack!8391))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!8386))
                 ((_ to_fp 11 53) b_ack!8386))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!8387))
                   ((_ to_fp 11 53) a_ack!8391))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!8386)))
         ((_ to_fp 11 53) b_ack!8386))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!8387))
                           ((_ to_fp 11 53) a_ack!8391))
                   ((_ to_fp 11 53) b_ack!8386))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!8391)
                                   ((_ to_fp 11 53) b_ack!8386))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!8386)
                           ((_ to_fp 11 53) a_ack!8391))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!8391)
                           ((_ to_fp 11 53) b_ack!8386)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x1f96a09e663b59f1)))
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
                   ((_ to_fp 11 53) c_ack!8387)))
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
                   ((_ to_fp 11 53) c_ack!8387)))
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
                    ((_ to_fp 11 53) c_ack!8387)))
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
                    ((_ to_fp 11 53) c_ack!8387)))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fd9f95df119fd62)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fd9f95df119fd62)))
                    ((_ to_fp 11 53) c_ack!8387)))
      (a!18 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fd9f95df119fd62)))))
      (a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fd9f95df119fd62)))
                    ((_ to_fp 11 53) c_ack!8387)))
      (a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fefba009d4d09b1)))))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fefba009d4d09b1)))
                    ((_ to_fp 11 53) c_ack!8387)))
      (a!23 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fefba009d4d09b1)))))
      (a!24 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fefba009d4d09b1)))
                    ((_ to_fp 11 53) c_ack!8387))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!8387)))
                   ((_ to_fp 11 53) #x3fcad04f9087090f)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!5)
                                   ((_ to_fp 11 53) #x1f746b175301848d))
                           a!6)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!7)
                                   ((_ to_fp 11 53) #x1f9f9719f460e766))
                           a!8)))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!10)
                                    ((_ to_fp 11 53) #x1f8701ea33d39961))
                            a!11)
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!12)
                                    ((_ to_fp 11 53) #x1f9ddc59a55733d2))
                            a!13)))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!16)
                                    ((_ to_fp 11 53) #x1f917108b2e0c315))
                            a!17)
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!18)
                                    ((_ to_fp 11 53) #x1f9ad43642baaa6a))
                            a!19)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!21)
                                    ((_ to_fp 11 53) #x1f60bba03a5ba8bd))
                            a!22)
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!23)
                                    ((_ to_fp 11 53) #x1f9fee7b5b695762))
                            a!24))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!3
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb026cdaa7b61c4)
                                    a!9))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc200ed0f46e8c1)
                            a!14))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven
            a!15
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc85d6861c80eb1)
                    a!20))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3f977c5b67d57470) a!25)))))))

(check-sat)
(exit)
