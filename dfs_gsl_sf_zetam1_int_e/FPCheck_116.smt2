(declare-fun a_ack!159 () (_ BitVec 32))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!159 #x00000000)))
(assert (not (= #x00000001 a_ack!159)))
(assert (not (bvsle a_ack!159 #x00000064)))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!159)
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!159)
            ((_ to_fp 11 53) #x402e000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!159)))
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!159))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!159))))))
  (fp.eq a!2
         (CF_pow #x4008000000000000
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         ((_ to_fp 11 53) roundNearestTiesToEven a_ack!159)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!159)))
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!159))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!159))))))
  (fp.eq a!2
         (CF_pow #x4000000000000000
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         ((_ to_fp 11 53) roundNearestTiesToEven a_ack!159)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!159)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!159)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_pow #x4014000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!159)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_pow #x401c000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!159))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven a!1 a!2) a!3)
    a!4)))

(check-sat)
(exit)
