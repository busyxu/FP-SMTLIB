(declare-fun a_ack!839 () (_ BitVec 32))
(declare-fun b_ack!838 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt a_ack!839 #x00000000))
(assert (= #x00000000 (bvand (bvsub #x00000000 a_ack!839) #x00000001)))
(assert (not (= #x00000000 a_ack!839)))
(assert (not (= #xffffffff a_ack!839)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!838) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!838) ((_ to_fp 11 53) #x4014000000000000)))
(assert (FPCHECK_FINVALID_LOG
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) b_ack!838))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) b_ack!838))))

(check-sat)
(exit)
