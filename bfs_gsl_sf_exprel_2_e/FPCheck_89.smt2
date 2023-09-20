(declare-fun a_ack!151 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!151) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!151) ((_ to_fp 11 53) #xbf60624dd2f1a9fc))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!151) ((_ to_fp 11 53) #x3f60624dd2f1a9fc))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!151) ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_exp a_ack!151)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!151))
                   ((_ to_fp 11 53) a_ack!151))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 (CF_exp a_ack!151)
                 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_exp a_ack!151)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_exp a_ack!151)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!151)))))
  (fp.eq a!1 ((_ to_fp 11 53) a_ack!151))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_exp a_ack!151)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!151)))))
  (FPCHECK_FDIV_ZERO
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!151)
            ((_ to_fp 11 53) a_ack!151)))))

(check-sat)
(exit)
