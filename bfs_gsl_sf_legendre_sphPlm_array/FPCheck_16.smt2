(declare-fun b_ack!117 () (_ BitVec 32))
(declare-fun a_ack!119 () (_ BitVec 32))
(declare-fun c_ack!118 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!117 #x00000000)))
(assert (not (bvslt a_ack!119 b_ack!117)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!118) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!118) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!117)))
(assert (= #x00000000 b_ack!117))
(assert (not (= a_ack!119 b_ack!117)))
(assert (not (= a_ack!119 (bvadd #x00000001 b_ack!117))))
(assert (bvsle (bvadd #x00000002 b_ack!117) a_ack!119))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x4000000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000002 b_ack!117 b_ack!117))))

(check-sat)
(exit)
