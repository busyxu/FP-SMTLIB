(declare-fun b_ack!106 () (_ BitVec 64))
(declare-fun a_ack!108 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!107 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!106) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!108 #x00000000)))
(assert (not (= #x00000000 a_ack!108)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!106) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000002 a_ack!108))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!106))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!107))
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) b_ack!106))
            ((_ to_fp 11 53) c_ack!107)))))

(check-sat)
(exit)
