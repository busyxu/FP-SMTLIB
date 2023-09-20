(declare-fun c_ack!209 () (_ BitVec 64))
(declare-fun b_ack!208 () (_ BitVec 32))
(declare-fun a_ack!210 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!209) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!209) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!209) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!208)))
(assert (not (= #xffffffff (bvsub a_ack!210 b_ack!208))))
(assert (not (= #xfffffffe (bvsub a_ack!210 b_ack!208))))
(assert (= (bvsub #x00000002 b_ack!208) (bvadd #x00000002 (bvsub a_ack!210 b_ack!208))))
(assert (FPCHECK_FMUL_ACCURACY
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvsub #xffffffff (bvsub a_ack!210 b_ack!208)))
  (CF_log c_ack!209)))

(check-sat)
(exit)
