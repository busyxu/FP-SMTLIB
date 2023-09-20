(declare-fun b_ack!856 () (_ BitVec 32))
(declare-fun a_ack!857 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!856 #x00000000)))
(assert (not (bvslt a_ack!857 #x00000000)))
(assert (not (bvslt b_ack!856 a_ack!857)))
(assert (not (bvult b_ack!856 a_ack!857)))
(assert (not (= a_ack!857 b_ack!856)))
(assert (not (= #x00000000 a_ack!857)))
(assert (not (bvule b_ack!856 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!857) b_ack!856))
(assert (bvult (bvsub b_ack!856 (bvsub b_ack!856 a_ack!857)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!856 a_ack!857)) b_ack!856))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!856)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub b_ack!856 (bvsub b_ack!856 a_ack!857))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (bvule (bvadd #x00000001 (bvsub b_ack!856 a_ack!857))
            (bvadd #xffffffff b_ack!856))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!856)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub b_ack!856 (bvsub b_ack!856 a_ack!857))))))
  (FPCHECK_FMUL_ACCURACY
    #x3cc0000000000000
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
