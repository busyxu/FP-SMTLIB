(declare-fun c_ack!147 () (_ BitVec 64))
(declare-fun a_ack!148 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!147) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!148 #xffffffff)))
(assert (not (= #xffffffff a_ack!148)))
(assert (= #x00000000 a_ack!148))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!147) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!147) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!147) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FINVALID_SQRT
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!147)
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!147)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
