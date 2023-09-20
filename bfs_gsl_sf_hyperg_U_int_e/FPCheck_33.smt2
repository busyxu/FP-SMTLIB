(declare-fun c_ack!193 () (_ BitVec 64))
(declare-fun b_ack!192 () (_ BitVec 32))
(declare-fun a_ack!194 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!193) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!193) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!193) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!192)))
(assert (not (= #xffffffff (bvsub a_ack!194 b_ack!192))))
(assert (not (= #xfffffffe (bvsub a_ack!194 b_ack!192))))
(assert (= (bvsub #x00000002 b_ack!192) (bvadd #x00000002 (bvsub a_ack!194 b_ack!192))))
(assert (FPCHECK_FMUL_UNDERFLOW
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvsub #xffffffff (bvsub a_ack!194 b_ack!192)))
  (CF_log c_ack!193)))

(check-sat)
(exit)
