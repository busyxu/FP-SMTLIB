(declare-fun a_ack!1082 () (_ BitVec 32))
(declare-fun b_ack!1081 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1082 #xffffffff)))
(assert (not (= #xffffffff a_ack!1082)))
(assert (not (= #x00000000 a_ack!1082)))
(assert (not (= #x00000001 a_ack!1082)))
(assert (= #x00000002 a_ack!1082))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1081) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1081) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1081) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1081) ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe5555555555555)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1081)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.sub roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    a!1)
            ((_ to_fp 11 53) #xbff0000000000000))
    #x3ff0000000000000)))

(check-sat)
(exit)
