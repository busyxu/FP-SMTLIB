(declare-fun b_ack!862 () (_ BitVec 32))
(declare-fun a_ack!863 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!862 #x00000000)))
(assert (not (bvslt a_ack!863 #x00000000)))
(assert (not (bvslt b_ack!862 a_ack!863)))
(assert (not (bvult b_ack!862 a_ack!863)))
(assert (not (= a_ack!863 b_ack!862)))
(assert (not (= #x00000000 a_ack!863)))
(assert (not (bvule b_ack!862 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!863) b_ack!862))
(assert (bvult (bvsub b_ack!862 (bvsub b_ack!862 a_ack!863)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!862 a_ack!863)) b_ack!862))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!862)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub b_ack!862 (bvsub b_ack!862 a_ack!863))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (bvule (bvadd #x00000001 (bvsub b_ack!862 a_ack!863))
            (bvadd #xffffffff b_ack!862))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!862)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub b_ack!862 (bvsub b_ack!862 a_ack!863)))))
      (a!2 (fp.abs ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub b_ack!862 (bvsub b_ack!862 a_ack!863))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cc0000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!1))
    a!2)))

(check-sat)
(exit)
