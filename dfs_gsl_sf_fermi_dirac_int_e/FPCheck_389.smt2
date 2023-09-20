(declare-fun a_ack!1201 () (_ BitVec 32))
(declare-fun b_ack!1200 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!1201 #xffffffff)))
(assert (not (= #xffffffff a_ack!1201)))
(assert (not (= #x00000000 a_ack!1201)))
(assert (not (= #x00000001 a_ack!1201)))
(assert (not (= #x00000002 a_ack!1201)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1200) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (not (bvslt #x00000064 (bvadd #x00000001 a_ack!1201))))
(assert (bvsle #x00000000 (bvadd #x00000001 a_ack!1201)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!1201)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!1201)))
       #x0000000000000321))
(assert (bvsle #x00000001 (bvadd #x00000002 a_ack!1201)))
(assert (not (bvslt #x00000064 a_ack!1201)))
(assert (bvsle #x00000000 a_ack!1201))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1201))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1201))
       #x0000000000000321))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1200)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
