(declare-fun n_ack!72 () (_ BitVec 32))
(declare-fun x_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt n_ack!72 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!73) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 (bvand (bvsub #x00000000 n_ack!72) #x00000001)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) x_ack!73))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) x_ack!73))))

(check-sat)
(exit)
