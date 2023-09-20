(declare-fun b_ack!114 () (_ BitVec 32))
(declare-fun a_ack!116 () (_ BitVec 32))
(declare-fun c_ack!115 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!114 #x00000000)))
(assert (not (bvslt a_ack!116 b_ack!114)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!115) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!115) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!114)))
(assert (= #x00000000 b_ack!114))
(assert (not (= a_ack!116 b_ack!114)))
(assert (not (= a_ack!116 (bvadd #x00000001 b_ack!114))))
(assert (bvsle (bvadd #x00000002 b_ack!114) a_ack!116))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4000000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000002 b_ack!114 b_ack!114))))

(check-sat)
(exit)
