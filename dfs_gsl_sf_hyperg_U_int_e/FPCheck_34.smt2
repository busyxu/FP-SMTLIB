(declare-fun c_ack!203 () (_ BitVec 64))
(declare-fun b_ack!202 () (_ BitVec 32))
(declare-fun a_ack!204 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!203) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!203) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!203) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!202)))
(assert (not (= #xffffffff (bvsub a_ack!204 b_ack!202))))
(assert (not (= #xfffffffe (bvsub a_ack!204 b_ack!202))))
(assert (= (bvsub #x00000002 b_ack!202) (bvadd #x00000002 (bvsub a_ack!204 b_ack!202))))
(assert (FPCHECK_FMUL_UNDERFLOW
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvsub #xffffffff (bvsub a_ack!204 b_ack!202)))
  (CF_log c_ack!203)))

(check-sat)
(exit)
