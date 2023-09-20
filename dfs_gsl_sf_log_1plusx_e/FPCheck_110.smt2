(declare-fun a_ack!159 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!159) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!159))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!159)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fbc71c71c71c71c)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!159)
                                   ((_ to_fp 11 53) #xbfb999999999999a))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc2492492492492)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!159)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc0000000000000)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!159)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfc5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!159)
                                   a!2)))))
  (FPCHECK_FMUL_UNDERFLOW
    a_ack!159
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3fc999999999999a) a!3))))))

(check-sat)
(exit)
