(declare-fun a_ack!421 () (_ BitVec 32))
(declare-fun b_ack!419 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!420 () (_ BitVec 64))
(assert (not (bvslt a_ack!421 #x00000000)))
(assert (not (bvslt b_ack!419 #x00000000)))
(assert (not (= #x00000000 a_ack!421)))
(assert (not (= #x00000001 a_ack!421)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!419 a_ack!421)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!419)))
(assert (bvslt b_ack!419 a_ack!421))
(assert (= #x00000000 (bvand (bvsub a_ack!421 b_ack!419) #x00000001)))
(assert (bvslt b_ack!419 (bvsub a_ack!421 b_ack!419)))
(assert (not (bvslt #x00000000 b_ack!419)))
(assert (bvsle #x00000001 (bvsub a_ack!421 b_ack!419)))
(assert (bvsle #x00000002 (bvsub a_ack!421 b_ack!419)))
(assert (FPCHECK_FMUL_ACCURACY
  c_ack!420
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!420)
                  ((_ to_fp 11 53) c_ack!420))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
