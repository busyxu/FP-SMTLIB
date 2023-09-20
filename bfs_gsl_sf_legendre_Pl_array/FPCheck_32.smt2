(declare-fun a_ack!132 () (_ BitVec 32))
(declare-fun b_ack!131 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!132 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!131) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!131) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!132)))
(assert (not (= #x00000001 a_ack!132)))
(assert (bvsle #x00000002 a_ack!132))
(assert (bvsle #x00000003 a_ack!132))
(assert (bvsle #x00000004 a_ack!132))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!131)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) b_ack!131))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!131)
                                   ((_ to_fp 11 53) #x4014000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!131)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!131)
            ((_ to_fp 11 53) #x401c000000000000))
    (fp.div roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x4008000000000000))))))

(check-sat)
(exit)
