(declare-fun a_ack!680 () (_ BitVec 64))
(declare-fun b_ack!679 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!680) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!680) ((_ to_fp 11 53) #xc010000000000000)))
(assert (= #x00000000 (bvand b_ack!679 #x00000007)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4060000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!680)
                                   ((_ to_fp 11 53) a_ack!680))
                           ((_ to_fp 11 53) a_ack!680)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc896c02e528f875))))
  (FPCHECK_FMUL_ACCURACY
    a!3
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!3 a!4)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #xbca75c6f36b81480))))))))

(check-sat)
(exit)
