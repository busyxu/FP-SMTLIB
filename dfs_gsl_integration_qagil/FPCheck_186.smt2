(declare-fun limit_ack!1235 () (_ BitVec 64))
(declare-fun epsabs_ack!1233 () (_ BitVec 64))
(declare-fun epsrel_ack!1234 () (_ BitVec 64))
(declare-fun b_ack!1236 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1235)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1233) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1234)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1234)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1236)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1236)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!3 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1236)
                                   ((_ to_fp 11 53) #x4043264061f2d8c9)))))
      (a!5 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1236)
                                   ((_ to_fp 11 53) #x3f9abcb2bd7da4dd)))))
      (a!7 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1236)
                                   ((_ to_fp 11 53) #x401af39622b853f8)))))
      (a!9 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1236)
                                   ((_ to_fp 11 53) #x3fc2ff40ac0bfb6b)))))
      (a!12 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1236)
                                    ((_ to_fp 11 53) #x4002edd364e98116)))))
      (a!14 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1236)
                                    ((_ to_fp 11 53) #x3fdb0c6631e47925))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           ((_ to_fp 11 53) #x3f9a0e871839dd70))
                   ((_ to_fp 11 53) #x3f9a0e871839dd70)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           ((_ to_fp 11 53) #x3fef2f8bc73e3114))
                   ((_ to_fp 11 53) #x3fef2f8bc73e3114)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           ((_ to_fp 11 53) #x3fc08ac0c838bc54))
                   ((_ to_fp 11 53) #x3fc08ac0c838bc54)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3febdd4fcdf1d0eb))
                    ((_ to_fp 11 53) #x3febdd4fcdf1d0eb)))
      (a!13 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fd303510773014f))
                    ((_ to_fp 11 53) #x3fd303510773014f)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fe67e577c467f58))
                    ((_ to_fp 11 53) #x3fe67e577c467f58))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fcad04f9087090f))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb026cdaa7b61c4)
                                    (fp.add roundNearestTiesToEven a!4 a!6)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc200ed0f46e8c1)
                            (fp.add roundNearestTiesToEven a!8 a!10)))))
  (FPCHECK_FADD_ACCURACY
    a!11
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fc85d6861c80eb1)
            (fp.add roundNearestTiesToEven a!13 a!15)))))))

(check-sat)
(exit)
