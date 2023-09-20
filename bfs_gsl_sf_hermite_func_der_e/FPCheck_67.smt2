(declare-fun a_ack!415 () (_ BitVec 32))
(declare-fun b_ack!413 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!414 () (_ BitVec 64))
(assert (not (bvslt a_ack!415 #x00000000)))
(assert (not (bvslt b_ack!413 #x00000000)))
(assert (not (= #x00000000 a_ack!415)))
(assert (not (= #x00000001 a_ack!415)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!413 a_ack!415)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!413)))
(assert (bvslt b_ack!413 a_ack!415))
(assert (= #x00000000 (bvand (bvsub a_ack!415 b_ack!413) #x00000001)))
(assert (bvslt b_ack!413 (bvsub a_ack!415 b_ack!413)))
(assert (not (bvslt #x00000000 b_ack!413)))
(assert (bvsle #x00000001 (bvsub a_ack!415 b_ack!413)))
(assert (bvsle #x00000002 (bvsub a_ack!415 b_ack!413)))
(assert (FPCHECK_FMUL_UNDERFLOW
  c_ack!414
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!414)
                  ((_ to_fp 11 53) c_ack!414))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
