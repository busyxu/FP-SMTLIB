(declare-fun a_ack!136 () (_ BitVec 64))
(declare-fun b_ack!135 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!136) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!136) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!135)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!136)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!136) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!136) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!136) ((_ to_fp 11 53) b_ack!135))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!135)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!136)
                    ((_ to_fp 11 53) #xffffffffffffffff)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!136) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fe0000000000000 a_ack!136))

(check-sat)
(exit)
