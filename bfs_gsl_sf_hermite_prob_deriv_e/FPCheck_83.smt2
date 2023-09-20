(declare-fun b_ack!432 () (_ BitVec 32))
(declare-fun a_ack!433 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!432 #x00000000)))
(assert (not (bvslt a_ack!433 #x00000000)))
(assert (not (bvslt b_ack!432 a_ack!433)))
(assert (not (bvult b_ack!432 a_ack!433)))
(assert (not (= a_ack!433 b_ack!432)))
(assert (not (= #x00000000 a_ack!433)))
(assert (not (bvule b_ack!432 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!433) b_ack!432))
(assert (bvult (bvsub b_ack!432 (bvsub b_ack!432 a_ack!433)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!432 a_ack!433)) b_ack!432))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!432)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub b_ack!432 (bvsub b_ack!432 a_ack!433))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!432 a_ack!433))
       (bvadd #xffffffff b_ack!432)))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvsub b_ack!432 (bvsub b_ack!432 a_ack!433))))))
  (FPCHECK_FDIV_ACCURACY
    ((_ to_fp_unsigned 11 53)
      roundNearestTiesToEven
      (bvadd #xffffffff b_ack!432))
    a!1)))

(check-sat)
(exit)
