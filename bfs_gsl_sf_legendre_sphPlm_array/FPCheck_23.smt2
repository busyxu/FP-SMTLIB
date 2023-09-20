(declare-fun b_ack!138 () (_ BitVec 32))
(declare-fun a_ack!140 () (_ BitVec 32))
(declare-fun c_ack!139 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!138 #x00000000)))
(assert (not (bvslt a_ack!140 b_ack!138)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!139) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!139) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!138)))
(assert (= #x00000000 b_ack!138))
(assert (not (= a_ack!140 b_ack!138)))
(assert (not (= a_ack!140 (bvadd #x00000001 b_ack!138))))
(assert (bvsle (bvadd #x00000002 b_ack!138) a_ack!140))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53)
            roundNearestTiesToEven
            (bvadd #x00000002 b_ack!138 b_ack!138))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
