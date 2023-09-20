(declare-fun b_ack!129 () (_ BitVec 32))
(declare-fun a_ack!131 () (_ BitVec 32))
(declare-fun c_ack!130 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!129 #x00000000)))
(assert (not (bvslt a_ack!131 b_ack!129)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!130) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!130) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!129)))
(assert (= #x00000000 b_ack!129))
(assert (not (= a_ack!131 b_ack!129)))
(assert (not (= a_ack!131 (bvadd #x00000001 b_ack!129))))
(assert (bvsle (bvadd #x00000002 b_ack!129) a_ack!131))
(assert (FPCHECK_FSUB_UNDERFLOW
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000002 b_ack!129 b_ack!129))
  #x3ff0000000000000))

(check-sat)
(exit)
