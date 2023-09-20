(declare-fun n_ack!396 () (_ BitVec 32))
(declare-fun a_ack!397 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!396 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!397) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!396 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!396 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!397) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!396 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!397) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!396 #x00000000)))
(assert (not (= #x00000000 n_ack!396)))
(assert (not (= #x00000001 n_ack!396)))
(assert (not (= #x00000002 n_ack!396)))
(assert (not (= #x00000003 n_ack!396)))
(assert (bvslt n_ack!396 #x00000046))
(assert (FPCHECK_FMUL_ACCURACY
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvmul #x00000002 n_ack!396)))
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvmul #x00000002 n_ack!396)))))

(check-sat)
(exit)
