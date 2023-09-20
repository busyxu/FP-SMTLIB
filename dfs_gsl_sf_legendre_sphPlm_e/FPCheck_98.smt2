(declare-fun b_ack!507 () (_ BitVec 32))
(declare-fun a_ack!509 () (_ BitVec 32))
(declare-fun c_ack!508 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!507 #x00000000)))
(assert (not (bvslt a_ack!509 b_ack!507)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!508) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!508) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!507))
(assert (not (bvslt a_ack!509 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!508) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!508) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!509)))
(assert (not (= #x00000001 a_ack!509)))
(assert (not (= #x00000002 a_ack!509)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!508) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!508) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!509 #x000186a0))
(assert (bvsle #x00000002 a_ack!509))
(assert (bvsle #x00000003 a_ack!509))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!508)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) c_ack!508))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!508)
                    ((_ to_fp 11 53) #x4014000000000000))
            (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x4000000000000000)))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53) c_ack!508)))))

(check-sat)
(exit)
