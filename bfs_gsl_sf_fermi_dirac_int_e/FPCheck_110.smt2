(declare-fun a_ack!347 () (_ BitVec 32))
(declare-fun b_ack!346 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!347 #xffffffff)))
(assert (not (= #xffffffff a_ack!347)))
(assert (not (= #x00000000 a_ack!347)))
(assert (not (= #x00000001 a_ack!347)))
(assert (= #x00000002 a_ack!347))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!346) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!346) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!346) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!346))
  #xbff0000000000000))

(check-sat)
(exit)
