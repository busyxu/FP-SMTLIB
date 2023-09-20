(declare-fun a_ack!690 () (_ BitVec 32))
(declare-fun b_ack!689 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (bvslt a_ack!690 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!690)))
(assert (not (bvslt a_ack!690 #xffffff9b)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!690))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!689) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvsub #xffffffff a_ack!690)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvsub #xffffffff a_ack!690)))
       #x0000000000000321))
(assert (not (bvsle #x00000001 (bvsub #xfffffffe a_ack!690))))
(assert (bvslt a_ack!690 #x00000000))
(assert (fp.eq (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (CF_exp b_ack!689))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
