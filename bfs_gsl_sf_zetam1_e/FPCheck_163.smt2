(declare-fun a_ack!240 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!240) ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!240) ((_ to_fp 11 53) #x402e000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!240)))
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!240)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!240)))
                   (CF_pow #x4014000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!240)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (CF_pow #x4014000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))
                    (CF_pow #x401c000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (CF_pow #x401c000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))
                    (CF_pow #x4026000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))))
      (a!18 (fp.add roundNearestTiesToEven
                    (CF_pow #x4026000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))
                    (CF_pow #x402a000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (CF_pow #x4026000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))
                    (CF_pow #x402a000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (CF_pow #x4014000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!240)))))
      (a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (CF_pow #x401c000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!240)))))
      (a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow #x4026000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))))
      (a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow #x402a000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    (CF_pow #x401c000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))
                    a!18)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (CF_pow #x401c000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!240)))))
      (a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (CF_pow #x4026000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!240)))))
      (a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow #x402a000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (CF_pow #x4014000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))
                    a!16)))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (CF_pow #x4026000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!240)))))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (CF_pow #x402a000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!240)))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (CF_pow #x4008000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))
                    a!13)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (CF_pow #x402a000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!240)))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!240)))
                    a!9)))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!10 a!14)
                                    a!17)
                            a!19)
                    a!20)))
  (FPCHECK_FSUB_OVERFLOW a!5 a!21))))))))

(check-sat)
(exit)
