(declare-fun a_ack!98 () (_ BitVec 32))
(declare-fun b_ack!97 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!98 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!97) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!97) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!98)))
(assert (not (= #x00000001 a_ack!98)))
(assert (bvsle #x00000002 a_ack!98))
(assert (bvsle #x00000003 a_ack!98))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!97)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) b_ack!97))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!97)
                    ((_ to_fp 11 53) #x4014000000000000))
            (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x4000000000000000)))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53) b_ack!97)))))

(check-sat)
(exit)
