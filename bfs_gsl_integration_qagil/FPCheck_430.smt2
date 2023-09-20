(declare-fun limit_ack!2757 () (_ BitVec 64))
(declare-fun epsabs_ack!2755 () (_ BitVec 64))
(declare-fun epsrel_ack!2756 () (_ BitVec 64))
(declare-fun b_ack!2758 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!2757)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2755) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2756)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2756)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2758)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2758)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!3 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2758)
                                   ((_ to_fp 11 53) #x4043264061f2d8c9)))))
      (a!5 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2758)
                                   ((_ to_fp 11 53) #x3f9abcb2bd7da4dd)))))
      (a!8 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2758)
                                   ((_ to_fp 11 53) #x401af39622b853f8)))))
      (a!10 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2758)
                                    ((_ to_fp 11 53) #x3fc2ff40ac0bfb6b)))))
      (a!13 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2758)
                                    ((_ to_fp 11 53) #x4002edd364e98116)))))
      (a!15 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2758)
                                    ((_ to_fp 11 53) #x3fdb0c6631e47925)))))
      (a!18 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2758)
                                    ((_ to_fp 11 53) #x406d2215dca601a3)))))
      (a!20 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2758)
                                    ((_ to_fp 11 53) #x3f7193115c88db7f)))))
      (a!23 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2758)
                                    ((_ to_fp 11 53) #x402b999343205e59)))))
      (a!25 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2758)
                                    ((_ to_fp 11 53) #x3fb28d008cb75589)))))
      (a!28 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2758)
                                    ((_ to_fp 11 53) #x400ea7ce13b76717)))))
      (a!30 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2758)
                                    ((_ to_fp 11 53) #x3fd0b3a53ecad337)))))
      (a!33 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2758)
                                    ((_ to_fp 11 53) #x3ff864a06b92e6b3)))))
      (a!35 (CF_log (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2758)
                                    ((_ to_fp 11 53) #x3fe4fd542a5f1dca))))))
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
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           ((_ to_fp 11 53) #x3fc08ac0c838bc54))
                   ((_ to_fp 11 53) #x3fc08ac0c838bc54)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3febdd4fcdf1d0eb))
                    ((_ to_fp 11 53) #x3febdd4fcdf1d0eb)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fd303510773014f))
                    ((_ to_fp 11 53) #x3fd303510773014f)))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fe67e577c467f58))
                    ((_ to_fp 11 53) #x3fe67e577c467f58)))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3f717fd8acbd93c0))
                    ((_ to_fp 11 53) #x3f717fd8acbd93c0)))
      (a!21 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fefdd004ea684d8))
                    ((_ to_fp 11 53) #x3fefdd004ea684d8)))
      (a!24 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fb14c1f61191308))
                    ((_ to_fp 11 53) #x3fb14c1f61191308)))
      (a!26 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fedd67c13dcdd9f))
                    ((_ to_fp 11 53) #x3fedd67c13dcdd9f)))
      (a!29 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!28
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fca7d8bf6c40bb8))
                    ((_ to_fp 11 53) #x3fca7d8bf6c40bb8)))
      (a!31 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!30
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fe9609d024efd12))
                    ((_ to_fp 11 53) #x3fe9609d024efd12)))
      (a!34 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!33
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fd959d35db47ce2))
                    ((_ to_fp 11 53) #x3fd959d35db47ce2)))
      (a!36 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fe353165125c18f))
                    ((_ to_fp 11 53) #x3fe353165125c18f))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fcad04f9087090f)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb026cdaa7b61c4)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!4)
                                   (fp.abs a!6))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc200ed0f46e8c1)
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!9)
                                    (fp.abs a!11))))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc85d6861c80eb1)
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!14)
                                    (fp.abs a!16))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f977c5b67d57470)
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!19)
                                    (fp.abs a!21))))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fbad384a34814c6)
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!24)
                                    (fp.abs a!26))))))
(let ((a!32 (fp.add roundNearestTiesToEven
                    a!27
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc5a1f266e47d5c)
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!29)
                                    (fp.abs a!31))))))
  (FPCHECK_FADD_UNDERFLOW
    a!32
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fca2adbcbec9cd8)
            (fp.add roundNearestTiesToEven (fp.abs a!34) (fp.abs a!36)))))))))))))

(check-sat)
(exit)
