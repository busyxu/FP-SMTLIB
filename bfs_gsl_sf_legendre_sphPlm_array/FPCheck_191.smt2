(declare-fun b_ack!915 () (_ BitVec 32))
(declare-fun a_ack!917 () (_ BitVec 32))
(declare-fun c_ack!916 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!915 #x00000000)))
(assert (not (bvslt a_ack!917 b_ack!915)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!916) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!916) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!915)))
(assert (= #x00000000 b_ack!915))
(assert (not (= a_ack!917 b_ack!915)))
(assert (not (= a_ack!917 (bvadd #x00000001 b_ack!915))))
(assert (bvsle (bvadd #x00000002 b_ack!915) a_ack!917))
(assert (bvsle (bvadd #x00000003 b_ack!915) a_ack!917))
(assert (FPCHECK_FSUB_UNDERFLOW
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000003 b_ack!915 b_ack!915))
  #x3ff0000000000000))

(check-sat)
(exit)
