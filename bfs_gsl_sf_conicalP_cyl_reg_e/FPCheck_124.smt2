(declare-fun c_ack!466 () (_ BitVec 64))
(declare-fun a_ack!467 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!466) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!467 #xffffffff)))
(assert (not (= #xffffffff a_ack!467)))
(assert (not (= #x00000000 a_ack!467)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!466) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!466) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!466) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!467))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!466)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!466)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FDIV_ACCURACY
    (fp.add roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x3ff0000000000000))
    (fp.add roundNearestTiesToEven a!3 ((_ to_fp 11 53) #x0000000000000000))))))

(check-sat)
(exit)
