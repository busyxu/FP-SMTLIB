(declare-fun a_ack!123 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!122 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!123) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!123))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!123)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!123))
               ((_ to_fp 11 53) a_ack!123))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!123)))
                   ((_ to_fp 11 53) b_ack!122))))
  (FPCHECK_FMUL_UNDERFLOW
    a_ack!123
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #xbff0000000000000)
            (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!122))))))

(check-sat)
(exit)
