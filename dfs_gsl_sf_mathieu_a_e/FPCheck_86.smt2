(declare-fun n_ack!386 () (_ BitVec 32))
(declare-fun a_ack!387 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (= #x00000000 (bvsrem n_ack!386 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!386 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!386 #x00000000)))
(assert (not (= #x00000000 n_ack!386)))
(assert (not (= #x00000001 n_ack!386)))
(assert (not (= #x00000002 n_ack!386)))
(assert (not (= #x00000003 n_ack!386)))
(assert (bvslt n_ack!386 #x00000046))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!386)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!386))))))
  (FPCHECK_FADD_ACCURACY a!1 #x3ff0000000000000)))

(check-sat)
(exit)
