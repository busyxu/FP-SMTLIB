(declare-fun b_ack!900 () (_ BitVec 32))
(declare-fun a_ack!902 () (_ BitVec 32))
(declare-fun c_ack!901 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!900 #x00000000)))
(assert (not (bvslt a_ack!902 b_ack!900)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!901) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!901) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!900)))
(assert (= #x00000000 b_ack!900))
(assert (not (= a_ack!902 b_ack!900)))
(assert (not (= a_ack!902 (bvadd #x00000001 b_ack!900))))
(assert (bvsle (bvadd #x00000002 b_ack!900) a_ack!902))
(assert (bvsle (bvadd #x00000003 b_ack!900) a_ack!902))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4008000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000003 b_ack!900 b_ack!900))))

(check-sat)
(exit)
