(declare-fun a_ack!141 () (_ BitVec 32))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!141 #x00000000)))
(assert (not (= #x00000001 a_ack!141)))
(assert (not (bvsle a_ack!141 #x00000064)))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!141)
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!141)
            ((_ to_fp 11 53) #x402e000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!141)))
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!141))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!141))))))
  (fp.eq a!2
         (CF_pow #x4008000000000000
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         ((_ to_fp 11 53) roundNearestTiesToEven a_ack!141)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!141)))
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!141))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!141))))))
  (fp.eq a!2
         (CF_pow #x4000000000000000
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         ((_ to_fp 11 53) roundNearestTiesToEven a_ack!141)))))))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (CF_pow #x4008000000000000
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!141)))))

(check-sat)
(exit)
