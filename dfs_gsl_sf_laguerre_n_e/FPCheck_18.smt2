(declare-fun a_ack!95 () (_ BitVec 32))
(declare-fun c_ack!94 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!93 () (_ BitVec 64))
(assert (not (bvslt a_ack!95 #x00000000)))
(assert (not (= #x00000000 a_ack!95)))
(assert (not (= #x00000001 a_ack!95)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!94) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!94) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt a_ack!95 #x00000005))
(assert (bvule a_ack!95 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!95)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!95)))
       #x0000000000001001))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!93)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!95))
  #x3ff0000000000000))

(check-sat)
(exit)
