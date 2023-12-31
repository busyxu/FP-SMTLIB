(declare-fun a_ack!1150 () (_ BitVec 32))
(declare-fun b_ack!1149 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!1150 #xffffffff)))
(assert (not (= #xffffffff a_ack!1150)))
(assert (not (= #x00000000 a_ack!1150)))
(assert (not (= #x00000001 a_ack!1150)))
(assert (= #x00000002 a_ack!1150))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1149) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1149) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1149) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1149) ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe5555555555555)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1149)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c32725dd1d243ac)))))
  (FPCHECK_FSUB_UNDERFLOW a!4 #x0000000000000000))))))

(check-sat)
(exit)
