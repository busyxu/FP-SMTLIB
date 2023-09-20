(declare-fun b_ack!141 () (_ BitVec 32))
(declare-fun a_ack!143 () (_ BitVec 32))
(declare-fun c_ack!142 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!141 #x00000000)))
(assert (not (bvslt a_ack!143 b_ack!141)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!142) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!142) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!141)))
(assert (= #x00000000 b_ack!141))
(assert (not (= a_ack!143 b_ack!141)))
(assert (not (= a_ack!143 (bvadd #x00000001 b_ack!141))))
(assert (bvsle (bvadd #x00000002 b_ack!141) a_ack!143))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53)
            roundNearestTiesToEven
            (bvadd #x00000002 b_ack!141 b_ack!141))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
