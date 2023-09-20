(declare-fun a_ack!87 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!87) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!87)) ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!87)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fbc71c71c71c71c)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!87)
                                   ((_ to_fp 11 53) #xbfb999999999999a))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc2492492492492)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!87)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc0000000000000)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!87)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfc5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!87)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!87)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc999999999999a)
                                   a!3)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!87)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!87)
                                   a!4)))))
(let ((a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!87)
                                   ((_ to_fp 11 53) a_ack!87))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   a!5)))))
  (FPCHECK_FMUL_ACCURACY #x3cb0000000000000 a!6))))))))

(check-sat)
(exit)
