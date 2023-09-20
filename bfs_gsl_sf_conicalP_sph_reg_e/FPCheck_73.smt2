(declare-fun c_ack!229 () (_ BitVec 64))
(declare-fun a_ack!230 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!229) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!230 #xffffffff)))
(assert (= #xffffffff a_ack!230))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!229) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!229) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FINVALID_SQRT
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) c_ack!229))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) c_ack!229))))

(check-sat)
(exit)
