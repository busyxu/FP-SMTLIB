(declare-fun a_ack!477 () (_ BitVec 32))
(declare-fun b_ack!476 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (bvslt a_ack!477 #x00000000))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 a_ack!477) #x00000001))))
(assert (not (= #x00000000 a_ack!477)))
(assert (= #xffffffff a_ack!477))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!476) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!476) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!476) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!476) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!476) ((_ to_fp 11 53) #x4330000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  #x4040000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!476)
          ((_ to_fp 11 53) b_ack!476))))

(check-sat)
(exit)
