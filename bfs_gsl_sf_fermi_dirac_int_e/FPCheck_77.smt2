(declare-fun a_ack!245 () (_ BitVec 32))
(declare-fun b_ack!244 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (bvslt a_ack!245 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!245)))
(assert (not (bvslt a_ack!245 #xffffff9b)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!245))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!244) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvsub #xffffffff a_ack!245)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvsub #xffffffff a_ack!245)))
       #x0000000000000321))
(assert (not (bvsle #x00000001 (bvsub #xfffffffe a_ack!245))))
(assert (bvslt a_ack!245 #x00000000))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (CF_exp b_ack!244))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (CF_exp b_ack!244))))

(check-sat)
(exit)
